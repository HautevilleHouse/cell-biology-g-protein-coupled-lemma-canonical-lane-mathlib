import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledLemmaCanonicalLaneLean

structure GProteinActivationCyclePackage where
  nucleotideExchange : Prop
  alphaSubunitRelease : Prop
  effectorActivation : Prop
  gtpHydrolysis : Prop
  reassociation : Prop

structure GProteinActivationCycleEvidence (G : GProteinActivationCyclePackage) where
  nucleotideExchangeClosed : G.nucleotideExchange
  alphaSubunitReleaseClosed : G.alphaSubunitRelease
  effectorActivationClosed : G.effectorActivation
  gtpHydrolysisClosed : G.gtpHydrolysis
  reassociationClosed : G.reassociation

def GProteinActivationCycleClosed (G : GProteinActivationCyclePackage) : Prop :=
  G.nucleotideExchange ∧ G.alphaSubunitRelease ∧ G.effectorActivation ∧ G.gtpHydrolysis ∧ G.reassociation

theorem g_protein_activation_cycle_closed_from_evidence (G : GProteinActivationCyclePackage)
    (E : GProteinActivationCycleEvidence G) : GProteinActivationCycleClosed G := by
  exact And.intro E.nucleotideExchangeClosed
    (And.intro E.alphaSubunitReleaseClosed
      (And.intro E.effectorActivationClosed
        (And.intro E.gtpHydrolysisClosed E.reassociationClosed)))

end CellBiologyGProteinCoupledLemmaCanonicalLaneLean
end HautevilleHouse