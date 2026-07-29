import canonicalLaneMathlib.TensorAlgebra

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean

structure ConnectionTheoryPackage {O : DGAdmittedObject} (T : TensorAlgebraPackage O) where
  parallelTransport : Prop
  holonomyGroup : Prop
  amtmannHitchinTheorem : Prop
  gaugeGroupAction : Prop
  topologicalClassification : Prop

def ConnectionTheoryClosed {O : DGAdmittedObject} {T : TensorAlgebraPackage O} (C : ConnectionTheoryPackage T) : Prop :=
  C.parallelTransport ∧ C.holonomyGroup ∧ C.amtmannHitchinTheorem ∧ C.gaugeGroupAction ∧ C.topologicalClassification

end DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean
end HautevilleHouse
