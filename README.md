
# prometheus-operator-install

## helmget.sh  (安装指定版本)

## 安装 
make install

## 卸载
make uninstall

## 注：几个servicemonitor 抓取不到指标的问题排查
1. kube-proxy
https://blog.csdn.net/Richardlygo/article/details/101014112
2. 找到对应的服务，放开metrics指标
etcd.yaml  kube-apiserver.yaml  kube-controller-manager.yaml  kube-scheduler.yaml

