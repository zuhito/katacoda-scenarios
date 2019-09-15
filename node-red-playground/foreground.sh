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
sed -r "s/enabled: false/enabled: true/" ~/node-red/packages/node_modules/node-red/settings.js | sed "s/uiPort: process.env.PORT || 1880,/uiPort: process.env.PORT || 80,/" > settings.js
npm install git+https://github.com/node-red/node-red-dashboard.git
git clone https://github.com/node-red/node-red-ui-nodes.git
# ls -d node-red-ui-nodes/*/ | grep node-red-node-ui- | xargs -I{} npm install {}
npm install node-red-ui-nodes/node-red-node-ui-table
# git clone https://github.com/node-red/node-red-nodes.git
# ls -d node-red-nodes/*/*/ | xargs -I{} npm install {}
# git clone https://github.com/node-red/node-red-web-nodes.git
# ls -d node-red-web-nodes/*/ | xargs -I{} npm install {}
npm install git+https://github.com/node-red/node-red-node-swagger.git
cd ~/node-red
npm start
