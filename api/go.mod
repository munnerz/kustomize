module sigs.k8s.io/kustomize/api

go 1.13

require (
	github.com/evanphx/json-patch v4.5.0+incompatible
	github.com/go-openapi/spec v0.19.5
	github.com/golangci/golangci-lint v1.21.0
	github.com/google/shlex v0.0.0-20191202100458-e7afc7fbc510
	github.com/pkg/errors v0.9.1
	github.com/stretchr/testify v1.4.0
	github.com/yujunz/go-getter v1.4.1-lite
	golang.org/x/tools v0.0.0-20191010075000-0337d82405ff
	gopkg.in/yaml.v2 v2.2.8
	k8s.io/kube-openapi v0.0.0-20200121204235-bf4fb3bd569c
	sigs.k8s.io/kustomize/kubedeps v0.0.1
	sigs.k8s.io/kustomize/kyaml v0.1.3
	sigs.k8s.io/yaml v1.1.0
)

replace sigs.k8s.io/kustomize/kubedeps v0.0.1 => ../kubedeps
