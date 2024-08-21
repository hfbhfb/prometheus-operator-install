
api=https://open.feishu.cn/open-apis/bot/v2/hook/73dcd779-f0d3-4f73-9dbf-7b1a3341df2f #飞书机器人webhook 地址


content=${@:1}
content=${content//\<font color=\'red\'\>/}
content=${content//\<\/font\>\<\/br\>/}
content=${content//\ /}
time3=$(date "+%H:%M:%S")
content="$time3,$content"
echo "warn content is : $content"
curl -X POST \
  $api \
  -H 'Content-Type: application/json' \
  -d '{
    "msg_type": "post",
    "content": {
        "post": {
            "zh_cn": {
                "title": "WGCLOUD告警",
                "content": [
                    [
                        {
                            "tag": "text",
                            "un_escape": true,
                            "text": "'$content'"
                        }
                    ],
                    [

                    ]
                ]
            }
        }
    }
}'
