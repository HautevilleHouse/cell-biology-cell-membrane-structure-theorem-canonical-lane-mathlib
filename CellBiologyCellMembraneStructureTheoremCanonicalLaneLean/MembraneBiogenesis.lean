import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure MembraneBiogenesisPackage where
  lipidSynthesis : Prop
  proteinInsertion : Prop
  erGolgiTraffic : Prop
  vesicleMediatedTransport : Prop
  membraneFusion : Prop
  phospholipidFlipFlop : Prop

structure MembraneBiogenesisEvidence (M : MembraneBiogenesisPackage) where
  lipidSynthesisClosed : M.lipidSynthesis
  proteinInsertionClosed : M.proteinInsertion
  erGolgiTrafficClosed : M.erGolgiTraffic
  vesicleMediatedTransportClosed : M.vesicleMediatedTransport
  membraneFusionClosed : M.membraneFusion
  phospholipidFlipFlopClosed : M.phospholipidFlipFlop

def MembraneBiogenesisClosed (M : MembraneBiogenesisPackage) : Prop :=
  M.lipidSynthesis ∧ M.proteinInsertion ∧ M.erGolgiTraffic ∧
  M.vesicleMediatedTransport ∧ M.membraneFusion ∧ M.phospholipidFlipFlop

theorem membrane_biogenesis_closed_from_evidence
    (M : MembraneBiogenesisPackage) (E : MembraneBiogenesisEvidence M) :
    MembraneBiogenesisClosed M := by
  exact And.intro E.lipidSynthesisClosed
    (And.intro E.proteinInsertionClosed
      (And.intro E.erGolgiTrafficClosed
        (And.intro E.vesicleMediatedTransportClosed
          (And.intro E.membraneFusionClosed E.phospholipidFlipFlopClosed))))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse