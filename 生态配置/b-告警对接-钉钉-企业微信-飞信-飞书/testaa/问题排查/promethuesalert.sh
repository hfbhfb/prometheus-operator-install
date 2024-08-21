




helm list -n cce-monitor |grep prometheus-alert-1



kubectl get po -n cce-monitor |grep prome-alert-trans-0


# 查看日志
kubectl logs -n cce-monitor prome-alert-trans-0


