import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean

structure ParallelTransportPackage where
  connection : Type u
  parallelTransportMap : Type v
  homotopyInvariance : Prop
  holonomyGroup : Type w
  curvatureRelation : Prop
  holonomyTheorem : Prop

structure ParallelTransportEvidence (P : ParallelTransportPackage) where
  homotopyInvarianceClosed : P.homotopyInvariance
  holonomyGroupDefined : Prop
  curvatureRelationClosed : P.curvatureRelation
  holonomyTheoremClosed : P.holonomyTheorem

def ParallelTransportClosed (P : ParallelTransportPackage) : Prop :=
  P.homotopyInvariance ∧ P.curvatureRelation ∧ P.holonomyTheorem

theorem parallel_transport_closed_from_evidence
    (P : ParallelTransportPackage) (E : ParallelTransportEvidence P) :
    ParallelTransportClosed P := by
  exact And.intro E.homotopyInvarianceClosed
    (And.intro E.curvatureRelationClosed E.holonomyTheoremClosed)

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ParallelTransportClosed (A.object : ParallelTransportPackage)

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean
end HautevilleHouse