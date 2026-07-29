import canonicalLaneMathlib.DGObjects

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean

structure TensorAlgebraPackage (O : DGAdmittedObject) where
  covariantDerivative : Prop
  curvatureOperator : Prop
  torsionOperator : Prop
  ricciIdentities : Prop
  bianchiIdentities : Prop

def TensorAlgebraClosed (O : DGAdmittedObject) (T : TensorAlgebraPackage O) : Prop :=
  T.covariantDerivative ∧ T.curvatureOperator ∧ T.torsionOperator ∧ T.ricciIdentities ∧ T.bianchiIdentities

end DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean
end HautevilleHouse
