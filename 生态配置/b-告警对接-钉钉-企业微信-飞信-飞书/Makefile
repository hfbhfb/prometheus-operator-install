

# NS=local-path-storage

helmAppName ?= prometheus-alert-1
#NS ?= cce-monitor
NS ?= monitoring


template:
	rm -rf outdir-${helmAppName}
	helm template alerthelm/ --namespace ${NS} --values ./values.yaml --name-template ${helmAppName} --output-dir outdir-${helmAppName}

install:
	helm install ${helmAppName} ./alerthelm --values ./values.yaml --namespace ${NS} 

uninstall:
	- helm uninstall ${helmAppName} --namespace ${NS} 
	sleep 5; kubectl delete pvc -n ${NS} alertvolume-prome-alert-trans-0

get:
	kubectl get sts -n ${NS} -oyaml
	kubectl get po -n ${NS}
	kubectl get pvc -n ${NS}

installold:
	kubectl apply -f info-alert.yaml --namespace ${NS}

uninstallold:
	kubectl delete -f info-alert.yaml --namespace ${NS}

#配置prometheusrule
test1:
	kubectl apply -f prometheus-rule-for-alert.yaml

#配置alertmanager,真正的接入alert工具
test2:
	kubectl apply -f secret-alert-manager.yaml

#配置alertmanager,真正的接入alert工具,配置相应的过滤
test3:
	kubectl apply -f eng/eng-prometheus-rule-for-alert.yaml
	kubectl apply -f secret-alert-manager-filtered.yaml


# 先裸测一下飞书的接口
raw-send:
	bash raw-feifu.sh

# 配置alertmanager,让告警接入prometheusalert中间pod中
config1:
	kubectl apply -f secret-alert-manager-filtered.yaml


# 节点数量告警（100%触发）
alert100:
	kubectl apply -f ./testaa/eng-prometheus-rule-for-alert.yaml

cleanalert100:
	kubectl delete -f ./testaa/eng-prometheus-rule-for-alert.yaml

