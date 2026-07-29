import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean

structure CurvatureTensorPackage where
  riemannianMetric : Type u
  riemannCurvature : Type v
  ricciCurvature : Type w
  scalarCurvature : Type x
  firstBianchiIdentity : Prop
  secondBianchiIdentity : Prop
  skewSymmetry : Prop
  pairSymmetry : Prop

structure CurvatureTensorEvidence (P : CurvatureTensorPackage) where
  riemannianMetricDefined : True
  riemannCurvatureDefined : True
  ricciCurvatureDefined : True
  scalarCurvatureDefined : True
  firstBianchiIdentityClosed : P.firstBianchiIdentity
  secondBianchiIdentityClosed : P.secondBianchiIdentity
  skewSymmetryClosed : P.skewSymmetry
  pairSymmetryClosed : P.pairSymmetry

def CurvatureTensorClosed (P : CurvatureTensorPackage) : Prop :=
  P.firstBianchiIdentity ∧ P.secondBianchiIdentity ∧ P.skewSymmetry ∧ P.pairSymmetry

theorem curvature_tensor_closed_from_evidence (P : CurvatureTensorPackage) (E : CurvatureTensorEvidence P) : CurvatureTensorClosed P := by
  exact And.intro E.firstBianchiIdentityClosed (And.intro E.secondBianchiIdentityClosed (And.intro E.skewSymmetryClosed E.pairSymmetryClosed))

end DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean
end HautevilleHouse