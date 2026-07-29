import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CellBiologyCellMembraneStructureTheoremCanonicalLaneLean.MembraneStructureObjects

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure TransportMechanismsEvidence where
  passiveTransportClosed : Prop
  activeTransportClosed : Prop
  bulkTransportClosed : Prop

def TransportMechanismsClosed (E : TransportMechanismsEvidence) : Prop :=
  E.passiveTransportClosed ∧ E.activeTransportClosed ∧ E.bulkTransportClosed

theorem transport_mechanisms_closed_from_evidence (E : TransportMechanismsEvidence) : TransportMechanismsClosed E :=
  And.intro E.passiveTransportClosed (And.intro E.activeTransportClosed E.bulkTransportClosed)

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse