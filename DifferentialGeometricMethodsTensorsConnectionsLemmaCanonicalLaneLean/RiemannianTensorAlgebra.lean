import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean

structure RiemannianTensorAlgebra where
  covariantTensorRank : Nat → Type u
  contravariantTensorRank : Nat → Type u
  metricTensor : Type v
  inverseMetric : Type w
  leviCivitaConnection : Type x
  riemannCurvatureTensor : Type y
  ricciTensor : Type z
  scalarCurvature : Type w1
  tensorProductDefined : Prop
  contractionDefined : Prop
  tensorSymmetriesIdentified : Prop
  compatibilityWithMetric : Prop
  leviCivitaConnectionExists : Prop

structure RiemannianTensorAlgebraEvidence (A : RiemannianTensorAlgebra) where
  tensorProductDefinedClosed : A.tensorProductDefined
  contractionDefinedClosed : A.contractionDefined
  tensorSymmetriesIdentifiedClosed : A.tensorSymmetriesIdentified
  compatibilityWithMetricClosed : A.compatibilityWithMetric
  leviCivitaConnectionExistsClosed : A.leviCivitaConnectionExists

def RiemannianTensorAlgebraClosed (A : RiemannianTensorAlgebra) : Prop :=
  A.tensorProductDefined ∧ A.contractionDefined ∧
  A.tensorSymmetriesIdentified ∧ A.compatibilityWithMetric ∧
  A.leviCivitaConnectionExists

theorem riemannian_tensor_algebra_closed_from_evidence (A : RiemannianTensorAlgebra)
    (E : RiemannianTensorAlgebraEvidence A) : RiemannianTensorAlgebraClosed A := by
  exact And.intro E.tensorProductDefinedClosed
    (And.intro E.contractionDefinedClosed
      (And.intro E.tensorSymmetriesIdentifiedClosed
        (And.intro E.compatibilityWithMetricClosed E.leviCivitaConnectionExistsClosed)))

end DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean
end HautevilleHouse
