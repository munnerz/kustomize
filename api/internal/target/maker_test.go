// Copyright 2019 The Kubernetes Authors.
// SPDX-License-Identifier: Apache-2.0

package target_test

import (
	"testing"

	"sigs.k8s.io/kustomize/api/filesys"
	pLdr "sigs.k8s.io/kustomize/api/internal/plugins/loader"
	"sigs.k8s.io/kustomize/api/internal/target"
	"sigs.k8s.io/kustomize/api/konfig"
	fLdr "sigs.k8s.io/kustomize/api/loader"
	"sigs.k8s.io/kustomize/api/resmap"
	"sigs.k8s.io/kustomize/api/resource"
	valtest_test "sigs.k8s.io/kustomize/api/testutils/valtest"
	"sigs.k8s.io/kustomize/kubedeps/kunstruct"
	"sigs.k8s.io/kustomize/kubedeps/transformer"
)

func makeKustTarget(
	t *testing.T,
	fSys filesys.FileSystem,
	root string) *target.KustTarget {
	return makeKustTargetWithRf(
		t, fSys, root,
		resource.NewFactory(kunstruct.NewKunstructuredFactoryImpl()))
}

func makeKustTargetWithRf(
	t *testing.T,
	fSys filesys.FileSystem,
	root string,
	resFact *resource.Factory) *target.KustTarget {
	rf := resmap.NewFactory(resFact, transformer.NewFactoryImpl())
	pc := konfig.DisabledPluginConfig()
	ldr, err := fLdr.NewLoader(fLdr.RestrictionRootOnly, root, fSys)
	if err != nil {
		t.Fatal(err)
	}
	kt := target.NewKustTarget(
		ldr,
		valtest_test.MakeFakeValidator(),
		rf,
		transformer.NewFactoryImpl(),
		pLdr.NewLoader(pc, rf))
	if err = kt.Load(); err != nil {
		t.Fatalf("Unexpected construction error %v", err)
	}
	return kt
}
