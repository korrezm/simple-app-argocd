{{- define "test-argocd-app.fullname" -}}
{{ .Release.Name }}
{{- end -}}

{{- define "test-argocd-app.labels" -}}
app.kubernetes.io/name: {{ include "test-argocd-app.fullname" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end -}}
