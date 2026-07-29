import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean

structure FrameBundlePackage where
  frameBundle : Type u
  connectionForm : Type v
  curvatureForm : Type w
  structureGroupReduced : Prop
  solderingForm : Prop
  torsionForm : Prop

structure FrameBundleEvidence (P : FrameBundlePackage) where
  frameBundleDefined : True
  connectionFormDefined : True
  curvatureFormDefined : True
  structureGroupReducedClosed : P.structureGroupReduced
  solderingFormClosed : P.solderingForm
  torsionFormClosed : P.torsionForm

def FrameBundleClosed (P : FrameBundlePackage) : Prop :=
  P.structureGroupReduced ∧ P.solderingForm ∧ P.torsionForm

theorem frame_bundle_closed_from_evidence (P : FrameBundlePackage) (E : FrameBundleEvidence P) : FrameBundleClosed P := by
  exact And.intro E.structureGroupReducedClosed (And.intro E.solderingFormClosed E.torsionFormClosed)

end DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean
end HautevilleHouse