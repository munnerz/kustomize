module sigs.k8s.io/kustomize/functions/examples/validator-kubeval

go 1.13

require (
	github.com/instrumenta/kubeval v0.0.0-20190918223246-8d013ec9fc56
	sigs.k8s.io/kustomize/kyaml v0.0.0-20191212230447-6309af43a718
)

replace sigs.k8s.io/kustomize/kyaml => ../../../../kyaml
