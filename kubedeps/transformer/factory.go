// Copyright 2019 The Kubernetes Authors.
// SPDX-License-Identifier: Apache-2.0

// Package transformer provides transformer factory
package transformer

import (
	"sigs.k8s.io/kustomize/api/resmap"
	"sigs.k8s.io/kustomize/api/resource"
	"sigs.k8s.io/kustomize/kubedeps/transformer/patch"
)

// FactoryImpl makes patch transformer and name hash transformer
type FactoryImpl struct{}

// NewFactoryImpl makes a new factoryImpl instance
func NewFactoryImpl() *FactoryImpl {
	return &FactoryImpl{}
}

func (p *FactoryImpl) MergePatches(patches []*resource.Resource,
	rf *resource.Factory) (
	resmap.ResMap, error) {
	return patch.MergePatches(patches, rf)
}
