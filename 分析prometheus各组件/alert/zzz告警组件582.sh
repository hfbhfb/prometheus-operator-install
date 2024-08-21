


# 配置PrometheusRule告警alert                         **3249832sldkfj**  # 如何配置 配置告警组件webhook alertmanager 搜索  384932saflsa
alertmanager访问： http://192.168.113.249:30903/ 

# 两部分
# 1、 prometheus的告警规则
# 2、 alertmanager 的告警执行体

# 查看所有告警
kubectl get PrometheusRule -A
kubectl get PrometheusRule -n monitoring
kubectl get PrometheusRule -n  monitoring   prometheus1-kube-prometheu-general.rules -oyaml > tmp1/prometheus1-kube-prometheu-general.rules.yaml

# 删除所有告警
kubectl get PrometheusRule -n monitoring | grep -v "NAME" | awk '{print $1}' | xargs -I {} kubectl delete PrometheusRule -n monitoring {}


# 配置0.1 cpu使用告警
kubectl delete -f alert-pod-cpu80.yaml
kubectl apply -f alert-pod-cpu80.yaml




# 查看pod,svc
kubectl get po -n monitoring |grep -i alert
kubectl get svc -n monitoring |grep -i alert

#查看pod日志
kubectl logs  -n monitoring alertmanager-prometheus1-kube-prometheu-alertmanager-0 

# 删除pod
kubectl delete po  -n monitoring alertmanager-prometheus1-kube-prometheu-alertmanager-0 


#查看参数-当前配置
kubectl get sts -n monitoring alertmanager-prometheus1-kube-prometheu-alertmanager -oyaml > sts-alertmanager.yaml
kubectl exec -it  -n monitoring alertmanager-prometheus1-kube-prometheu-alertmanager-0 -- sh -c 'cat /etc/alertmanager/config_out/alertmanager.env.yaml'









# tmp             111111111

kubectl get PrometheusRule workload1 -n monitoring -oyaml


kubectl api-resources | grep PrometheusRule








