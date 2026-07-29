import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure TransportMechanismsPackage where
  passiveDiffusion : Prop
  facilitatedDiffusion : Prop
  activeTransport : Prop
  endocytosis : Prop
  exocytosis : Prop
  ionChannels : Prop

structure TransportMechanismsEvidence (T : TransportMechanismsPackage) where
  passiveDiffusionClosed : T.passiveDiffusion
  facilitatedDiffusionClosed : T.facilitatedDiffusion
  activeTransportClosed : T.activeTransport
  endocytosisClosed : T.endocytosis
  exocytosisClosed : T.exocytosis
  ionChannelsClosed : T.ionChannels

def TransportMechanismsClosed (T : TransportMechanismsPackage) : Prop :=
  T.passiveDiffusion ∧ T.facilitatedDiffusion ∧ T.activeTransport ∧
  T.endocytosis ∧ T.exocytosis ∧ T.ionChannels

theorem transport_mechanisms_closed_from_evidence (T : TransportMechanismsPackage)
    (E : TransportMechanismsEvidence T) : TransportMechanismsClosed T := by
  exact And.intro E.passiveDiffusionClosed
    (And.intro E.facilitatedDiffusionClosed
      (And.intro E.activeTransportClosed
        (And.intro E.endocytosisClosed
          (And.intro E.exocytosisClosed E.ionChannelsClosed))))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse