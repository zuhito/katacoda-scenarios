echo "This is automatically run when the scenario"
echo "v 0.0.6"

pwd

ls -lha .

# echo "Waiting to complete"; while [ ! -f /home/scrapbook/tutorial/.backgroundfinished ] ; do sleep 2;

# echo "Done"

npm install bcryptjs
YOUR_NODERED_SETTING_DIR=settings.js
YOUR_NODERED_PASSWORD=$(more /dev/urandom  | tr -d -c '[:alnum:]' | fold -w 10 | head -1)
UI_NODERED_PASSWORD_CRYPT=`node -e "console.log(require('bcryptjs').hashSync(process.argv[1], 8));" ${YOUR_NODERED_PASSWORD}`


echo $YOUR_NODERED_PASSWORD
echo '//adminAuth:' > $YOUR_NODERED_SETTING_DIR

cat $YOUR_NODERED_SETTING_DIR

sed -i -e "s/\/\/adminAuth:/adminAuth:{\n\
        type: \"credentials\",\n\
        users: [{\n\
            username: \"admin\",\n\
            password: \"CLOUD_NODERED_PASSWORD\",\n\
            permissions: \"*\"\n\
        }]\n\
    },\n\
    \/\/adminAuth:/" $YOUR_NODERED_SETTING_DIR

cat $YOUR_NODERED_SETTING_DIR

sed -i -e "s/\/\/adminAuth:/adminAuth:{\n\
        type:/" $YOUR_NODERED_SETTING_DIR

cat $YOUR_NODERED_SETTING_DIR

sed -i -e "s/\/\/adminAuth:/adminAuth:{\n type:/" $YOUR_NODERED_SETTING_DIR

cat $YOUR_NODERED_SETTING_DIR

sed -i -e "s/\/\/adminAuth:/adminAuth:{ type: \"credentials\", users: [{ username: \"admin\", password: \"CLOUD_NODERED_PASSWORD\", permissions: \"*\" }] }, \/\/adminAuth:/" $YOUR_NODERED_SETTING_DIR

cat $YOUR_NODERED_SETTING_DIR

sed -i -e "s/\/\/adminAuth:/adminAuth:\"sample\"/" $YOUR_NODERED_SETTING_DIR

cat $YOUR_NODERED_SETTING_DIR