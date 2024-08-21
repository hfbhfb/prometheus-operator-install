




kubectl get po -n cce-monitor |grep copaddon-prometheus-server-0




kubectl get po -n cce-monitor  copaddon-prometheus-server-0 -oyaml |grep name


# 日志
kubectl logs -n cce-monitor  copaddon-prometheus-server-0  -c prometheus

# 查看和过滤
kubectl exec -it -n cce-monitor  copaddon-prometheus-server-0  -c prometheus -- sh -c 'cat /etc/prometheus/config_out/prometheus.env.yaml' |grep -C 20 alertmanagers

# 登录到pod
kubectl exec -it -n cce-monitor  copaddon-prometheus-server-0  -c prometheus -- sh


# 查看prometheus资源
kubectl get Prometheus -n cce-monitor  server
kubectl get Prometheus -n cce-monitor  server -oyaml|grep -i alert
kubectl get Prometheus -n cce-monitor  server -oyaml|grep -i ccetest

# 编辑prometheus资源
kubectl edit Prometheus -n cce-monitor  server

kubectl get cm -n cce-monitor |grep alertmanager
kubectl get secret -n cce-monitor |grep alertmanager
kubectl get secret -n cce-monitor alertmanager-configs -oyaml


kubectl get cm -n cce-monitor |grep additional-scrape-configs
kubectl get secret -n cce-monitor |grep additional-scrape-configs
kubectl get secret -n cce-monitor additional-scrape-configs -oyaml

additional-scrape-configs

