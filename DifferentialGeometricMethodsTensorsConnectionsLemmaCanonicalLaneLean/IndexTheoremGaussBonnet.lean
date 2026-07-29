import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean

structure IndexTheoremPackage where
  manifold : Type u
  vectorBundle : Type v
  ellipticOperator : Type w
  analyticIndex : Type x
  topologicalIndex : Type y
  indexEquality : Prop
  chernWeilForms : Prop
  characteristicClasses : Prop

structure IndexTheoremEvidence (P : IndexTheoremPackage) where
  manifoldDefined : True
  vectorBundleDefined : True
  ellipticOperatorDefined : True
  analyticIndexDefined : True
  topologicalIndexDefined : True
  indexEqualityClosed : P.indexEquality
  chernWeilFormsClosed : P.chernWeilForms
  characteristicClassesClosed : P.characteristicClasses

def IndexTheoremClosed (P : IndexTheoremPackage) : Prop :=
  P.indexEquality ∧ P.chernWeilForms ∧ P.characteristicClasses

theorem index_theorem_closed_from_evidence (P : IndexTheoremPackage) (E : IndexTheoremEvidence P) : IndexTheoremClosed P := by
  exact And.intro E.indexEqualityClosed (And.intro E.chernWeilFormsClosed E.characteristicClassesClosed)

end DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean
end HautevilleHouse