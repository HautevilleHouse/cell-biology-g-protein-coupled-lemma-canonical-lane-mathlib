import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledLemmaCanonicalLaneLean

structure GPCRConformationalStatesPackage where
  inactiveState : Type u
  activeState : Type v
  transitionRate : Prop
  allostericModulation : Prop
  constitutiveActivity : Prop

structure GPCRConformationalStatesEvidence (C : GPCRConformationalStatesPackage) where
  transitionRateClosed : C.transitionRate
  allostericModulationClosed : C.allostericModulation
  constitutiveActivityClosed : C.constitutiveActivity

def GPCRConformationalStatesClosed (C : GPCRConformationalStatesPackage) : Prop :=
  C.transitionRate ∧ C.allostericModulation ∧ C.constitutiveActivity

theorem gpcr_conformational_states_closed_from_evidence (C : GPCRConformationalStatesPackage)
    (E : GPCRConformationalStatesEvidence C) : GPCRConformationalStatesClosed C := by
  exact And.intro E.transitionRateClosed (And.intro E.allostericModulationClosed E.constitutiveActivityClosed)

end CellBiologyGProteinCoupledLemmaCanonicalLaneLean
end HautevilleHouse