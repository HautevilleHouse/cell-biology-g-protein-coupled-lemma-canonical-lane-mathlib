import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledLemmaCanonicalLaneLean

structure DrugTargetInteraction where
  drugMolecule : Type u
  targetReceptor : GProteinCoupledReceptor
  bindingMode : Prop
  therapeuticEffect : Prop
  sideEffect : Prop

definition Selectivity (D : DrugTargetInteraction) : Prop :=
  D.therapeuticEffect ∧ ¬ D.sideEffect

structure PharmacologyBridgePackage where
  interaction : DrugTargetInteraction
  pharmacokinetics : Prop
  pharmacodynamics : Prop
  clinicalRelevance : Prop

structure PharmacologyBridgeEvidence (P : PharmacologyBridgePackage) where
  pharmacokineticsClosed : P.pharmacokinetics
  pharmacodynamicsClosed : P.pharmacodynamics
  clinicalRelevanceClosed : P.clinicalRelevance

def PharmacologyBridgeClosed (P : PharmacologyBridgePackage) : Prop :=
  P.pharmacokinetics ∧ P.pharmacodynamics ∧ P.clinicalRelevance

theorem pharmacology_bridge_closed_from_evidence (P : PharmacologyBridgePackage) (E : PharmacologyBridgeEvidence P) :
    PharmacologyBridgeClosed P := by
  exact And.intro E.pharmacokineticsClosed (And.intro E.pharmacodynamicsClosed E.clinicalRelevanceClosed)

end CellBiologyGProteinCoupledLemmaCanonicalLaneLean
end HautevilleHouse