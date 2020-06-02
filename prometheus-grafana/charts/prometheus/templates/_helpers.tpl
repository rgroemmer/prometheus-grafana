{{/*
Create prometheus.name
*/}}
{{- define "prometheus.name" -}}
{{- default .Chart.Name }}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "prometheus.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "prometheus.labels" -}}
app: {{ .Values.global.app }}
component: {{ include "prometheus.name" . }}
chart: {{ include "prometheus.chart" . }}
{{ include "prometheus.selectorLabels" . }}
{{- end -}}

{{/*
Common labels
*/}}
{{- define "prometheus.selectorLabels" -}}
instance: {{ .Release.Name }}
{{- end -}}
