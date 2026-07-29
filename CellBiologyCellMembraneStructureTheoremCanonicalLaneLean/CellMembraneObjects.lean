import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure CellMembraneSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CellMembraneComponent where
  name : String
  structure : Prop
  function : Prop

default instance : Inhabited CellMembraneComponent := ⟨{ name := "lipid", structure := True, function := True }⟩

structure CellMembraneAdmittedObject where
  space : CellMembraneSpace
  lipidBilayer : Prop
  membraneProteins : Prop
  fluidMosaicModel : Prop
  conclusion : fluidMosaicModel

structure CellMembraneEndgameState where
  object : CellMembraneAdmittedObject

def CellMembraneWitnessClosed (O : CellMembraneAdmittedObject) : Prop :=
  O.fluidMosaicModel

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse