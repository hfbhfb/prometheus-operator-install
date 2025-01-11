


# job抓取servicemonitor                               **32894wfoes**


//////
kubectl get po -A

# 查看所有抓取
kj get servicemonitor -A
kk get servicemonitor -A




# 删除所有（只保留 kubelet和kube-state-metrics和node-exporter）
kubectl get servicemonitor -n monitoring | grep -v "NAME" |grep  -v 'kubelet\|kube-state-metrics\|node-exporter' | awk '{print $1}' | xargs -I {} kubectl delete servicemonitor -n monitoring {}

ls


# 测试remote-write对接                                 **324lsdkjfds**
# https://github.com/prometheus-operator/prometheus-operator/blob/main/Documentation/api-reference/api.md#monitoring.coreos.com/v1.RemoteWriteSpec
# 1.删除kk集群所有 servicemonitor 确保不会有指标录入
kk  get servicemonitor -n monitoring | grep -v "NAME"  | awk '{print $1}' | xargs -I {} kubectl --kubeconfig=/c/Users/hefabao/.kube/configd  delete servicemonitor -n monitoring {}

# 2. 确认指标已经不录入了
http://192.168.56.125:30090/graph?g0.expr=node_memory_Shmem_bytes&g0.tab=0&g0.stacked=0&g0.show_exemplars=0&g0.range_input=1h

# 3.删除pvc,pv 重新拉起server
kk delete pvc prometheus-prometheus1-kube-prometheu-prometheus-db-prometheus-prometheus1-kube-prometheu-prometheus-0 -n monitoring
kk delete po --force -n monitoring         prometheus-prometheus1-kube-prometheu-prometheus-0
kk get pvc  -n monitoring

# 4. 使能kk集群接收remote write信息
kk edit Prometheus  prometheus1-kube-prometheu-prometheus -n monitoring
    #  prometheus:
    #    prometheusSpec:
    #      enableRemoteWriteReceiver: true
    #      enableFeatures:
    #      - remote-write-receiver
# spec:
#   enableRemoteWriteReceiver: true
#   enableFeatures:
#   - remote-write-receiver
kk get po -n monitoring   

# 5. 让kj集群推送指标数据到远端的prometheus
kj edit Prometheus  prometheus1-kube-prometheu-prometheus -n monitoring
# apiVersion: monitoring.coreos.com/v1
# kind: Prometheus
# metadata:
#   name: prometheus1-kube-prometheu-prometheus
#   namespace: monitoring
# spec:
# remoteWrite:
# - url: http://192.168.56.125:30090/api/v1/write
#    writeRelabelConfigs:
#    - sourceLabels: [__meta_cluster_name]
#      action: replace
#      targetLabel: cluster
#      replacement: cluster-kj
kj delete po --force -n monitoring         prometheus-prometheus1-kube-prometheu-prometheus-0
kj get pod  -n monitoring
kj logs prometheus-prometheus1-kube-prometheu-prometheus-0   -n monitoring 











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




