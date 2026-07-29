import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellMembraneStructureTheoremCanonicalLaneLean.MembraneStructureObjects

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure FluidMosaicEvidence where
  lipidBilayerClosed : Prop
  proteinMobilityClosed : Prop
  asymmetryClosed : Prop

def FluidMosaicClosed (E : FluidMosaicEvidence) : Prop :=
  E.lipidBilayerClosed ∧ E.proteinMobilityClosed ∧ E.asymmetryClosed

theorem fluid_mosaic_closed_from_evidence (E : FluidMosaicEvidence) : FluidMosaicClosed E :=
  And.intro E.lipidBilayerClosed (And.intro E.proteinMobilityClosed E.asymmetryClosed)

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse