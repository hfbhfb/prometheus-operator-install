

## 需要修改一下helm包

#### 【增加1】 下载的helm后需要修改下 /thanos/templates/compactor/pvc.yaml  ，增加pvc的storageClassName名字
```yaml
  accessModes:
#   {{- range .Values.compactor.persistence.accessModes }}
#     - {{ . | quote }}
#   {{- end }}
{{- if .Values.compactor.persistence.storageClassName }}
  storageClassName: {{ .Values.compactor.persistence.storageClassName }}
{{- end }}

```

#### 【增加2】/thanos/templates/ruler/statefulset.yaml
```yaml
  volumeClaimTemplates:
    # - metadata:
    #     name: data
    #     {{- if .Values.ruler.persistence.annotations }}
    #     annotations: {{- include "common.tplvalues.render" ( dict "value" .Values.ruler.persistence.annotations "context" $) | nindent 10 }}
    #     {{- end }}
    #   spec:
{{- if .Values.ruler.persistence.storageClassName }}
        storageClassName: {{ .Values.ruler.persistence.storageClassName }}
{{- end }}

```



#### 【增加3】/Users/hfb/projects/k8s-sre/prometheus-operator/a-thanos-dir/thanos/templates/storegateway/statefulset.yaml

#### 【增加2】/thanos/templates/ruler/statefulset.yaml
```yaml
      spec:
        # accessModes:
        # {{- range .Values.storegateway.persistence.accessModes }}
        #   - {{ . | quote }}
        # {{- end }}
{{- if .Values.storegateway.persistence.storageClassName }}
        storageClassName: {{ .Values.storegateway.persistence.storageClassName }}
{{- end }}
```


