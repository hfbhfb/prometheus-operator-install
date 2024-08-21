

## 为什么要使用 PrometheusAlert?   **468hsiu**  依赖 429vuwo
- 1. 目前Alertmanager官方内置的第三方通知集成包括：邮件、  即时通讯软件（如Slack、Hipchat）、移动应用消息推送(如Pushover)和自动化运维工具（例如：Pagerduty、Opsgenie、Victorops）。Alertmanager的通知方式中还可以支持Webhook，通过这种方式开发者可以实现更多个性化的扩展支持。
- 2. PrometheusAlert : 支持WebHook接口的系统发出的预警消息，支持将收到的这些消息发送到钉钉，微信，email，飞书，腾讯短信，腾讯电话，阿里云短信，阿里云电话，华为短信，百度云短信，容联云电话，七陌短信，七陌语音，TeleGram，百度Hi(如流)等。

#### 安装
make install

kubectl get po -A -owide|grep alert

NS=monitoring
kubectl exec -it  -n ${NS} prome-alert-trans-0  sh
kubectl logs -n ${NS}  prome-alert-trans-0 


kubectl get pvc -n ${NS} 
kubectl delete pvc -n ${NS}  alertvolume-prome-alert-trans-0

### 网页打开 prometheusalertmm1 prometheusalertmm1
http://192.168.113.249:30388


#### 先裸测一下飞书的接口
make raw-send


### 配置alertmanager,让告警接入prometheusalert中间pod中
make config1

## 节点数量告警（100%触发）
make alert100

## 清理告警，告警恢复
make cleanalert100



## 注意1:
模板中需要resolved字符串，要不然恢复的标题还是红色的


## 代码路径
参考项目:  git@github.com:hfbhfb/MyPrometheusAlert.git


## dingding文档
https://github.com/feiyu563/PrometheusAlert/blob/master/doc/readme/conf-dingding.md



