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
 - https://hub.docker.com/_/httpd - find section **SSL/HTTPS**

## Getting started building a website with httpd
 - build and start container
    - winpty docker exec -it <containerID> <cmds>
        - local httpd.conf is ripped from catting existing one in httpd image manually
        - cmd to do that: winpty docker exec -it <containerID> cat ./conf/httpd.conf
        - https://github.com/docker-library/httpd
 - https://httpd.apache.org/docs/2.4/getting-started.html#content
