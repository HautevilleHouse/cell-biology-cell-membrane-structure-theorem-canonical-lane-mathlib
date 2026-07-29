import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure MembraneProteinEmbeddingPackage (L : LipidBilayerPackage) where
  transmembraneDomain : Prop
  lipidAnnulus : Prop
  hydrophobicMatching : Prop
  lateralDiffusion : Prop

structure MembraneProteinEmbeddingEvidence {L : LipidBilayerPackage}
    (P : MembraneProteinEmbeddingPackage L) where
  transmembraneDomainClosed : P.transmembraneDomain
  lipidAnnulusClosed : P.lipidAnnulus
  hydrophobicMatchingClosed : P.hydrophobicMatching
  lateralDiffusionClosed : P.lateralDiffusion

def MembraneProteinEmbeddingClosed {L : LipidBilayerPackage}
    (P : MembraneProteinEmbeddingPackage L) : Prop :=
  P.transmembraneDomain ∧ P.lipidAnnulus ∧
  P.hydrophobicMatching ∧ P.lateralDiffusion

theorem membrane_protein_embedding_closed_from_evidence
    {L : LipidBilayerPackage} (P : MembraneProteinEmbeddingPackage L)
    (E : MembraneProteinEmbeddingEvidence P) : MembraneProteinEmbeddingClosed P := by
  exact And.intro E.transmembraneDomainClosed
    (And.intro E.lipidAnnulusClosed
      (And.intro E.hydrophobicMatchingClosed E.lateralDiffusionClosed))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse