import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledLemmaCanonicalLaneLean

structure GProteinConformationalSwitchPackage {G : LigandReceptorInteractionPackage} {M : MembraneSignalingPackage G} (R : ReceptorBindingKineticsPackage M) where
  gdpBoundInactive : Prop
  gtpExchangeFactor : Prop
  gtpBoundActive : Prop
  hydrolysisRate : Prop

structure GProteinConformationalSwitchEvidence {G : LigandReceptorInteractionPackage} {M : MembraneSignalingPackage G} {R : ReceptorBindingKineticsPackage M} (S : GProteinConformationalSwitchPackage R) where
  gdpBoundInactiveClosed : S.gdpBoundInactive
  gtpExchangeFactorClosed : S.gtpExchangeFactor
  gtpBoundActiveClosed : S.gtpBoundActive
  hydrolysisRateClosed : S.hydrolysisRate

def GProteinConformationalSwitchClosed {G : LigandReceptorInteractionPackage} {M : MembraneSignalingPackage G} {R : ReceptorBindingKineticsPackage M} (S : GProteinConformationalSwitchPackage R) : Prop :=
  S.gdpBoundInactive ∧ S.gtpExchangeFactor ∧ S.gtpBoundActive ∧ S.hydrolysisRate

theorem g_protein_conformational_switch_closed_from_evidence {G : LigandReceptorInteractionPackage} {M : MembraneSignalingPackage G} {R : ReceptorBindingKineticsPackage M} (S : GProteinConformationalSwitchPackage R) (E : GProteinConformationalSwitchEvidence S) : GProteinConformationalSwitchClosed S := by
  exact And.intro E.gdpBoundInactiveClosed (And.intro E.gtpExchangeFactorClosed (And.intro E.gtpBoundActiveClosed E.hydrolysisRateClosed))

end CellBiologyGProteinCoupledLemmaCanonicalLaneLean
end HautevilleHouse