import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure LipidRaftAssemblyPackage (L : LipidBilayerPackage)
    (F : MembraneFluidityPackage L) where
  sphingolipidCholesterolDomains : Prop
  orderedPhase : Prop
  proteinRecruitment : Prop
  signalingPlatform : Prop

structure LipidRaftAssemblyEvidence {L : LipidBilayerPackage}
    {F : MembraneFluidityPackage L} (R : LipidRaftAssemblyPackage L F) where
  sphingolipidCholesterolDomainsClosed : R.sphingolipidCholesterolDomains
  orderedPhaseClosed : R.orderedPhase
  proteinRecruitmentClosed : R.proteinRecruitment
  signalingPlatformClosed : R.signalingPlatform

def LipidRaftAssemblyClosed {L : LipidBilayerPackage}
    {F : MembraneFluidityPackage L} (R : LipidRaftAssemblyPackage L F) : Prop :=
  R.sphingolipidCholesterolDomains ∧ R.orderedPhase ∧
  R.proteinRecruitment ∧ R.signalingPlatform

theorem lipid_raft_assembly_closed_from_evidence
    {L : LipidBilayerPackage} {F : MembraneFluidityPackage L}
    (R : LipidRaftAssemblyPackage L F)
    (E : LipidRaftAssemblyEvidence R) : LipidRaftAssemblyClosed R := by
  exact And.intro E.sphingolipidCholesterolDomainsClosed
    (And.intro E.orderedPhaseClosed
      (And.intro E.proteinRecruitmentClosed E.signalingPlatformClosed))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse