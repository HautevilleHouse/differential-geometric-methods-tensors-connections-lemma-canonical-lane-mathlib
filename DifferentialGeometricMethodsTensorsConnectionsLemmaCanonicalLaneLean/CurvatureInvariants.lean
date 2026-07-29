import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean

structure CurvatureInvariantPackage where
  manifold : Type u
  riemannTensor : Type v
  ricciTensor : Type w
  scalarCurvature : Type x
  sectionalCurvature : Type y
  ricciFlat : Prop
  constantScalarCurvature : Prop
  einsteinCondition : Prop
  positivity : Prop

structure CurvatureInvariantEvidence (I : CurvatureInvariantPackage) where
  ricciFlatClosed : I.ricciFlat
  constantScalarCurvatureClosed : I.constantScalarCurvature
  einsteinConditionClosed : I.einsteinCondition
  positivityClosed : I.positivity

def CurvatureInvariantClosed (I : CurvatureInvariantPackage) : Prop :=
  I.ricciFlat ∧ I.constantScalarCurvature ∧ I.einsteinCondition ∧ I.positivity

theorem curvature_invariant_closed_from_evidence (I : CurvatureInvariantPackage) (E : CurvatureInvariantEvidence I) : CurvatureInvariantClosed I := by
  exact And.intro E.ricciFlatClosed (And.intro E.constantScalarCurvatureClosed (And.intro E.einsteinConditionClosed E.positivityClosed))

end DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean
end HautevilleHouse
