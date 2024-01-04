


helmAppName=thanos1

build-template:
	rm -Rf outdir-${helmAppName}
	helm template thanos/ --namespace monitoring --values ./values.yaml --name-template ${helmAppName} --output-dir outdir-${helmAppName}


install:
	helm install thanos/ --namespace monitoring --values ./values.yaml --name-template ${helmAppName} 

uninstall:
	helm uninstall --namespace monitoring ${helmAppName} 



pulltar:
	#helm search repo bitnami -l|grep thanos
	helm pull bitnami/thanos --untar --version 12.11.2 # 12.11.2 匹配prometheus对应sidecar -> [thanos] 0.31.0


