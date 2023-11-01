
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
# helm repo update prometheus-community



# 查找一下对应的helm仓库有哪些包 list
helm search repo prometheus-community -l

# 安装指定版本
fixVersion=47.3.0 
helm pull prometheus-community/kube-prometheus-stack --version $fixVersion --untar


# 实例化
# helmAppName=prometheus1
# helm install kube-prometheus-stack/ --namespace monitoring --values ./values.yaml --name-template ${helmAppName} 

# helm template 模板运算
# helmAppName=prometheus1
# helm template kube-prometheus-stack/ --namespace monitoring --values ./values.yaml --name-template $helmAppName --output-dir outdir-$helmAppName
