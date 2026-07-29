import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure MembraneFluidityPackage (L : LipidBilayerPackage) where
  phaseTransitionTemperature : Prop
  unsaturatedLipids : Prop
  cholesterolContent : Prop
  membraneCurvatureSensing : Prop

structure MembraneFluidityEvidence {L : LipidBilayerPackage}
    (F : MembraneFluidityPackage L) where
  phaseTransitionTemperatureClosed : F.phaseTransitionTemperature
  unsaturatedLipidsClosed : F.unsaturatedLipids
  cholesterolContentClosed : F.cholesterolContent
  membraneCurvatureSensingClosed : F.membraneCurvatureSensing

def MembraneFluidityClosed {L : LipidBilayerPackage}
    (F : MembraneFluidityPackage L) : Prop :=
  F.phaseTransitionTemperature ∧ F.unsaturatedLipids ∧
  F.cholesterolContent ∧ F.membraneCurvatureSensing

theorem membrane_fluidity_closed_from_evidence
    {L : LipidBilayerPackage} (F : MembraneFluidityPackage L)
    (E : MembraneFluidityEvidence F) : MembraneFluidityClosed F := by
  exact And.intro E.phaseTransitionTemperatureClosed
    (And.intro E.unsaturatedLipidsClosed
      (And.intro E.cholesterolContentClosed E.membraneCurvatureSensingClosed))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse