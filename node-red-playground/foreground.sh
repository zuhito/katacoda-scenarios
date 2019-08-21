echo "This is automatically run when the scenario"
echo "node-red-playground version 0.0.17"

node -v
npm -v
sudo npm install -g --unsafe-perm node-red

npm install bcryptjs
YOUR_NODERED_SETTING_DIR=/root/.node-red/settings.js
YOUR_NODERED_PASSWORD=$(more /dev/urandom  | tr -d -c '[:alnum:]' | fold -w 10 | head -1)
UI_NODERED_PASSWORD_CRYPT=`node -e "console.log(require('bcryptjs').hashSync(process.argv[1], 8));" ${YOUR_NODERED_PASSWORD}`

pwd

# node-red

#############

timeout 5 node-red > /dev/null

# sed -i -e "s/\/\/adminAuth:/adminAuth:{ type: \"credentials\", users: [{ username: \"admin\", password: \"CLOUD_NODERED_PASSWORD\", permissions: \"*\" }] },/" $YOUR_NODERED_SETTING_DIR

sed -i -e "s/\/\/adminAuth:/adminAuth:{\x0A\
        type: \"credentials\",\x0A\
        users: [{\x0A\
            username: \"admin\",\x0A\
            password: \"CLOUD_NODERED_PASSWORD\",\x0A\
            permissions: \"*\"\x0A\
        }]\x0A\
    },\x0A\
    \/\/adminAuth:/" $YOUR_NODERED_SETTING_DIR

sed -i -e "s*CLOUD_NODERED_PASSWORD*$UI_NODERED_PASSWORD_CRYPT*" /root/.node-red/settings.js

echo "This Node-RED already is made. ID is admin and PASSWORD is ${YOUR_NODERED_PASSWORD}."

echo "Let's input node-red and click ENTER"