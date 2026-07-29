import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure LipidBilayerPackage where
  hydrophobicTailRegion : Prop
  hydrophilicHeadRegion : Prop
  selfAssembly : Prop
  fluidity : Prop

structure LipidBilayerEvidence (L : LipidBilayerPackage) where
  hydrophobicTailRegionClosed : L.hydrophobicTailRegion
  hydrophilicHeadRegionClosed : L.hydrophilicHeadRegion
  selfAssemblyClosed : L.selfAssembly
  fluidityClosed : L.fluidity

def LipidBilayerClosed (L : LipidBilayerPackage) : Prop :=
  L.hydrophobicTailRegion ∧ L.hydrophilicHeadRegion ∧
  L.selfAssembly ∧ L.fluidity

theorem lipid_bilayer_closed_from_evidence (L : LipidBilayerPackage)
    (E : LipidBilayerEvidence L) : LipidBilayerClosed L := by
  exact And.intro E.hydrophobicTailRegionClosed
    (And.intro E.hydrophilicHeadRegionClosed
      (And.intro E.selfAssemblyClosed E.fluidityClosed))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse