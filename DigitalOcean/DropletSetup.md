# DigitalOcean Droplet Setup

## Server Setup

- [Initial Server Setup with Ubuntu 18.04](https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-18-04)
- [How To Install Linux, Apache, MySQL, PHP (LAMP stack) on Ubuntu 18.04](https://www.digitalocean.com/community/tutorials/how-to-install-linux-apache-mysql-php-lamp-stack-ubuntu-18-04)
- [How To Install Linux, Nginx, MySQL, PHP (LEMP stack) on Ubuntu 18.04](https://www.digitalocean.com/community/tutorials/how-to-install-linux-nginx-mysql-php-lemp-stack-ubuntu-18-04)

## Caching

- [How To Install and Secure Redis on Ubuntu 18.04](https://www.digitalocean.com/community/tutorials/how-to-install-and-secure-redis-on-ubuntu-18-04#prerequisites)
- `sudo systemctl restart redis.service` - correct command to reboot redis, incorrectly referenced in document above
- [How to Implement Browser Caching with Nginx's header Module on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-implement-browser-caching-with-nginx-s-header-module-on-ubuntu-16-04)

## Libraries

- [How To Install PHP Composer on Ubuntu 18.04 & 16.04](https://tecadmin.net/install-php-composer-on-ubuntu/)
- [How To Add the gzip Module to Nginx on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-add-the-gzip-module-to-nginx-on-ubuntu-16-04)
- [How To Install and Configure Postfix on Ubuntu 18.04](https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-postfix-on-ubuntu-18-04)

### Additional Libraries

- `sudo apt-cache search php7.2-*` - Check for php-7.2 libraries that can be installed, like the 2 recommendations below
- `sudo apt-get install php7.2-gd` - Install GD Image Library for php7
- `sudo apt-get install php-imagick` - Install ImageMagick for php7
- `sudo apt-get install php7.2-zip` - Install Zip for php7

## Domains

- [How To Set Up Nginx Server Blocks (Virtual Hosts) on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-set-up-nginx-server-blocks-virtual-hosts-on-ubuntu-16-04)
- [How To Secure Apache with Let's Encrypt on Ubuntu 18.04](https://www.digitalocean.com/community/tutorials/how-to-secure-apache-with-let-s-encrypt-on-ubuntu-18-04)
- [How To Secure Nginx with Let's Encrypt on Ubuntu 18.04](https://www.digitalocean.com/community/tutorials/how-to-secure-nginx-with-let-s-encrypt-on-ubuntu-18-04)

## WordPress & Database

- [How to Install WP-CLI](https://wp-cli.org)
- [How To Install WordPress with LEMP on Ubuntu 18.04](https://www.digitalocean.com/community/tutorials/how-to-install-wordpress-with-lemp-on-ubuntu-18-04)

## SFTP

- [SFTP setup on Transmit (Mac)](https://www.digitalocean.com/community/questions/sftp-setup-on-transmit-mac)

## Other Resources

- [How To Install Git on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-install-git-on-ubuntu-16-04)
