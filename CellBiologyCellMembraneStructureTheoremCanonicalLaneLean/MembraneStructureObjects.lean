import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure CellMembraneData where
  carrier : Type
  lipidBilayer : Prop
  embeddedProteins : Prop
  selectivePermeability : Prop
  fluidMosaicModel : Prop

structure CellMembraneAdmittedObject where
  data : CellMembraneData
  fluidMosaicConfirmed : Prop
  transportMechanisms : Prop
  signalTransduction : Prop
  conclusion : fluidMosaicConfirmed ∧ transportMechanisms ∧ signalTransduction

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse