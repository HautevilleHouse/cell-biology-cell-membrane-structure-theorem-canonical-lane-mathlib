import HautevilleHouse.CellBiologyCellMembraneStructureTheoremCanonicalLaneLean.LipidBilayerStructure

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure FluidMosaicModelPackage {L : LipidBilayerPackage} where
  proteinMobility : Prop
  lipidRafts : Prop
  membraneFusion : Prop
  signalingPlatform : Prop

structure FluidMosaicModelEvidence {L : LipidBilayerPackage} (F : FluidMosaicModelPackage L) where
  proteinMobilityClosed : F.proteinMobility
  lipidRaftsClosed : F.lipidRafts
  membraneFusionClosed : F.membraneFusion
  signalingPlatformClosed : F.signalingPlatform

def FluidMosaicModelClosed {L : LipidBilayerPackage} (F : FluidMosaicModelPackage L) : Prop :=
  F.proteinMobility ∧ F.lipidRafts ∧ F.membraneFusion ∧ F.signalingPlatform

theorem fluid_mosaic_model_closed_from_evidence
    {L : LipidBilayerPackage} (F : FluidMosaicModelPackage L) (E : FluidMosaicModelEvidence F) :
    FluidMosaicModelClosed F := by
  exact And.intro E.proteinMobilityClosed
    (And.intro E.lipidRaftsClosed
      (And.intro E.membraneFusionClosed E.signalingPlatformClosed))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse