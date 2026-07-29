import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean

structure ConnectionPackage (G : RiemannianCurvaturePackage) where
  connectionOperator : Type u
  torsionOperator : Type v
  curvatureOperator : Type w
  torsionFreeCondition : Prop
  curvatureCommutatorCondition : Prop

structure ConnectionEvidence {G : RiemannianCurvaturePackage} (C : ConnectionPackage G) where
  torsionFreeClosed : C.torsionFreeCondition
  curvatureCommutatorClosed : C.curvatureCommutatorCondition

def ConnectionClosed {G : RiemannianCurvaturePackage} (C : ConnectionPackage G) : Prop :=
  C.torsionFreeCondition ∧ C.curvatureCommutatorCondition

theorem connection_closed_from_evidence
    {G : RiemannianCurvaturePackage} (C : ConnectionPackage G) (E : ConnectionEvidence C) :
    ConnectionClosed C := by
  exact And.intro E.torsionFreeClosed E.curvatureCommutatorClosed

end DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean
end HautevilleHouse
