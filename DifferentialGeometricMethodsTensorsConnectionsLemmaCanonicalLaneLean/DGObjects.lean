import canonicalLaneMathlib.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure DGOperator where
  carrier : Type
  topology : TopologicalSpace carrier

structure DGAdmittedObject where
  space : DGOperator
  closedManifold : Prop
  metric : Prop
  connection : Prop
  curvatureTensor : Type
  curvatureExpression : curvatureTensor → Prop
  conclusion : curvatureExpression

def DGWitnessClosed (O : DGAdmittedObject) : Prop :=
  O.curvatureExpression

end DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean
end HautevilleHouse
