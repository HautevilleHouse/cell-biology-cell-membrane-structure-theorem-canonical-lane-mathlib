import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure MembraneCytoskeletonAdhesionPackage where
  corticalActinMesh : Prop
  linkerProteinBinding : Prop
  membraneTensionRegulation : Prop
  mechanicalForceTransmission : Prop
  adhesionTurnoverDynamics : Prop

structure MembraneCytoskeletonAdhesionEvidence (A : MembraneCytoskeletonAdhesionPackage) where
  corticalActinMeshClosed : A.corticalActinMesh
  linkerProteinBindingClosed : A.linkerProteinBinding
  membraneTensionRegulationClosed : A.membraneTensionRegulation
  mechanicalForceTransmissionClosed : A.mechanicalForceTransmission
  adhesionTurnoverDynamicsClosed : A.adhesionTurnoverDynamics

def MembraneCytoskeletonAdhesionClosed (A : MembraneCytoskeletonAdhesionPackage) : Prop :=
  A.corticalActinMesh ∧ A.linkerProteinBinding ∧
  A.membraneTensionRegulation ∧ A.mechanicalForceTransmission ∧
  A.adhesionTurnoverDynamics

theorem membrane_cytoskeleton_adhesion_closed_from_evidence (A : MembraneCytoskeletonAdhesionPackage) (E : MembraneCytoskeletonAdhesionEvidence A) : MembraneCytoskeletonAdhesionClosed A := by
  exact And.intro E.corticalActinMeshClosed
    (And.intro E.linkerProteinBindingClosed
      (And.intro E.membraneTensionRegulationClosed
        (And.intro E.mechanicalForceTransmissionClosed E.adhesionTurnoverDynamicsClosed)))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse