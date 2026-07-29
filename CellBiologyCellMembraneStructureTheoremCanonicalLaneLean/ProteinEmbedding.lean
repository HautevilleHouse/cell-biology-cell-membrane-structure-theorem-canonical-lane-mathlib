import CellBiologyCellMembraneStructureTheoremCanonicalLaneLean.LipidBilayer

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure ProteinEmbeddingPackage where
  integralProteins : Prop
  peripheralProteins : Prop
  receptorBinding : Prop
  signalTransduction : Prop

structure ProteinEmbeddingEvidence (P : ProteinEmbeddingPackage) where
  integralProteinsClosed : P.integralProteins
  peripheralProteinsClosed : P.peripheralProteins
  receptorBindingClosed : P.receptorBinding
  signalTransductionClosed : P.signalTransduction

def ProteinEmbeddingClosed (P : ProteinEmbeddingPackage) : Prop :=
  P.integralProteins ∧ P.peripheralProteins ∧ P.receptorBinding ∧ P.signalTransduction

theorem protein_embedding_closed_from_evidence (P : ProteinEmbeddingPackage) (E : ProteinEmbeddingEvidence P) :
    ProteinEmbeddingClosed P := by
  exact And.intro E.integralProteinsClosed (And.intro E.peripheralProteinsClosed (And.intro E.receptorBindingClosed E.signalTransductionClosed))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse