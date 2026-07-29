import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledLemmaCanonicalLaneLean

structure ReceptorBindingKineticsPackage {G : LigandReceptorInteractionPackage} (M : MembraneSignalingPackage G) where
  forwardBindingRate : Prop
  reverseBindingRate : Prop
  equilibriumConstant : Prop
  signalActivationThreshold : Prop

structure ReceptorBindingKineticsEvidence {G : LigandReceptorInteractionPackage} {M : MembraneSignalingPackage G} (R : ReceptorBindingKineticsPackage M) where
  forwardBindingRateClosed : R.forwardBindingRate
  reverseBindingRateClosed : R.reverseBindingRate
  equilibriumConstantClosed : R.equilibriumConstant
  signalActivationThresholdClosed : R.signalActivationThreshold

def ReceptorBindingKineticsClosed {G : LigandReceptorInteractionPackage} {M : MembraneSignalingPackage G} (R : ReceptorBindingKineticsPackage M) : Prop :=
  R.forwardBindingRate ∧ R.reverseBindingRate ∧ R.equilibriumConstant ∧ R.signalActivationThreshold

theorem receptor_binding_kinetics_closed_from_evidence {G : LigandReceptorInteractionPackage} {M : MembraneSignalingPackage G} (R : ReceptorBindingKineticsPackage M) (E : ReceptorBindingKineticsEvidence R) : ReceptorBindingKineticsClosed R := by
  exact And.intro E.forwardBindingRateClosed (And.intro E.reverseBindingRateClosed (And.intro E.equilibriumConstantClosed E.signalActivationThresholdClosed))

end CellBiologyGProteinCoupledLemmaCanonicalLaneLean
end HautevilleHouse