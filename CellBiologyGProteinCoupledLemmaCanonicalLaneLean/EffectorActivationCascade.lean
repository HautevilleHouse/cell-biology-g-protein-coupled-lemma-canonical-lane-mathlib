import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledLemmaCanonicalLaneLean

structure EffectorActivationCascadePackage {G : LigandReceptorInteractionPackage} {M : MembraneSignalingPackage G} {R : ReceptorBindingKineticsPackage M} {S : GProteinConformationalSwitchPackage R} where
  adenylylCyclaseActivation : Prop
  phospholipaseCActivation : Prop
  ionChannelModulation : Prop
  secondaryMessengerProduction : Prop

structure EffectorActivationCascadeEvidence {G : LigandReceptorInteractionPackage} {M : MembraneSignalingPackage G} {R : ReceptorBindingKineticsPackage M} {S : GProteinConformationalSwitchPackage R} (C : EffectorActivationCascadePackage S) where
  adenylylCyclaseActivationClosed : C.adenylylCyclaseActivation
  phospholipaseCActivationClosed : C.phospholipaseCActivation
  ionChannelModulationClosed : C.ionChannelModulation
  secondaryMessengerProductionClosed : C.secondaryMessengerProduction

def EffectorActivationCascadeClosed {G : LigandReceptorInteractionPackage} {M : MembraneSignalingPackage G} {R : ReceptorBindingKineticsPackage M} {S : GProteinConformationalSwitchPackage R} (C : EffectorActivationCascadePackage S) : Prop :=
  C.adenylylCyclaseActivation ∧ C.phospholipaseCActivation ∧ C.ionChannelModulation ∧ C.secondaryMessengerProduction

theorem effector_activation_cascade_closed_from_evidence {G : LigandReceptorInteractionPackage} {M : MembraneSignalingPackage G} {R : ReceptorBindingKineticsPackage M} {S : GProteinConformationalSwitchPackage R} (C : EffectorActivationCascadePackage S) (E : EffectorActivationCascadeEvidence C) : EffectorActivationCascadeClosed C := by
  exact And.intro E.adenylylCyclaseActivationClosed (And.intro E.phospholipaseCActivationClosed (And.intro E.ionChannelModulationClosed E.secondaryMessengerProductionClosed))

end CellBiologyGProteinCoupledLemmaCanonicalLaneLean
end HautevilleHouse