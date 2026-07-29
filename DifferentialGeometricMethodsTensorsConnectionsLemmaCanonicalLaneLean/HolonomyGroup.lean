import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean

structure HolonomyGroup where
  baseManifold : Type u
  connection : Type v
  holonomyGroup : Type w
  holonomyLieSubgroup : Prop
  riemannianHolonomyClassification : Prop
  deRhamDecomposition : Prop
  bergerListClassified : Prop
  holonomyInvariantSubspaces : Prop

structure HolonomyGroupEvidence (H : HolonomyGroup) where
  holonomyLieSubgroupClosed : H.holonomyLieSubgroup
  riemannianHolonomyClassificationClosed : H.riemannianHolonomyClassification
  deRhamDecompositionClosed : H.deRhamDecomposition
  bergerListClassifiedClosed : H.bergerListClassified
  holonomyInvariantSubspacesClosed : H.holonomyInvariantSubspaces

def HolonomyGroupClosed (H : HolonomyGroup) : Prop :=
  H.holonomyLieSubgroup ∧ H.riemannianHolonomyClassification ∧
  H.deRhamDecomposition ∧ H.bergerListClassified ∧
  H.holonomyInvariantSubspaces

theorem holonomy_group_closed_from_evidence (H : HolonomyGroup)
    (E : HolonomyGroupEvidence H) : HolonomyGroupClosed H := by
  exact And.intro E.holonomyLieSubgroupClosed
    (And.intro E.riemannianHolonomyClassificationClosed
      (And.intro E.deRhamDecompositionClosed
        (And.intro E.bergerListClassifiedClosed E.holonomyInvariantSubspacesClosed)))

end DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean
end HautevilleHouse
