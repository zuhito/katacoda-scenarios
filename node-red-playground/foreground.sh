echo "This is automatically run when the scenario"
echo "node-red-playground version 0.0.6"

node -v
npm -v
sudo npm install -g --unsafe-perm node-red

pwd
ls -lha

# node-red

# ADD PASSWORD #########################

npm install bcryptjs -g

# interactive
echo -n "Please wnter your Node-RED password. Your Node-RED ID is admin."
read YOUR_NODERED_PASSWORD

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
