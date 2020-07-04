FROM httpd:2.4
#RUN ls /usr/local/apache2/htdocs/
COPY ./public-html/* /usr/local/apache2/htdocs/
    # ^ copies all to flat structure

# https://unix.stackexchange.com/questions/365427/issue-with-httpd-could-not-reliably-determine-the-servers-fully-qualified-doma
    # ? sudo firewall-cmd --add-service=http --permanent && sudo firewall-cmd --add-service=https --permanent


#RUN ls /usr/local/apache2/htdocs/

### uncomment for HTTPS ###
#LoadModule socache_shmcb_module modules/mod_socache_shmcb.so
#LoadModule ssl_module modules/mod_ssl.so
#Include conf/extra/httpd-ssl.conf
### uncomment for HTTPS ###

# FROM node:13.8-alpine
# WORKDIR /app
# ENV NODE_ENV $node_env
# COPY package.json yarn.lock /app/
# RUN yarn install
# COPY . ./docker/envs/node.env /app/
# RUN mv ./docker/envs/node.env ./.env
#
# CMD if [ ${NODE_ENV} = production ]; \
#   then \
#   yarn run build && \
#   yarn start; \
#   else \
#   yarn dev; \
#   fi

# CMD ["yarn", "start"]

# Docker Windows file: C:\Users\Public\Documents\Hyper-V\Virtual Hard Disks\DockerDesktop.vhdx
