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

sed -i -e "s/\/\/adminAuth:/adminAuth:{\x0A\
        type: \"credentials\",\x0A\
        users: [{\x0A\
            username: \"admin\",\x0A\
            password: \"CLOUD_NODERED_PASSWORD\",\x0A\
            permissions: \"*\"\x0A\
        }]\x0A\
    },\x0A\
    \/\/adminAuth:/" $YOUR_NODERED_SETTING_DIR

# echoコマンド（引数で指定した内容を標準出力に出力する） : JP1/Advanced Shell
# http://itdoc.hitachi.co.jp/manuals/3021/3021313330/JPAS0389.HTM
# LINE=`echo -e "\x0D"`
#
# sed -i -e "s/\[NLINE\]/$LINE/" $YOUR_NODERED_SETTING_DIR

# sed -i -e "s/\[NLINE\]/\n/g" $YOUR_NODERED_SETTING_DIR ← 無理やりコマンド開放される模様　えぐい。
# ターミナル入力なら改行入れれる、foregroundバッチだと改行が入力改行として発動しエラーになる。

cat $YOUR_NODERED_SETTING_DIR

#### OK
# sed -i -e "s/\/\/adminAuth:/adminAuth:\"sample\"/" $YOUR_NODERED_SETTING_DIR
# cat $YOUR_NODERED_SETTING_DIR