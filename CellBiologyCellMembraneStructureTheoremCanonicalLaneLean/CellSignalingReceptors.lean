import CellBiologyCellMembraneStructureTheoremCanonicalLaneLean.MembraneTransport

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure CellSignalingReceptorPackage where
  receptorTypes : Prop
  ligandBinding : Prop
  conformationalChange : Prop
  signalCascadeInitiation : Prop

structure CellSignalingReceptorEvidence (R : CellSignalingReceptorPackage) where
  receptorTypesClosed : R.receptorTypes
  ligandBindingClosed : R.ligandBinding
  conformationalChangeClosed : R.conformationalChange
  signalCascadeInitiationClosed : R.signalCascadeInitiation

def CellSignalingReceptorClosed (R : CellSignalingReceptorPackage) : Prop :=
  R.receptorTypes ∧ R.ligandBinding ∧ R.conformationalChange ∧ R.signalCascadeInitiation

theorem cell_signaling_receptor_closed_from_evidence (R : CellSignalingReceptorPackage) (E : CellSignalingReceptorEvidence R) :
    CellSignalingReceptorClosed R := by
  exact And.intro E.receptorTypesClosed (And.intro E.ligandBindingClosed (And.intro E.conformationalChangeClosed E.signalCascadeInitiationClosed))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse