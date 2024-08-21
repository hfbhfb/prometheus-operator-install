


#      如何配置 alertmanager 配置告警组件webhook            **384932saflsa**              依赖 468hsiu




#查看参数-当前配置
kubectl exec -it  -n monitoring alertmanager-prometheus1-kube-prometheu-alertmanager-0 -- sh -c 'cat /etc/alertmanager/config_out/alertmanager.env.yaml'

# 备份alertmanager的yaml
kubectl get secret -n monitoring |grep generate
kubectl get secret -n monitoring  alertmanager-prometheus1-kube-prometheu-alertmanager -oyaml
kubectl get secret -n monitoring  alertmanager-prometheus1-kube-prometheu-alertmanager-generated -oyaml
kubectl get secret -n monitoring  alertmanager-prometheus1-kube-prometheu-alertmanager -oyaml > secret-alertmanager.bak.yaml

# 创建新的配置(删除老的) - 需要等一会
kubectl delete secret -n monitoring  alertmanager-prometheus1-kube-prometheu-alertmanager
kubectl create secret generic -n monitoring  alertmanager-prometheus1-kube-prometheu-alertmanager --from-file=alertmanager.yaml 
kubectl delete secret -n monitoring  alertmanager-prometheus1-kube-prometheu-alertmanager-generated























# tmp
kubectl get cm -n monitoring | grep alertmanager
kubectl get cm -n monitoring | grep -i alert

kubectl get secret -n monitoring alertmanager-prometheus1-kube-prometheu-alertmanager-generated -o yaml
kubectl get cm -n monitoring | grep -i alert


kubectl get secret -n monitoring  alertmanager-prometheus1-kube-prometheu-alertmanager -oyaml
kubectl get secret -n monitoring  alertmanager-prometheus1-kube-prometheu-alertmanager-generated -oyaml
kubectl get secret -n monitoring  prometheus1-kube-prometheu-alertmanager-token-gnxqc -oyaml

alertmanager-prometheus1-kube-prometheu-alertmanager-generated


echo cmVjZWl2ZXJzOgotIG5hbWU6ICJEZWZhdWx0IgogIHdlYmhvb2tfY29uZmlnczoKICAtIHVybDogaHR0cDovLzE5Mi4xNjguMTEzLjI0OTozMDM4OC9wcm9tZXRoZXVzYWxlcnQ/dHlwZT1kZCZ0cGw9cHJvbWV0aGV1cy1kZCZkZHVybD1odHRwczovL29hcGkuZGluZ3RhbGsuY29tL3JvYm90L3NlbmQ/YWNjZXNzX3Rva2VuPThhYjhlYmIyMzlkOTU3YzdhYWJhMDNjODYxOTM5MmY0OGRjNjgzNmZhN2Q4NWNjMTY2YzMxMzVkNmZhOTg1MzcKICAgIHNlbmRfcmVzb2x2ZWQ6IHRydWUKCg== | base64 -d


