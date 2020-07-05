# Docker Image
 - https://hub.docker.com/_/httpd

## Hosted files
 - add them to public-html to get picked up by docker build

## Starting/Stopping up server
 - docker-compose comes with Docker installation
     - docker-compose build
     - docker-compose up
     - docker-compose down
 - can also run with GitBash: ./quickBuildScript.sh
 - inline if you didn't want to use Dockerfile
    - docker run -dit --name my-apache-app -p 8080:80 -v "$PWD":/usr/local/apache2/htdocs/ httpd:2.4

## Viewing local website
 - https://github.com/docker-library/httpd/blob/master/2.4/Dockerfile#L165
 - http://localhost:8080

### Running SSL/HTTPS locally
 - [host-by-IP](http://httpd.apache.org/docs/current/sections.html) With host-by-IP, each virtual host has its own IP address and port combination. The Apache web server responds to the IP address that the host resolves as. Host-by-IP is required for serving HTTPS requests due to restrictions in the Secure Sockets Layer (SSL) protocol.

## Getting started building a website with httpd
 - build and start container
    - winpty docker exec -it <containerID> <cmds>
        - local httpd.conf is ripped from catting existing one in httpd image manually
        - cmd to do that: winpty docker exec -it <containerID> cat ./conf/httpd.conf
        - https://github.com/docker-library/httpd
 - https://httpd.apache.org/docs/2.4/getting-started.html#content

# Quick Refs
 - Proxy dockerfiles - https://mimiz.github.io/2017/05/18/Configure-docker-httpd-image.html

#### Learning Apache Basics
 - To test the display of actual content, create an HTML file named index.html in the directory specified by the DocumentRoot directive (the default directory is /var/www/html). Apache automatically displays the index.html file in this directory, if it exists.
    - List of Config Section Containers: http://httpd.apache.org/docs/current/sections.html
 - List of possible Apache config files and their uses: https://geek-university.com/apache/configuration-files/
 - Building an httpd.conf file yourself: https://opensource.com/article/18/2/how-configure-apache-web-server
 - Apache ServerName directive: https://httpd.apache.org/docs/2.4/mod/core.html#servername