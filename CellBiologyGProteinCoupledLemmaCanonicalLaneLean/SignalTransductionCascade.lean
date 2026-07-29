import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledLemmaCanonicalLaneLean

structure SignalTransductionCascadePackage where
  secondMessenger : Type u
  amplificationFactor : Prop
  downstreamKinase : Prop
  cellularResponse : Prop
  feedbackRegulation : Prop

structure SignalTransductionCascadeEvidence (S : SignalTransductionCascadePackage) where
  amplificationFactorClosed : S.amplificationFactor
  downstreamKinaseClosed : S.downstreamKinase
  cellularResponseClosed : S.cellularResponse
  feedbackRegulationClosed : S.feedbackRegulation

def SignalTransductionCascadeClosed (S : SignalTransductionCascadePackage) : Prop :=
  S.amplificationFactor ∧ S.downstreamKinase ∧ S.cellularResponse ∧ S.feedbackRegulation

theorem signal_transduction_cascade_closed_from_evidence (S : SignalTransductionCascadePackage)
    (E : SignalTransductionCascadeEvidence S) : SignalTransductionCascadeClosed S := by
  exact And.intro E.amplificationFactorClosed
    (And.intro E.downstreamKinaseClosed
      (And.intro E.cellularResponseClosed E.feedbackRegulationClosed))

end CellBiologyGProteinCoupledLemmaCanonicalLaneLean
end HautevilleHouse