import canonicalLaneMathlib.AdmissibleClass
import CellBiologyCellMembraneStructureTheoremCanonicalLaneLean.TransportMechanisms
import CellBiologyCellMembraneStructureTheoremCanonicalLaneLean.SignalTransduction
import CellBiologyCellMembraneStructureTheoremCanonicalLaneLean.MembraneStructurePackage

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.gateWitness

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedMembraneClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_membrane_endgame (A : AdmissibleClass) :
    ConstrainedMembraneClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse