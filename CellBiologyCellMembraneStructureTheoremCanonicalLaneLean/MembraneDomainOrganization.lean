import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure MembraneDomainOrganizationPackage where
  lipidPhaseSeparation : Prop
  proteinPartitioning : Prop
  domainNanoscaleDynamics : Prop
  cytoskeletalCorralling : Prop
  barrierFormation : Prop

structure MembraneDomainOrganizationEvidence (D : MembraneDomainOrganizationPackage) where
  lipidPhaseSeparationClosed : D.lipidPhaseSeparation
  proteinPartitioningClosed : D.proteinPartitioning
  domainNanoscaleDynamicsClosed : D.domainNanoscaleDynamics
  cytoskeletalCorrallingClosed : D.cytoskeletalCorralling
  barrierFormationClosed : D.barrierFormation

def MembraneDomainOrganizationClosed (D : MembraneDomainOrganizationPackage) : Prop :=
  D.lipidPhaseSeparation ∧ D.proteinPartitioning ∧
  D.domainNanoscaleDynamics ∧ D.cytoskeletalCorralling ∧ D.barrierFormation

theorem membrane_domain_organization_closed_from_evidence (D : MembraneDomainOrganizationPackage) (E : MembraneDomainOrganizationEvidence D) : MembraneDomainOrganizationClosed D := by
  exact And.intro E.lipidPhaseSeparationClosed
    (And.intro E.proteinPartitioningClosed
      (And.intro E.domainNanoscaleDynamicsClosed
        (And.intro E.cytoskeletalCorrallingClosed E.barrierFormationClosed)))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse