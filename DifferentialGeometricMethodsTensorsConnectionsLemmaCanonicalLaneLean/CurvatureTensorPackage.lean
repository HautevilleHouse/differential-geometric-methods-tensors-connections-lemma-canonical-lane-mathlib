import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean

structure RiemannianCurvaturePackage where
  manifold : Type u
  riemannTensor : Type v
  ricciTensor : Type w
  scalarCurvature : Type x
  smoothThreeManifold : Prop
  metricSmooth : Prop
  riemannTensorLawful : Prop
  ricciContractedFromRiemann : Prop

structure RiemannianCurvatureEvidence (G : RiemannianCurvaturePackage) where
  smoothThreeManifoldClosed : G.smoothThreeManifold
  metricSmoothClosed : G.metricSmooth
  riemannTensorLawfulClosed : G.riemannTensorLawful
  ricciContractedFromRiemannClosed : G.ricciContractedFromRiemann

def RiemannianCurvatureClosed (G : RiemannianCurvaturePackage) : Prop :=
  G.smoothThreeManifold ∧ G.metricSmooth ∧ G.riemannTensorLawful ∧ G.ricciContractedFromRiemann

theorem riemannian_curvature_closed_from_evidence
    (G : RiemannianCurvaturePackage) (E : RiemannianCurvatureEvidence G) :
    RiemannianCurvatureClosed G := by
  exact And.intro E.smoothThreeManifoldClosed (And.intro E.metricSmoothClosed
    (And.intro E.riemannTensorLawfulClosed E.ricciContractedFromRiemannClosed))

end DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean
end HautevilleHouse
