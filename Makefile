
helmAppName=prometheus1

build-template:
	rm -Rf outdir-${helmAppName}
	helm template kube-prometheus-stack/ --namespace monitoring --values ./values-thanos.yaml --name-template ${helmAppName} --output-dir outdir-${helmAppName}

install:
	helm install kube-prometheus-stack/ --namespace monitoring --values ./values-thanos.yaml --name-template ${helmAppName} 

uninstall:
	helm uninstall --namespace monitoring ${helmAppName} 


all:
	bash helmget.sh

