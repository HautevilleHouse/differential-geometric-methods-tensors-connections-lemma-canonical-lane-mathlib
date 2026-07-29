import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean

structure LeviCivitaBianchiPackage {G : RiemannianCurvaturePackage}
    (C : ConnectionPackage G) where
  leviCivitaTheorem : Prop
  firstBianchiIdentity : Prop
  secondBianchiIdentity : Prop

structure LeviCivitaBianchiEvidence {G : RiemannianCurvaturePackage}
    {C : ConnectionPackage G} (L : LeviCivitaBianchiPackage C) where
  leviCivitaClosed : L.leviCivitaTheorem
  firstBianchiClosed : L.firstBianchiIdentity
  secondBianchiClosed : L.secondBianchiIdentity

def LeviCivitaBianchiClosed {G : RiemannianCurvaturePackage}
    {C : ConnectionPackage G} (L : LeviCivitaBianchiPackage C) : Prop :=
  L.leviCivitaTheorem ∧ L.firstBianchiIdentity ∧ L.secondBianchiIdentity

theorem levi_civita_bianchi_closed_from_evidence
    {G : RiemannianCurvaturePackage} {C : ConnectionPackage G}
    (L : LeviCivitaBianchiPackage C) (E : LeviCivitaBianchiEvidence L) :
    LeviCivitaBianchiClosed L := by
  exact And.intro E.leviCivitaClosed (And.intro E.firstBianchiClosed E.secondBianchiClosed)

end DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean
end HautevilleHouse
