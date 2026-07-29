import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure MembraneTransportPackage where
  passiveDiffusion : Prop
  facilitatedDiffusion : Prop
  activeTransport : Prop
  ionChannelGating : Prop
  vesicularTrafficking : Prop

structure MembraneTransportEvidence (T : MembraneTransportPackage) where
  passiveDiffusionClosed : T.passiveDiffusion
  facilitatedDiffusionClosed : T.facilitatedDiffusion
  activeTransportClosed : T.activeTransport
  ionChannelGatingClosed : T.ionChannelGating
  vesicularTraffickingClosed : T.vesicularTrafficking

def MembraneTransportClosed (T : MembraneTransportPackage) : Prop :=
  T.passiveDiffusion ∧ T.facilitatedDiffusion ∧
  T.activeTransport ∧ T.ionChannelGating ∧ T.vesicularTrafficking

theorem membrane_transport_closed_from_evidence (T : MembraneTransportPackage) (E : MembraneTransportEvidence T) : MembraneTransportClosed T := by
  exact And.intro E.passiveDiffusionClosed
    (And.intro E.facilitatedDiffusionClosed
      (And.intro E.activeTransportClosed
        (And.intro E.ionChannelGatingClosed E.vesicularTraffickingClosed)))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse