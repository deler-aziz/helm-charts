{{/*
Expand the name of the chart.
*/}}
{{- define "homarr.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "homarr.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create the chart image name.
*/}}
{{- define "homarr.image-name" -}}
{{- printf "%s:%s" .Values.homarr.image.repository (.Values.homarr.image.tag | default .Chart.AppVersion) }}
{{- end -}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "homarr.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- $name := default .Chart.Name .Values.nameOverride -}}
{{- if contains $name .Release.Name -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
{{- end -}}
{{- end -}}

{{/*
Instance label.
*/}}
{{- define "homarr.instance-name" -}}
{{- default (printf "%s-%s" .Release.Name .Release.Namespace) .Values.instanceLabelOverride | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/* Shared labels used for selector*/}}
{{/* This is an immutable field: this should not change between upgrade */}}
{{- define "homarr.labelselector" -}}
app.kubernetes.io/name: {{ template "homarr.name" . }}
app.kubernetes.io/instance: {{ template "homarr.instance-name" . }}
{{- end }}

{{/* Shared labels used in metada */}}
{{- define "homarr.labels" -}}
{{ include "homarr.labelselector" . }}
helm.sh/chart: {{ template "homarr.chart" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}