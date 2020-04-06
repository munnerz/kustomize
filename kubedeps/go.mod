module sigs.k8s.io/kustomize/kubedeps

go 1.14

require (
	github.com/evanphx/json-patch v4.5.0+incompatible
	github.com/pkg/errors v0.9.1
	k8s.io/api v0.17.0
	k8s.io/apimachinery v0.17.0
	k8s.io/client-go v0.17.0
	sigs.k8s.io/kustomize/api v0.3.2
)

replace sigs.k8s.io/kustomize/api v0.3.2 => ../api

replace sigs.k8s.io/kustomize/kubedeps v0.0.1 => ./
