import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean

structure TensorConnectionPackage where
  connectionType : Type u
  covariantDerivative : Type v
  parallelTransport : Type w
  curvatureInvariants : Prop
  torsionTensor : Prop
  metricCompatibility : Prop

structure TensorConnectionEvidence (P : TensorConnectionPackage) where
  connectionTypeDefined : True
  covariantDerivativeDefined : True
  parallelTransportDefined : True
  curvatureInvariantsClosed : P.curvatureInvariants
  torsionTensorClosed : P.torsionTensor
  metricCompatibilityClosed : P.metricCompatibility

def TensorConnectionClosed (P : TensorConnectionPackage) : Prop :=
  P.curvatureInvariants ∧ P.torsionTensor ∧ P.metricCompatibility

theorem tensor_connection_closed_from_evidence (P : TensorConnectionPackage) (E : TensorConnectionEvidence P) : TensorConnectionClosed P := by
  exact And.intro E.curvatureInvariantsClosed (And.intro E.torsionTensorClosed E.metricCompatibilityClosed)

end DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean
end HautevilleHouse