module sigs.k8s.io/kustomize/plugin/builtin/imagetagtransformer

go 1.13

require (
	sigs.k8s.io/kustomize/api v0.3.2
	sigs.k8s.io/yaml v1.1.0
)

replace sigs.k8s.io/kustomize/api => ../../../api

replace sigs.k8s.io/kustomize/kubedeps => ../../../kubedeps
