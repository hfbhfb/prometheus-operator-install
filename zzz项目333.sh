

# 搜索
prometheus的CRD资源主体及相关信息                  32432wieru
job抓取servicemonitor                               32894wfoes
配置PrometheusRule告警alert                         3249832sldkfj
告警对接-钉钉-企业微信-飞信-飞书                   3284732sfoaj


# 安装 
make install


make uninstall



# 查看
make get


# 查看operator 日志
kubectl get po -n monitoring |grep operator
kubectl logs  -n monitoring prometheus1-kube-prometheu-operator-d55fcdb77-fxt6n 



# 测试
普罗访问： http://192.168.113.249:30090/
grafana访问： http://192.168.113.249:30091/   默认密码：prom-operator
alertmanager访问： http://192.168.113.249:30903/ 




