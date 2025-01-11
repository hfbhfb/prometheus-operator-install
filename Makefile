

helmAppName=prometheus1
AAAConfig=values.yaml
NS=monitoring

RemoteWriteConfig=values-remotewrite.yaml

build-template:
	rm -Rf outdir-${helmAppName}
	helm template kube-prometheus-stack/ --namespace monitoring --values ./${AAAConfig} --name-template ${helmAppName} --output-dir outdir-${helmAppName}

install:
	helm install kube-prometheus-stack/ --namespace monitoring --values ./${AAAConfig} --name-template ${helmAppName} 

uninstall:
	helm uninstall --namespace monitoring ${helmAppName} 

get:
	kubectl get po -n ${NS}
	kubectl get Prometheus -n ${NS}
	kubectl get svc -n ${NS}
	kubectl get Prometheus -n ${NS} -oyaml

crd:
	kubectl get Prometheus -n ${NS} prometheus1-kube-prometheu-prometheus -oyaml
	#kubectl get Prometheus -n ${NS} prometheus1-kube-prometheu-prometheus -oyaml |grep -C 10 prometheus1-kube-prometheu-alertmanager

svc:
	kubectl get svc -n ${NS}

all:
	bash helmget.sh


build-template-remotewite:
	rm -Rf outdir-remotewite-${helmAppName}
	helm template kube-prometheus-stack/ --namespace monitoring --values ./${RemoteWriteConfig} --name-template ${helmAppName} --output-dir outdir-remotewite-${helmAppName}

install-remotewite:
	helm install kube-prometheus-stack/ --namespace monitoring --values ./${RemoteWriteConfig} --name-template ${helmAppName} 


