


# 查看svc
kubectl get svc -n cce-monitor |grep manager
kubectl get svc -n cce-monitor cop-alertmanager
kubectl describe svc -n cce-monitor cop-alertmanager



kubectl get cm -n cce-monitor cop-alert-center-alertmanager -oyaml

# 打印日志
kubectl logs cop-alert-center-alertmanager-0 -n cce-monitor -c cop-alert-center-alertmanager

# 查看alertmanager配置信息
kubectl exec -it cop-alert-center-alertmanager-0 -n cce-monitor -c cop-alert-center-alertmanager -- sh -c 'cat /etc/config/alertmanager.yml'




kubectl get po -n cce-monitor 
kubectl get po -n cce-monitor | grep  -i mana
kubectl get po -n cce-monitor cop-alert-center-alertmanager-0 -oyaml




