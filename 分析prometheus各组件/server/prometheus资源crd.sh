


# prometheus的CRD资源主体及相关信息                  **32432wieru**
普罗访问： http://192.168.113.249:30090/


# 查看CRD资源
kubectl get Prometheus -n monitoring
kubectl get Prometheus -n monitoring prometheus1-kube-prometheu-prometheus
kubectl get Prometheus -n monitoring prometheus1-kube-prometheu-prometheus -oyaml > crd-prometheus.yaml


# 查看sts
kubectl get statefulset -n monitoring
kubectl get statefulset -n monitoring prometheus-prometheus1-kube-prometheu-prometheus
kubectl get statefulset -n monitoring prometheus-prometheus1-kube-prometheu-prometheus -o yaml > sts-prometheus.yaml


# 查看最终的config
kubectl exec -it -n monitoring prometheus-prometheus1-kube-prometheu-prometheus-0 -c prometheus > prometheus.env.yaml -- sh -c 'cat /etc/prometheus/config_out/prometheus.env.yaml' 



