import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean

structure RiemannCurvaturePackage where
  leviCivitaConnection : Type u
  riemannCurvatureTensor : Type v
  ricciCurvatureTensor : Type w
  scalarCurvature : Type x
  curvatureIdentities : Prop
  symmetricProperties : Prop
  bianchiIdentities : Prop
  metricCompatibility : Prop

structure RiemannCurvatureEvidence (G : RiemannCurvaturePackage) where
  curvatureIdentitiesClosed : G.curvatureIdentities
  symmetricPropertiesClosed : G.symmetricProperties
  bianchiIdentitiesClosed : G.bianchiIdentities
  metricCompatibilityClosed : G.metricCompatibility

def RiemannCurvatureClosed (G : RiemannCurvaturePackage) : Prop :=
  G.curvatureIdentities ∧ G.symmetricProperties ∧ G.bianchiIdentities ∧ G.metricCompatibility

theorem riemann_curvature_closed_from_evidence
    (G : RiemannCurvaturePackage) (E : RiemannCurvatureEvidence G) :
    RiemannCurvatureClosed G := by
  exact And.intro E.curvatureIdentitiesClosed
    (And.intro E.symmetricPropertiesClosed
      (And.intro E.bianchiIdentitiesClosed E.metricCompatibilityClosed))

end DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean
end HautevilleHouse