import HautevilleHouse.CellBiologyCellMembraneStructureTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure CytoskeletonInteractionPackage where
  actinFilaments : Prop
  microtubules : Prop
  intermediateFilaments : Prop
  membraneAnchoring : Prop
  cellShapeDetermination : Prop

structure CytoskeletonInteractionEvidence (C : CytoskeletonInteractionPackage) where
  actinFilamentsClosed : C.actinFilaments
  microtubulesClosed : C.microtubules
  intermediateFilamentsClosed : C.intermediateFilaments
  membraneAnchoringClosed : C.membraneAnchoring
  cellShapeDeterminationClosed : C.cellShapeDetermination

def CytoskeletonInteractionClosed (C : CytoskeletonInteractionPackage) : Prop :=
  C.actinFilaments ∧ C.microtubules ∧ C.intermediateFilaments ∧
  C.membraneAnchoring ∧ C.cellShapeDetermination

theorem cytoskeleton_interaction_closed_from_evidence (C : CytoskeletonInteractionPackage)
    (E : CytoskeletonInteractionEvidence C) : CytoskeletonInteractionClosed C := by
  exact And.intro E.actinFilamentsClosed
    (And.intro E.microtubulesClosed
      (And.intro E.intermediateFilamentsClosed
        (And.intro E.membraneAnchoringClosed E.cellShapeDeterminationClosed)))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse