{{- define "ghost.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{- define "ghost.fullname" -}}
{{- printf "%s-%s" (include "ghost.name" .) .Release.Name -}}
{{- end -}}
