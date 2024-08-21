

# b-告警对接-钉钉-企业微信-飞信-飞书                   **3284732sfoaj**



make install
make uninstall

make get

# 查看配置
kubectl exec -it prome-alert-trans-0 -n monitoring -- sh -c 'ls conf/'
kubectl exec -it prome-alert-trans-0 -n monitoring -- sh -c 'cat conf/app.conf'
kubectl exec -it prome-alert-trans-0 -n monitoring -- sh -c 'cat conf/app.conf' |grep ding

# 查看日志
kubectl logs prome-alert-trans-0 -n monitoring

### 网页打开 prometheusalertmm1 prometheusalertmm1
http://192.168.113.249:30388



# 如何配置 alertmanager 配置告警组件webhook           搜索      384932saflsa




