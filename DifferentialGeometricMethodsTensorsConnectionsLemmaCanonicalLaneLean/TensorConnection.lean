import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean

structure TensorConnection where
  baseManifold : Type u
  totalSpace : Type v
  projection : totalSpace → baseManifold
  connection : Type w
  parallelTransport : connection → (Type u → Type v) → Prop
  linearConnection : Prop
  torsionFree : Prop
  metricCompatible : Prop
  curvatureFormDefined : Prop
  holonomyGroupObserved : Prop

structure TensorConnectionEvidence (C : TensorConnection) where
  linearConnectionClosed : C.linearConnection
  torsionFreeClosed : C.torsionFree
  metricCompatibleClosed : C.metricCompatible
  curvatureFormDefinedClosed : C.curvatureFormDefined
  holonomyGroupObservedClosed : C.holonomyGroupObserved

def TensorConnectionClosed (C : TensorConnection) : Prop :=
  C.linearConnection ∧ C.torsionFree ∧ C.metricCompatible ∧
  C.curvatureFormDefined ∧ C.holonomyGroupObserved

theorem tensor_connection_closed_from_evidence (C : TensorConnection)
    (E : TensorConnectionEvidence C) : TensorConnectionClosed C := by
  exact And.intro E.linearConnectionClosed
    (And.intro E.torsionFreeClosed
      (And.intro E.metricCompatibleClosed
        (And.intro E.curvatureFormDefinedClosed E.holonomyGroupObservedClosed)))

end DifferentialGeometricMethodsTensorsConnectionsLemmaCanonicalLaneLean
end HautevilleHouse
