{{/*
Create grafana.name
*/}}
{{- define "grafana.name" -}}
{{- default .Chart.Name }}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "grafana.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "grafana.labels" -}}
app: {{ .Values.global.app }}
component: {{ include "grafana.name" . }}
chart: {{ include "grafana.chart" . }}
{{ include "grafana.selectorLabels" . }}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "grafana.selectorLabels" -}}
instance: {{ .Release.Name }}
{{- end -}}
