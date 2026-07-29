import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure TransportAcrossMembranePackage where
  passiveTransport : Prop
  activeTransport : Prop
  facilitatedDiffusion : Prop
  ionChannel : Type u
  carrierProtein : Type v
  sodiumPotassiumPump : Prop
  endocytosisExocytosis : Prop
  transportRateControl : Prop

structure TransportAcrossMembraneEvidence (T : TransportAcrossMembranePackage) where
  passiveTransportClosed : T.passiveTransport
  activeTransportClosed : T.activeTransport
  facilitatedDiffusionClosed : T.facilitatedDiffusion
  sodiumPotassiumPumpClosed : T.sodiumPotassiumPump
  endocytosisExocytosisClosed : T.endocytosisExocytosis
  transportRateControlClosed : T.transportRateControl

def TransportAcrossMembraneClosed (T : TransportAcrossMembranePackage) : Prop :=
  T.passiveTransport ∧ T.activeTransport ∧
  T.facilitatedDiffusion ∧ T.sodiumPotassiumPump ∧
  T.endocytosisExocytosis ∧ T.transportRateControl

theorem transport_across_membrane_closed_from_evidence
    (T : TransportAcrossMembranePackage) (E : TransportAcrossMembraneEvidence T) :
    TransportAcrossMembraneClosed T := by
  exact And.intro E.passiveTransportClosed
    (And.intro E.activeTransportClosed
      (And.intro E.facilitatedDiffusionClosed
        (And.intro E.sodiumPotassiumPumpClosed
          (And.intro E.endocytosisExocytosisClosed E.transportRateControlClosed))))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse