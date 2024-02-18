

helmAppName=prometheus1
AAAConfig=values.yaml

RemoteWriteConfig=values-remotewrite.yaml

build-template:
	rm -Rf outdir-${helmAppName}
	helm template kube-prometheus-stack/ --namespace monitoring --values ./${AAAConfig} --name-template ${helmAppName} --output-dir outdir-${helmAppName}

install:
	helm install kube-prometheus-stack/ --namespace monitoring --values ./${AAAConfig} --name-template ${helmAppName} 

uninstall:
	helm uninstall --namespace monitoring ${helmAppName} 


all:
	bash helmget.sh


build-template-remotewite:
	rm -Rf outdir-${helmAppName}
	helm template kube-prometheus-stack/ --namespace monitoring --values ./${RemoteWriteConfig} --name-template ${helmAppName} --output-dir outdir-${helmAppName}

install-remotewite:
	helm install kube-prometheus-stack/ --namespace monitoring --values ./${RemoteWriteConfig} --name-template ${helmAppName} 


