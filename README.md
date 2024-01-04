
# prometheus-operator-install

## helmget.sh  (安装指定版本)

## 安装 
make install

## 卸载
make uninstall




访问： http://192.168.88.92:30090/
普罗访问： http://render.tpddns.cn:30090/
grafana访问： http://render.tpddns.cn:30091/   默认密码：prom-operator


## 注：几个servicemonitor 抓取不到指标的问题排查
1. kube-proxy
https://blog.csdn.net/Richardlygo/article/details/101014112
2. 找到对应的服务，放开metrics指标locale
etcd.yaml  kube-apiserver.yaml  kube-controller-manager.yaml  kube-scheduler.yaml

## thanos 文档  （ https://blog.csdn.net/u010533742/article/details/124944538 ）


