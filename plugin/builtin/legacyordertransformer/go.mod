module sigs.k8s.io/kustomize/plugin/builtin/legacyordertransformer

go 1.13

require (
	github.com/pkg/errors v0.9.1
	sigs.k8s.io/kustomize/api v0.3.2
)

replace sigs.k8s.io/kustomize/api => ../../../api

replace sigs.k8s.io/kustomize/kubedeps => ../../../kubedeps
