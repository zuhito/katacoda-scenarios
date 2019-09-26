node -v
npm -v
# sudo npm install -g --unsafe-perm node-red@next
# node-red
git clone https://github.com/node-red/node-red.git
cd node-red
git checkout dev
npm install
npm run build
mkdir ~/.node-red
cd ~/.node-red
sed "s/enabled: false/enabled: true/" ~/node-red/packages/node_modules/node-red/settings.js > settings.js
npm install git+https://github.com/node-red/node-red-dashboard.git
git clone https://github.com/node-red/node-red-ui-nodes.git
# ls -d node-red-ui-nodes/*/ | grep node-red-node-ui- | xargs -I{} npm install {}
npm install node-red-ui-nodes/node-red-node-ui-table
# git clone https://github.com/node-red/node-red-nodes.git
# ls -d node-red-nodes/*/*/ | xargs -I{} npm install {}
# git clone https://github.com/node-red/node-red-web-nodes.git
# ls -d node-red-web-nodes/*/ | xargs -I{} npm install {}
npm install git+https://github.com/node-red/node-red-node-swagger.git
npm install node-red-contrib-flightradar24
npm install node-red-contrib-model-asset-exchange
npm install node-red-contrib-julius
npm install node-red-contrib-cognitive-services
npm install node-red-contrib-iss-location
npm install node-red-contrib-sakura-io-datastore-api
npm install node-red-contrib-sakura-io-datastore-api
npm install node-red-contrib-embedded-file
npm install node-red-contrib-java-function
npm install node-red-contrib-cloud-vision-api
npm install node-red-contrib-openjtalk
npm install node-red-contrib-azure-iot-edge
npm install node-red-contrib-iss-location
npm install node-red-contrib-whois
npm install node-red-contrib-sakura-io-datastore-api
npm install node-red-contrib-google-translate
npm install node-red-contrib-sendgrid
npm install node-red-contrib-tensorflow
npm install node-red-contrib-openjtalk
npm install node-red-contrib-opencv
npm install node-red-contrib-whois

cd ~/node-red
npm start
