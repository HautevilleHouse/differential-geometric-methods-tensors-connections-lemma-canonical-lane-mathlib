import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean

structure ConnectionPackage where
  vectorBundle : Type u
  connectionForm : Type v
  curvatureForm : Type w
  torsionForm : Type x
  covariantDerivative : Type y
  metricCompatibility : Prop
  torsionFree : Prop
  curvatureTensor : Prop
  connectionSmooth : Prop

structure ConnectionEvidence (C : ConnectionPackage) where
  metricCompatibilityClosed : C.metricCompatibility
  torsionFreeClosed : C.torsionFree
  curvatureTensorClosed : C.curvatureTensor
  connectionSmoothClosed : C.connectionSmooth

def ConnectionClosed (C : ConnectionPackage) : Prop :=
  C.metricCompatibility ∧ C.torsionFree ∧ C.curvatureTensor ∧ C.connectionSmooth

theorem connection_closed_from_evidence (C : ConnectionPackage) (E : ConnectionEvidence C) : ConnectionClosed C := by
  exact And.intro E.metricCompatibilityClosed (And.intro E.torsionFreeClosed (And.intro E.curvatureTensorClosed E.connectionSmoothClosed))

end DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean
end HautevilleHouse
