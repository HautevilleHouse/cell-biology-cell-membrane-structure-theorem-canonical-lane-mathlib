import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure LipidBilayerPackage where
  headgroupPolarity : Prop
  acylChainLengthDistribution : Prop
  lateralDiffusionCoefficient : Prop
  phaseTransitionTemperature : Prop
  bilayerThickness : Prop
  flipFlopRate : Prop

structure LipidBilayerEvidence (L : LipidBilayerPackage) where
  headgroupPolarityClosed : L.headgroupPolarity
  acylChainLengthDistributionClosed : L.acylChainLengthDistribution
  lateralDiffusionCoefficientClosed : L.lateralDiffusionCoefficient
  phaseTransitionTemperatureClosed : L.phaseTransitionTemperature
  bilayerThicknessClosed : L.bilayerThickness
  flipFlopRateClosed : L.flipFlopRate

def LipidBilayerClosed (L : LipidBilayerPackage) : Prop :=
  L.headgroupPolarity ∧ L.acylChainLengthDistribution ∧
  L.lateralDiffusionCoefficient ∧ L.phaseTransitionTemperature ∧
  L.bilayerThickness ∧ L.flipFlopRate

theorem lipid_bilayer_closed_from_evidence (L : LipidBilayerPackage) (E : LipidBilayerEvidence L) : LipidBilayerClosed L := by
  exact And.intro E.headgroupPolarityClosed
    (And.intro E.acylChainLengthDistributionClosed
      (And.intro E.lateralDiffusionCoefficientClosed
        (And.intro E.phaseTransitionTemperatureClosed
          (And.intro E.bilayerThicknessClosed E.flipFlopRateClosed))))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse