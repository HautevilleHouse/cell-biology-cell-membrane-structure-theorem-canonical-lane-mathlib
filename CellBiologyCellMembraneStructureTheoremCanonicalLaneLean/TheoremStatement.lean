import CellBiologyCellMembraneStructureTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure CellMembraneSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CellMembraneAdmittedObject where
  space : CellMembraneSpace
  lipidBilayerStructure : Prop
  proteinMosaicEmbedded : Prop
  fluidMosaicModel : Prop
  conclusion : fluidMosaicModel

def CellMembraneWitnessClosed (O : CellMembraneAdmittedObject) : Prop :=
  O.fluidMosaicModel

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse
