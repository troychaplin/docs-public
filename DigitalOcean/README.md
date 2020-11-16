# Working with DigitalOcean Server

## Create Database

Update instances of `{{DB_NAME}}` in the code below.

```
mysql -u root -p
CREATE DATABASE {{DB_NAME}} DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
GRANT ALL ON {{DB_NAME}}.* TO troychaplin@localhost IDENTIFIED BY '@EDQc+6pt9~797s';
FLUSH PRIVILEGES;
exit
```

### Other Database Commands

- `DROP DATABASE {{DB_NAME}};` - drop database
- `SHOW DATABASES;` - list all databases

## Folder & Permissions

Update instances of `{{DB_NAME}}` in the code below.

- `mkdir /var/www/{{FULL_PATH}}` - Create new folder
- `sudo chown www-data:www-data /var/www/{{full-path}}` - Change owner and group
- `sudo chmod -R 775 /var/www` - Add group write perms
- `sudo usermod -a -G www-data troychaplin` - Add myself to the www-data group

## Server Paths

Example `{{DOMAIN_NAME}}` would change based on your domain name

- `/var/www/{{DOMAIN_NAME}}/html` - file directory
- `/var/log/nginx/access.log` - access logs
- `/var/log/nginx/error.log` - error logs

## Nginx Processes

- `sudo systemctl stop nginx` - Stop the web server
- `sudo systemctl start nginx` - Start the web server
- `sudo systemctl restart nginx` - Restart the web server
- `sudo systemctl reload nginx` - Reload the web server without dropping connections
- `sudo systemctl enable nginx` - Enable Nginx from auto starting on boot (default)
- `sudo systemctl disable nginx` - Disable Nginx from auto starting on boot

## Composer Commands

### Local Environment

Updating locally, maintains git tracked repos

```
rm -rf composer.dev.lock ; composer clearcache
COMPOSER=composer.dev.json composer update
```

### Production Environment

Generate new lock file by running the following commands locally

```
rm -rf composer.lock ; composer clearcache
composer update --no-interaction --prefer-dist
```

Upload the composer.json and composer.lock files and run the following on the server

```
composer clearcache
composer install --no-interaction --prefer-dist
```

### Development Environment

Generate new lock file by running the following commands locally

```
rm -rf composer.dev.lock ; composer clearcache
COMPOSER=composer.dev.json composer update --no-interaction --prefer-dist
```

Upload the composer.dev.json and composer.dev.lock files and run the following on the server

```
composer clearcache
COMPOSER=composer.dev.json composer install --no-interaction --prefer-dist
```

<!-- SSH

# Permanently Add to MacOS Sierra

-   `~/.ssh/config` - Add new identity -->
