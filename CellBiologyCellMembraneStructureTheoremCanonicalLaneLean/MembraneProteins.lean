import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure MembraneProteinsPackage where
  integralProteins : Prop
  peripheralProteins : Prop
  glycocalyxComponents : Prop
  cytoskeletonAttachment : Prop

structure MembraneProteinsEvidence (M : MembraneProteinsPackage) where
  integralProteinsClosed : M.integralProteins
  peripheralProteinsClosed : M.peripheralProteins
  glycocalyxComponentsClosed : M.glycocalyxComponents
  cytoskeletonAttachmentClosed : M.cytoskeletonAttachment

def MembraneProteinsClosed (M : MembraneProteinsPackage) : Prop :=
  M.integralProteins ∧ M.peripheralProteins ∧ M.glycocalyxComponents ∧ M.cytoskeletonAttachment

theorem membrane_proteins_closed_from_evidence (M : MembraneProteinsPackage) (E : MembraneProteinsEvidence M) : MembraneProteinsClosed M := by
  exact And.intro E.integralProteinsClosed (And.intro E.peripheralProteinsClosed (And.intro E.glycocalyxComponentsClosed E.cytoskeletonAttachmentClosed))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse