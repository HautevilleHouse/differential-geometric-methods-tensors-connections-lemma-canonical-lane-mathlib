import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean

structure HolonomyPackage where
  principalBundle : Type u
  connection : Type v
  holonomyGroup : Type w
  parallelTransport : Type x
  reducedHolonomy : Type y
  holonomyInvariant : Prop
  holonomyAx : Prop
  curvatureHolonomyRelation : Prop
  holonomyConnected : Prop

structure HolonomyEvidence (H : HolonomyPackage) where
  holonomyInvariantClosed : H.holonomyInvariant
  holonomyAxClosed : H.holonomyAx
  curvatureHolonomyRelationClosed : H.curvatureHolonomyRelation
  holonomyConnectedClosed : H.holonomyConnected

def HolonomyClosed (H : HolonomyPackage) : Prop :=
  H.holonomyInvariant ∧ H.holonomyAx ∧ H.curvatureHolonomyRelation ∧ H.holonomyConnected

theorem holonomy_closed_from_evidence (H : HolonomyPackage) (E : HolonomyEvidence H) : HolonomyClosed H := by
  exact And.intro E.holonomyInvariantClosed (And.intro E.holonomyAxClosed (And.intro E.curvatureHolonomyRelationClosed E.holonomyConnectedClosed))

end DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean
end HautevilleHouse
