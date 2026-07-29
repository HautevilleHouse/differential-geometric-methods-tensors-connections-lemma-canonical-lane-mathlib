import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean

structure LeviCivitaPackage where
  metric : Type u
  connection : Type v
  torsionFree : Prop
  metricCompatible : Prop
  uniqueExistence : Prop

structure LeviCivitaEvidence (P : LeviCivitaPackage) where
  metricDefined : True
  connectionDefined : True
  torsionFreeClosed : P.torsionFree
  metricCompatibleClosed : P.metricCompatible
  uniqueExistenceClosed : P.uniqueExistence

def LeviCivitaClosed (P : LeviCivitaPackage) : Prop :=
  P.torsionFree ∧ P.metricCompatible ∧ P.uniqueExistence

theorem levi_civita_closed_from_evidence (P : LeviCivitaPackage) (E : LeviCivitaEvidence P) : LeviCivitaClosed P := by
  exact And.intro E.torsionFreeClosed (And.intro E.metricCompatibleClosed E.uniqueExistenceClosed)

end DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean
end HautevilleHouse