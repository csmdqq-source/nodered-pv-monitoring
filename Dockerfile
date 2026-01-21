FROM nodered/node-red:latest

USER root

RUN npm install --unsafe-perm --no-update-notifier --no-fund --only=production \
    node-red-contrib-influxdb \
    node-red-dashboard

USER node-red

EXPOSE 1880

CMD ["npm", "start"]
