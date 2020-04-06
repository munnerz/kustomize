module sigs.k8s.io/kustomize/plugin/builtin/patchjson6902transformer

go 1.13

require (
	github.com/evanphx/json-patch v4.5.0+incompatible
	github.com/pkg/errors v0.9.1
	sigs.k8s.io/kustomize/api v0.3.2
	sigs.k8s.io/yaml v1.1.0
)

replace sigs.k8s.io/kustomize/api => ../../../api

replace sigs.k8s.io/kustomize/kubedeps => ../../../kubedeps
