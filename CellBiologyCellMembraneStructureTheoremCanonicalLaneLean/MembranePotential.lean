import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure MembranePotentialPackage where
  restingPotential : Prop
  ionGradients : Prop
  nernstEquation : Prop
  goldmanHodgkinKatzEquation : Prop

structure MembranePotentialEvidence (M : MembranePotentialPackage) where
  restingPotentialClosed : M.restingPotential
  ionGradientsClosed : M.ionGradients
  nernstEquationClosed : M.nernstEquation
  goldmanHodgkinKatzEquationClosed : M.goldmanHodgkinKatzEquation

def MembranePotentialClosed (M : MembranePotentialPackage) : Prop :=
  M.restingPotential ∧ M.ionGradients ∧ M.nernstEquation ∧ M.goldmanHodgkinKatzEquation

theorem membrane_potential_closed_from_evidence (M : MembranePotentialPackage) (E : MembranePotentialEvidence M) : MembranePotentialClosed M := by
  exact And.intro E.restingPotentialClosed (And.intro E.ionGradientsClosed (And.intro E.nernstEquationClosed E.goldmanHodgkinKatzEquationClosed))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse