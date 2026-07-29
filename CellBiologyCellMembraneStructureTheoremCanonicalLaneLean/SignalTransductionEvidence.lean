import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellMembraneStructureTheoremCanonicalLaneLean.MembraneStructureObjects

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure SignalTransductionEvidence where
  receptorBindingClosed : Prop
  signalCascadeClosed : Prop
  cellularResponseClosed : Prop

def SignalTransductionClosed (E : SignalTransductionEvidence) : Prop :=
  E.receptorBindingClosed ∧ E.signalCascadeClosed ∧ E.cellularResponseClosed

theorem signal_transduction_closed_from_evidence (E : SignalTransductionEvidence) : SignalTransductionClosed E :=
  And.intro E.receptorBindingClosed (And.intro E.signalCascadeClosed E.cellularResponseClosed)

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse