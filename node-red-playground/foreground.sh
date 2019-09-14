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
sed -r "s/enabled: false/enabled: true/" packages/node_modules/node-red/settings.js > ~/.node-red/settings.js
cd ~/.node-red
npm install git+https://github.com/node-red/node-red-dashboard.git
npm install node-red-node-ui-table
npm install node-red-node-ui-list
npm install node-red-node-ui-vega
npm install git+https://github.com/node-red/node-red-node-swagger.git
cd ~/node-red
npm start
