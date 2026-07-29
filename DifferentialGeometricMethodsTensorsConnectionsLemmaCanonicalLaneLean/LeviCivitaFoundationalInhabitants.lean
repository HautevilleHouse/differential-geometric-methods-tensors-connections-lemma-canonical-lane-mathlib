import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean

structure LeviCivitaFoundationalInhabitants where
  metricCompatibility : Prop
  torsionFreeCondition : Prop
  christoffelSymbolsConstructed : Prop
  koszulFormulaDerived : Prop
  leviCivitaUniqueness : Prop
  metricCompatibilityTerm : metricCompatibility
  torsionFreeConditionTerm : torsionFreeCondition
  christoffelSymbolsConstructedTerm : christoffelSymbolsConstructed
  koszulFormulaDerivedTerm : koszulFormulaDerived
  leviCivitaUniquenessTerm : leviCivitaUniqueness

def LeviCivitaFoundationalInhabitants.toAnalyticProofCertificate
    (T : LeviCivitaFoundationalInhabitants) : LeviCivitaAnalyticCertificate := {
  metricCompatibility := T.metricCompatibility
  torsionFreeCondition := T.torsionFreeCondition
  christoffelSymbolsConstructed := T.christoffelSymbolsConstructed
  koszulFormulaDerived := T.koszulFormulaDerived
  leviCivitaUniqueness := T.leviCivitaUniqueness
  metricCompatibilityClosed := T.metricCompatibilityTerm
  torsionFreeConditionClosed := T.torsionFreeConditionTerm
  christoffelSymbolsConstructedClosed := T.christoffelSymbolsConstructedTerm
  koszulFormulaDerivedClosed := T.koszulFormulaDerivedTerm
  leviCivitaUniquenessClosed := T.leviCivitaUniquenessTerm
}

end DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean
end HautevilleHouse