{{/*
Generate image-list annotation value from images array
*/}}
{{- define "wiji-cluster.imageList" -}}
{{- $list := list -}}
{{- range . -}}
  {{- $list = append $list (printf "%s=%s" .alias .image) -}}
{{- end -}}
{{- join "," $list -}}
{{- end -}}
