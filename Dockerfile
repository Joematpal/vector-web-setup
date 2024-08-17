FROM node:lts

ADD . .

RUN npm i 
RUN node vector-web-setup.js configure -rs

# RUN node vector-web-setup.js ota-sync
ENV PORT 8080
EXPOSE 8080
CMD node vector-web-setup.js serve -p $PORT
