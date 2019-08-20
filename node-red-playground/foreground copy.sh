echo "This is automatically run when the scenario"
echo "node-red-playground version 0.0.11"

node -v
npm -v
sudo npm install -g --unsafe-perm node-red

pwd
ls -lha

# node-red

# ADD PASSWORD #########################

npm install bcryptjs

echo "# make PASSWORD"
YOUR_NODERED_PASSWORD=$(more /dev/urandom  | tr -d -c '[:alnum:]' | fold -w 10 | head -1)
echo "OK! YOUR_NODERED_PASSWORD=${YOUR_NODERED_PASSWORD}"

echo "# nodered password crypt make"
UI_NODERED_PASSWORD_CRYPT=`node -e "console.log(require('bcryptjs').hashSync(process.argv[1], 8));" ${YOUR_NODERED_PASSWORD}`

echo "# nodered password template push"
sed -i -e "s/\/\/adminAuth:/adminAuth:{\n\
        type: \"credentials\",\n\
        users: [{\n\
            username: \"admin\",\n\
            password: \"SACLOUD_NODERED_PASSWORD\",\n\
            permissions: \"*\"\n\
        }]\n\
    },\n\
    \/\/adminAuth:/" /root/.node-red/settings.js

echo "# nodered password crypt change"
sed -i -e "s*SACLOUD_NODERED_PASSWORD*$UI_NODERED_PASSWORD_CRYPT*" /root/.node-red/settings.js

echo "This Node-RED already is made. ID is admin and PASSWORD is ${YOUR_NODERED_PASSWORD}."

echo "Let's input node-red and click ENTER"