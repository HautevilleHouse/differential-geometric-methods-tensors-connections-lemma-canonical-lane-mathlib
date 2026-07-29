import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean

structure IndexTheorem where
  ellipticOperator : Type u
  topologicalIndex : Type v
  analyticIndex : Type w
  indexEquality : Prop
  chernCharacterDefined : Prop
  toddClassDefined : Prop
  atiyahSingerTheoremHolds : Prop
  diracOperatorIndex : Prop
  signatureOperatorIndex : Prop
  eulerCharacteristicFromIndex : Prop

structure IndexTheoremEvidence (I : IndexTheorem) where
  indexEqualityClosed : I.indexEquality
  chernCharacterDefinedClosed : I.chernCharacterDefined
  toddClassDefinedClosed : I.toddClassDefined
  atiyahSingerTheoremHoldsClosed : I.atiyahSingerTheoremHolds
  diracOperatorIndexClosed : I.diracOperatorIndex
  signatureOperatorIndexClosed : I.signatureOperatorIndex
  eulerCharacteristicFromIndexClosed : I.eulerCharacteristicFromIndex

def IndexTheoremClosed (I : IndexTheorem) : Prop :=
  I.indexEquality ∧ I.chernCharacterDefined ∧
  I.toddClassDefined ∧ I.atiyahSingerTheoremHolds ∧
  I.diracOperatorIndex ∧ I.signatureOperatorIndex ∧
  I.eulerCharacteristicFromIndex

theorem index_theorem_closed_from_evidence (I : IndexTheorem)
    (E : IndexTheoremEvidence I) : IndexTheoremClosed I := by
  exact And.intro E.indexEqualityClosed
    (And.intro E.chernCharacterDefinedClosed
      (And.intro E.toddClassDefinedClosed
        (And.intro E.atiyahSingerTheoremHoldsClosed
          (And.intro E.diracOperatorIndexClosed
            (And.intro E.signatureOperatorIndexClosed
              E.eulerCharacteristicFromIndexClosed)))))

end DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean
end HautevilleHouse
