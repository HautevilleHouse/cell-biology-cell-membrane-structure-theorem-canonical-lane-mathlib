import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure LipidRaftDynamicsPackage where
  sphingolipidCholesterolMicrodomain : Type u
  gangliosideGM1 : Type v
  raftMarkerProtein : Type w
  phaseSeparation : Prop
  cholesterolDepletion : Prop
  signalClusterFormation : Prop
  raftAssociatedSignaling : Prop

structure LipidRaftDynamicsEvidence (L : LipidRaftDynamicsPackage) where
  phaseSeparationClosed : L.phaseSeparation
  cholesterolDepletionClosed : L.cholesterolDepletion
  signalClusterFormationClosed : L.signalClusterFormation
  raftAssociatedSignalingClosed : L.raftAssociatedSignaling

def LipidRaftDynamicsClosed (L : LipidRaftDynamicsPackage) : Prop :=
  L.phaseSeparation ∧ L.cholesterolDepletion ∧
  L.signalClusterFormation ∧ L.raftAssociatedSignaling

theorem lipid_raft_dynamics_closed_from_evidence
    (L : LipidRaftDynamicsPackage) (E : LipidRaftDynamicsEvidence L) :
    LipidRaftDynamicsClosed L := by
  exact And.intro E.phaseSeparationClosed
    (And.intro E.cholesterolDepletionClosed
      (And.intro E.signalClusterFormationClosed E.raftAssociatedSignalingClosed))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse