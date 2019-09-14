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
npm start
