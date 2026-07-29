import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean

structure CurvatureInvariant where
  sectionalCurvatureDefined : Prop
  ricciCurvatureDefined : Prop
  scalarCurvatureDefined : Prop
  eulerCharacteristicFromCurvature : Prop
  chernClassesDefined : Prop
  chernWeilHomomorphismDefined : Prop
  curvatureInvariantCalculated : Prop

structure CurvatureInvariantEvidence (I : CurvatureInvariant) where
  sectionalCurvatureDefinedClosed : I.sectionalCurvatureDefined
  ricciCurvatureDefinedClosed : I.ricciCurvatureDefined
  scalarCurvatureDefinedClosed : I.scalarCurvatureDefined
  eulerCharacteristicFromCurvatureClosed : I.eulerCharacteristicFromCurvature
  chernClassesDefinedClosed : I.chernClassesDefined
  chernWeilHomomorphismDefinedClosed : I.chernWeilHomomorphismDefined
  curvatureInvariantCalculatedClosed : I.curvatureInvariantCalculated

def CurvatureInvariantClosed (I : CurvatureInvariant) : Prop :=
  I.sectionalCurvatureDefined ∧ I.ricciCurvatureDefined ∧
  I.scalarCurvatureDefined ∧ I.eulerCharacteristicFromCurvature ∧
  I.chernClassesDefined ∧ I.chernWeilHomomorphismDefined ∧
  I.curvatureInvariantCalculated

theorem curvature_invariant_closed_from_evidence (I : CurvatureInvariant)
    (E : CurvatureInvariantEvidence I) : CurvatureInvariantClosed I := by
  exact And.intro E.sectionalCurvatureDefinedClosed
    (And.intro E.ricciCurvatureDefinedClosed
      (And.intro E.scalarCurvatureDefinedClosed
        (And.intro E.eulerCharacteristicFromCurvatureClosed
          (And.intro E.chernClassesDefinedClosed
            (And.intro E.chernWeilHomomorphismDefinedClosed
              E.curvatureInvariantCalculatedClosed)))))

end DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean
end HautevilleHouse
