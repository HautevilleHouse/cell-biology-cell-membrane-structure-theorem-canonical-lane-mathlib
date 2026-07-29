import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure PhospholipidBilayerPackage where
  lipidBilayerFormation : Prop
  hydrophobicEffect : Prop
  fluidMosaicModel : Prop
  selfSealingProperty : Prop

structure PhospholipidBilayerEvidence (P : PhospholipidBilayerPackage) where
  lipidBilayerFormationClosed : P.lipidBilayerFormation
  hydrophobicEffectClosed : P.hydrophobicEffect
  fluidMosaicModelClosed : P.fluidMosaicModel
  selfSealingPropertyClosed : P.selfSealingProperty

def PhospholipidBilayerClosed (P : PhospholipidBilayerPackage) : Prop :=
  P.lipidBilayerFormation ∧ P.hydrophobicEffect ∧ P.fluidMosaicModel ∧ P.selfSealingProperty

theorem phospholipid_bilayer_closed_from_evidence (P : PhospholipidBilayerPackage) (E : PhospholipidBilayerEvidence P) : PhospholipidBilayerClosed P := by
  exact And.intro E.lipidBilayerFormationClosed (And.intro E.hydrophobicEffectClosed (And.intro E.fluidMosaicModelClosed E.selfSealingPropertyClosed))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse