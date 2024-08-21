


# job抓取servicemonitor                               **32894wfoes**


//////
kubectl get po -A

# 查看所有抓取
kubectl get servicemonitor -A


# 删除所有告警（只保留 kubelet和kube-state-metrics和node-exporter）
kubectl get servicemonitor -n monitoring | grep -v "NAME" |grep  -v 'kubelet\|kube-state-metrics\|node-exporter' | awk '{print $1}' | xargs -I {} kubectl delete servicemonitor -n monitoring {}

ls


# tmp
servicemonitor.monitoring.coreos.com "prometheus1-kube-prometheu-alertmanager" deleted
servicemonitor.monitoring.coreos.com "prometheus1-kube-prometheu-apiserver" deleted
servicemonitor.monitoring.coreos.com "prometheus1-kube-prometheu-coredns" deleted
servicemonitor.monitoring.coreos.com "prometheus1-kube-prometheu-kube-controller-manager" deleted
servicemonitor.monitoring.coreos.com "prometheus1-kube-prometheu-kube-etcd" deleted
servicemonitor.monitoring.coreos.com "prometheus1-kube-prometheu-kube-proxy" deleted
servicemonitor.monitoring.coreos.com "prometheus1-kube-prometheu-kube-scheduler" deleted
servicemonitor.monitoring.coreos.com "prometheus1-kube-prometheu-operator" deleted
servicemonitor.monitoring.coreos.com "prometheus1-kube-prometheu-prometheus" deleted




