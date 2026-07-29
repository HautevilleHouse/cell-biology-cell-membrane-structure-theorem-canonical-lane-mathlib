import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure MembraneSpace where
  carrier : Type
  membraneTopology : TopologicalSpace carrier

structure MembraneAdmittedObject where
  space : MembraneSpace
  lipidBilayerPresent : Prop
  proteinEmbedding : Prop
  transportFunction : Prop
  signalingPathway : Prop
  conclusion : lipidBilayerPresent ∧ proteinEmbedding ∧ transportFunction ∧ signalingPathway

def MembraneWitnessClosed (O : MembraneAdmittedObject) : Prop :=
  O.conclusion

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse