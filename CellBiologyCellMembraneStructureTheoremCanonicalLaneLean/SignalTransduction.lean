import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyCellMembraneStructureTheoremCanonicalLaneLean

structure SignalTransductionPackage where
  receptorBinding : Prop
  conformationalChange : Prop
  secondMessenger : Prop
  kinaseCascade : Prop
  geneExpression : Prop
  desensitization : Prop

structure SignalTransductionEvidence (S : SignalTransductionPackage) where
  receptorBindingClosed : S.receptorBinding
  conformationalChangeClosed : S.conformationalChange
  secondMessengerClosed : S.secondMessenger
  kinaseCascadeClosed : S.kinaseCascade
  geneExpressionClosed : S.geneExpression
  desensitizationClosed : S.desensitization

def SignalTransductionClosed (S : SignalTransductionPackage) : Prop :=
  S.receptorBinding ∧ S.conformationalChange ∧ S.secondMessenger ∧
  S.kinaseCascade ∧ S.geneExpression ∧ S.desensitization

theorem signal_transduction_closed_from_evidence (S : SignalTransductionPackage)
    (E : SignalTransductionEvidence S) : SignalTransductionClosed S := by
  exact And.intro E.receptorBindingClosed
    (And.intro E.conformationalChangeClosed
      (And.intro E.secondMessengerClosed
        (And.intro E.kinaseCascadeClosed
          (And.intro E.geneExpressionClosed E.desensitizationClosed))))

end CellBiologyCellMembraneStructureTheoremCanonicalLaneLean
end HautevilleHouse