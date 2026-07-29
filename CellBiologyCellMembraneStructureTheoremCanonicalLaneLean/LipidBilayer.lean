import CellBiologyCellMembraneStructureTheoremCanonicalLaneLean.MembraneAdmittedObject

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure LipidBilayerPackage where
  phospholipids : Prop
  fluidMosaic : Prop
  selectivePermeability : Prop
  membranePotential : Prop

structure LipidBilayerEvidence (L : LipidBilayerPackage) where
  phospholipidsClosed : L.phospholipids
  fluidMosaicClosed : L.fluidMosaic
  selectivePermeabilityClosed : L.selectivePermeability
  membranePotentialClosed : L.membranePotential

def LipidBilayerClosed (L : LipidBilayerPackage) : Prop :=
  L.phospholipids ∧ L.fluidMosaic ∧ L.selectivePermeability ∧ L.membranePotential

theorem lipid_bilayer_closed_from_evidence (L : LipidBilayerPackage) (E : LipidBilayerEvidence L) :
    LipidBilayerClosed L := by
  exact And.intro E.phospholipidsClosed (And.intro E.fluidMosaicClosed (And.intro E.selectivePermeabilityClosed E.membranePotentialClosed))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse