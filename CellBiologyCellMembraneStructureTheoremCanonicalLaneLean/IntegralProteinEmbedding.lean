import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure IntegralProteinEmbeddingPackage where
  transmembraneDomain : Prop
  membraneTopology : Prop
  hydrophobicMatching : Prop
  lateralAssociation : Prop
  lipidAnnulus : Prop

structure IntegralProteinEmbeddingEvidence (P : IntegralProteinEmbeddingPackage) where
  transmembraneDomainClosed : P.transmembraneDomain
  membraneTopologyClosed : P.membraneTopology
  hydrophobicMatchingClosed : P.hydrophobicMatching
  lateralAssociationClosed : P.lateralAssociation
  lipidAnnulusClosed : P.lipidAnnulus

def IntegralProteinEmbeddingClosed (P : IntegralProteinEmbeddingPackage) : Prop :=
  P.transmembraneDomain ∧ P.membraneTopology ∧
  P.hydrophobicMatching ∧ P.lateralAssociation ∧ P.lipidAnnulus

theorem integral_protein_embedding_closed_from_evidence (P : IntegralProteinEmbeddingPackage) (E : IntegralProteinEmbeddingEvidence P) : IntegralProteinEmbeddingClosed P := by
  exact And.intro E.transmembraneDomainClosed
    (And.intro E.membraneTopologyClosed
      (And.intro E.hydrophobicMatchingClosed
        (And.intro E.lateralAssociationClosed E.lipidAnnulusClosed)))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse