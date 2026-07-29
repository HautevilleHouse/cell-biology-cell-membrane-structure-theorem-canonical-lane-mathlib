import CellBiologyCellMembraneStructureTheoremCanonicalLaneLean.CellMembraneObjects

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure MembraneIntegrityPackage where
  lipidBilayerIntegrity : Prop
  proteinEmbeddingStability : Prop
  permeabilityControl : Prop
  fluidityMaintained : Prop

structure MembraneIntegrityEvidence (N : MembraneIntegrityPackage) where
  lipidBilayerIntegrityClosed : N.lipidBilayerIntegrity
  proteinEmbeddingStabilityClosed : N.proteinEmbeddingStability
  permeabilityControlClosed : N.permeabilityControl
  fluidityMaintainedClosed : N.fluidityMaintained

def MembraneIntegrityClosed (N : MembraneIntegrityPackage) : Prop :=
  N.lipidBilayerIntegrity ∧ N.proteinEmbeddingStability ∧
  N.permeabilityControl ∧ N.fluidityMaintained

theorem membrane_integrity_closed_from_evidence
    (N : MembraneIntegrityPackage) (E : MembraneIntegrityEvidence N) :
    MembraneIntegrityClosed N := by
  exact And.intro E.lipidBilayerIntegrityClosed
    (And.intro E.proteinEmbeddingStabilityClosed
      (And.intro E.permeabilityControlClosed E.fluidityMaintainedClosed))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse