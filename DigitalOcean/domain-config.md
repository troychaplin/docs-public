# DigitalOcean Domain Configuration

The following doc notes the steps to setup a new domain in a Digital Ocean droplet

## Configure Domain DNS

In your Digital Ocean account area, do the following:

- Go to `Networking` area
- Enter domain name and click `Add Domain`

Create a new record page will load, create a new record as per the following:

- `@` - hostname
- `Will Direct to` - select droplet from
- `3600` - TTL setting
- `Create Record` - click to finalize setup

In your registrar account, point your name servers to DigitalOcean

```
ns1.digitalocean.com
ns2.digitalocean.com
ns3.digitalocean.com
```

## Create Docroot & Sample Pages

SSH into your droplet and do the following, updating `{{DOMAIN_NAME}}` in the following commands.

```
sudo mkdir -p /var/www/{{DOMAIN_NAME}}/html
sudo chown -R $USER:$USER /var/www/{{DOMAIN_NAME}}/html
nano /var/www/{{DOMAIN_NAME}}/html/index.html
```

Inside the file, create some basic markup for testing.

```
<html>
    <head>
        <title>Domain Test</title>
    </head>
    <body>
        <h1>{{DOMAIN_NAME}} is working!</h1>
    </body>
</html>
```

## Create Server Block Files

Create and edit new server block file

```
sudo cp /etc/nginx/sites-available/default /etc/nginx/sites-available/{{DOMAIN_NAME}}
sudo nano /etc/nginx/sites-available/{{DOMAIN_NAME}}
```

Things to update:

- `listen 80 default_server;` - remove default_server
- `listen [::]:80 default_server;` - remove default server
- `root /var/www/{{DOMAIN_NAME}}/html;` - change example.com to the new domain
- `server_name {{DOMAIN_NAME}};` - change example.com to new domain

The final file should look like this:

```
map $sent_http_content_type $expires {
    default                    off;
    text/html                  epoch;
    text/css                   max;
    application/javascript     max;
    ~image/                    max;
}

server {
        listen 80;
        listen [::]:80;

        expires $expires;

        root /var/www/{{DOMAIN_NAME}}/html;
        index index.php index.html index.htm index.nginx-debian.html;

        server_name {{DOMAIN_NAME}};

        location / {
                try_files $uri $uri/ /index.php$is_args$args;
        }

        location ~ \.php$ {
                include snippets/fastcgi-php.conf;
                fastcgi_pass unix:/var/run/php/php7.2-fpm.sock;
        }

        location ~ /\.ht {
                deny all;
        }
}
```

## Enable Server Blocks

Create symlinks that Nginx reads on startup, changing `{{DOMAIN_NAME}}` to new domain:

```
sudo ln -s /etc/nginx/sites-available/{{DOMAIN_NAME}} /etc/nginx/sites-enabled/
```

## Test & Restart Nginx

- `sudo nginx -t` - test for errors in ngnix files
- `sudo service nginx restart` - restart ngnix

## Add SSL to Domain

Obtain certificate via certbot and choose option 2, forcing all traffic to https

```
sudo certbot --nginx -d {{DOMAIN_NAME}}
```

Let's Encrypt certs are only valid for 90 days, but the certbot auto renews via a cron job twice a day. To test a renewal, run the following (note: this will renew all certs you've setup on all domains):

```
sudo certbot renew --dry-run
```

To remove certs and their renewal config files:

```
rm -rf /etc/letsencrypt/live/${DOMAIN}
rm /etc/letsencrypt/renewal/${DOMAIN}.conf
```
