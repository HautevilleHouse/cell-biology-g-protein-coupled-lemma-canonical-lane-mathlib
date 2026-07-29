import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledLemmaCanonicalLaneLean

structure SignalTransductionPackage {A : AdmissibleClass} (L : LigandBindingPackage A) where
  gProteinActivation : Prop
  secondMessengerProduction : Prop
  cellularResponse : Prop

structure SignalTransductionEvidence {A : AdmissibleClass} {L : LigandBindingPackage A}
    (S : SignalTransductionPackage L) where
  gProteinActivationClosed : S.gProteinActivation
  secondMessengerProductionClosed : S.secondMessengerProduction
  cellularResponseClosed : S.cellularResponse

def SignalTransductionClosed {A : AdmissibleClass} {L : LigandBindingPackage A}
    (S : SignalTransductionPackage L) : Prop :=
  S.gProteinActivation ∧ S.secondMessengerProduction ∧ S.cellularResponse

theorem signal_transduction_closed_from_evidence {A : AdmissibleClass}
    {L : LigandBindingPackage A} (S : SignalTransductionPackage L)
    (E : SignalTransductionEvidence S) : SignalTransductionClosed S := by
  exact And.intro E.gProteinActivationClosed (And.intro E.secondMessengerProductionClosed E.cellularResponseClosed)

end CellBiologyGProteinCoupledLemmaCanonicalLaneLean
end HautevilleHouse