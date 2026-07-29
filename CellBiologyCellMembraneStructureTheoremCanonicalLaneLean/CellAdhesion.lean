import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure CellAdhesionPackage where
  cadherin : Type u
  integrin : Type v
  selectin : Type w
  immunoglobulinSuperfamily : Type x
  adherensJunction : Prop
  tightJunction : Prop
  desmosome : Prop
  hemidesmosome : Prop
  focalAdhesion : Prop
  cellMatrixInteraction : Prop

structure CellAdhesionEvidence (C : CellAdhesionPackage) where
  adherensJunctionClosed : C.adherensJunction
  tightJunctionClosed : C.tightJunction
  desmosomeClosed : C.desmosome
  hemidesmosomeClosed : C.hemidesmosome
  focalAdhesionClosed : C.focalAdhesion
  cellMatrixInteractionClosed : C.cellMatrixInteraction

def CellAdhesionClosed (C : CellAdhesionPackage) : Prop :=
  C.adherensJunction ∧ C.tightJunction ∧ C.desmosome ∧
  C.hemidesmosome ∧ C.focalAdhesion ∧ C.cellMatrixInteraction

theorem cell_adhesion_closed_from_evidence
    (C : CellAdhesionPackage) (E : CellAdhesionEvidence C) :
    CellAdhesionClosed C := by
  exact And.intro E.adherensJunctionClosed
    (And.intro E.tightJunctionClosed
      (And.intro E.desmosomeClosed
        (And.intro E.hemidesmosomeClosed
          (And.intro E.focalAdhesionClosed E.cellMatrixInteractionClosed))))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse