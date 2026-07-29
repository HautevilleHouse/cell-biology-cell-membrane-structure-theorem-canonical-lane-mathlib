import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure MembraneStructurePackage where
  phospholipidBilayer : Prop
  integralProteins : Prop
  peripheralProteins : Prop
  glycocalyx : Prop
  fluidityRegulation : Prop
  selectivePermeability : Prop

structure MembraneStructureEvidence (M : MembraneStructurePackage) where
  phospholipidBilayerClosed : M.phospholipidBilayer
  integralProteinsClosed : M.integralProteins
  peripheralProteinsClosed : M.peripheralProteins
  glycocalyxClosed : M.glycocalyx
  fluidityRegulationClosed : M.fluidityRegulation
  selectivePermeabilityClosed : M.selectivePermeability

def MembraneStructureClosed (M : MembraneStructurePackage) : Prop :=
  M.phospholipidBilayer ∧ M.integralProteins ∧ M.peripheralProteins ∧
  M.glycocalyx ∧ M.fluidityRegulation ∧ M.selectivePermeability

theorem membrane_structure_closed_from_evidence (M : MembraneStructurePackage)
    (E : MembraneStructureEvidence M) : MembraneStructureClosed M := by
  exact And.intro E.phospholipidBilayerClosed
    (And.intro E.integralProteinsClosed
      (And.intro E.peripheralProteinsClosed
        (And.intro E.glycocalyxClosed
          (And.intro E.fluidityRegulationClosed E.selectivePermeabilityClosed))))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse