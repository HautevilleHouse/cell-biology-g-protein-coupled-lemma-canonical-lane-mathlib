import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledLemmaCanonicalLaneLean

structure SecondMessengerCascadePackage where
  adenylylCyclaseActivation : Prop
  campProduction : Prop
  pkaActivation : Prop
  downstreamKinaseCascade : Prop

structure SecondMessengerCascadeEvidence (P : SecondMessengerCascadePackage) where
  adenylylCyclaseActivationClosed : P.adenylylCyclaseActivation
  campProductionClosed : P.campProduction
  pkaActivationClosed : P.pkaActivation
  downstreamKinaseCascadeClosed : P.downstreamKinaseCascade

def SecondMessengerCascadeClosed (P : SecondMessengerCascadePackage) : Prop :=
  P.adenylylCyclaseActivation ∧ P.campProduction ∧ P.pkaActivation ∧ P.downstreamKinaseCascade

theorem second_messenger_cascade_closed_from_evidence (P : SecondMessengerCascadePackage)
    (E : SecondMessengerCascadeEvidence P) : SecondMessengerCascadeClosed P := by
  exact And.intro E.adenylylCyclaseActivationClosed
    (And.intro E.campProductionClosed
      (And.intro E.pkaActivationClosed E.downstreamKinaseCascadeClosed))

end CellBiologyGProteinCoupledLemmaCanonicalLaneLean
end HautevilleHouse
