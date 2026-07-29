import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean

structure LeviCivitaConnectionConstruction where
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

def LeviCivitaConnectionConstruction.toFoundational
    (C : LeviCivitaConnectionConstruction) : LeviCivitaFoundationalInhabitants := {
  metricCompatibility := C.metricCompatibility
  torsionFreeCondition := C.torsionFreeCondition
  christoffelSymbolsConstructed := C.christoffelSymbolsConstructed
  koszulFormulaDerived := C.koszulFormulaDerived
  leviCivitaUniqueness := C.leviCivitaUniqueness
  metricCompatibilityTerm := C.metricCompatibilityTerm
  torsionFreeConditionTerm := C.torsionFreeConditionTerm
  christoffelSymbolsConstructedTerm := C.christoffelSymbolsConstructedTerm
  koszulFormulaDerivedTerm := C.koszulFormulaDerivedTerm
  leviCivitaUniquenessTerm := C.leviCivitaUniquenessTerm
}

end DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean
end HautevilleHouse