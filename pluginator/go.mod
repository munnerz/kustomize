module sigs.k8s.io/kustomize/pluginator/v2

go 1.13

require (
	github.com/pkg/errors v0.9.1 // indirect
	gopkg.in/yaml.v2 v2.2.8 // indirect
	sigs.k8s.io/kustomize/api v0.3.2
)

replace sigs.k8s.io/kustomize/api v0.3.1 => ../api

replace sigs.k8s.io/kustomize/kubedeps v0.0.1 => ../kubedeps
