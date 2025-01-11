


# 负载cpu实际使用>0.02
(sum(rate(container_cpu_usage_seconds_total{ cluster=~\"$cluster\",namespace=~\"$namespace\",pod=~\"$pod\",job=\"kubelet\"}[5m])) by (cluster,namespace,pod)  ) > 0.02
sum(rate(container_cpu_usage_seconds_total{ pod="testapp4-0" }[3m])) by (pod)



