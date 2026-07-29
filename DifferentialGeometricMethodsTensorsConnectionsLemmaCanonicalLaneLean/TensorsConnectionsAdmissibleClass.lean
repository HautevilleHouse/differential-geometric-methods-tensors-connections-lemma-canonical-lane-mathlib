import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean

structure AdmissibleConnectionObject where
  baseManifold : Type u
  vectorBundle : Type v
  connection : vectorBundle → vectorBundle → vectorBundle
  curvatureOperator : (vectorBundle → vectorBundle) → (vectorBundle → vectorBundle) → (vectorBundle → vectorBundle)
  torsionFree : Prop
  metricCompatible : Prop
  conclusion : curvatureOperator ≠ λ _ _ _ => 0

structure AdmissibleClass where
  object : AdmissibleConnectionObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ConnectionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean
end HautevilleHouse
