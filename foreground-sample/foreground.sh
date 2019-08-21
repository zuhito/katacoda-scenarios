echo "This is automatically run when the scenario"
echo "v 0.0.9"

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

#### NG
# sed -i -e "s/\/\/adminAuth:/adminAuth:{\n\
#        type:/" $YOUR_NODERED_SETTING_DIR
#
# cat $YOUR_NODERED_SETTING_DIR

#### NG
# sed -i -e "s/\/\/adminAuth:/adminAuth:{\n type:/" $YOUR_NODERED_SETTING_DIR
# cat $YOUR_NODERED_SETTING_DIR

#### OK
# sed -i -e 's/\/\/adminAuth:/adminAuth:{\n       type: \"credentials\",\n       users: [{ username: \"admin\", password: \"CLOUD_NODERED_PASSWORD\", permissions: \"*\" }] },/' $YOUR_NODERED_SETTING_DIR

#### OK
# sed -i -e "s/\/\/adminAuth:/adminAuth:{ type: \"credentials\", users: [{ username: \"admin\", password: \"CLOUD_NODERED_PASSWORD\", permissions: \"*\" }] }," $YOUR_NODERED_SETTING_DIR

#### OK
# sed -i -e "s/\/\/adminAuth:/adminAuth:{ type: \"credentials\", users: [{ username: \"admin\", password: \"CLOUD_NODERED_PASSWORD\", permissions: \"*\" }] }," $YOUR_NODERED_SETTING_DIR

sed -i -e "s/\/\/adminAuth:/adminAuth:{[NLINE]\
        type: \"credentials\",[NLINE]\
        users: [{[NLINE]\
            username: \"admin\",[NLINE]\
            password: \"CLOUD_NODERED_PASSWORD\",[NLINE]\
            permissions: \"*\"[NLINE]\
        }][NLINE]\
    },[NLINE]\
    \/\/adminAuth:/" $YOUR_NODERED_SETTING_DIR

sed -i -e "s/\[NLINE\]/\r/g" $YOUR_NODERED_SETTING_DIR

# sed -i -e "s/\[NLINE\]/\n/g" $YOUR_NODERED_SETTING_DIR ← 無理やりコマンド開放される模様　えぐい。

cat $YOUR_NODERED_SETTING_DIR

#### OK
# sed -i -e "s/\/\/adminAuth:/adminAuth:\"sample\"/" $YOUR_NODERED_SETTING_DIR
# cat $YOUR_NODERED_SETTING_DIR