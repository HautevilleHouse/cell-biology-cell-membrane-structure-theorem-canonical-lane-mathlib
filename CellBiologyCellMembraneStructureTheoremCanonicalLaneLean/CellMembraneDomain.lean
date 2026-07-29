import canonicalLaneMathlib.AdmissibleClass

/-!
# Cell Membrane Domain Package
Defines the basic structure of a cell membrane: phospholipid bilayer, proteins, cholesterol, etc.
-/

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure PhospholipidBilayer where
  hydrophilicHeads : Prop
  hydrophobicTails : Prop
  selfAssembly : Prop
  selectivePermeability : Prop

structure MembraneProteins where
  integralProteins : Prop
  peripheralProteins : Prop
  transmembraneDomains : Prop
  receptorSites : Prop

structure CholesterolContent where
  fluidityModulation : Prop
  membraneStability : Prop

structure CellMembraneDomainPackage where
  bilayer : PhospholipidBilayer
  proteins : MembraneProteins
  cholesterol : CholesterolContent
  asymmetry : Prop
  fluidMosaicCharacteristic : Prop

structure CellMembraneDomainEvidence (P : CellMembraneDomainPackage) where
  bilayerClosed : P.bilayer.selfAssembly ∧ P.bilayer.selectivePermeability
  proteinsClosed : P.proteins.integralProteins ∧ P.proteins.peripheralProteins
  cholesterolClosed : P.cholesterol.fluidityModulation ∧ P.cholesterol.membraneStability
  asymmetryClosed : P.asymmetry
  fluidMosaicClosed : P.fluidMosaicCharacteristic

def CellMembraneDomainClosed (P : CellMembraneDomainPackage) : Prop :=
  (P.bilayer.selfAssembly ∧ P.bilayer.selectivePermeability) ∧
  (P.proteins.integralProteins ∧ P.proteins.peripheralProteins) ∧
  (P.cholesterol.fluidityModulation ∧ P.cholesterol.membraneStability) ∧
  P.asymmetry ∧ P.fluidMosaicCharacteristic

theorem cell_membrane_domain_closed_from_evidence (P : CellMembraneDomainPackage) (E : CellMembraneDomainEvidence P) : CellMembraneDomainClosed P :=
  And.intro E.bilayerClosed (And.intro E.proteinsClosed (And.intro E.cholesterolClosed (And.intro E.asymmetryClosed E.fluidMosaicClosed)))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse