import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledLemmaCanonicalLaneLean

structure LigandReceptorKinetics where
  associationRate : ℝ
  dissociationRate : ℝ
  bindingAffinity : ℝ

definition EquilibriumConstant (k : LigandReceptorKinetics) : ℝ :=
  k.dissociationRate / k.associationRate

structure GPCRDynamicsPackage where
  kinetics : LigandReceptorKinetics
  conformationalDynamics : Prop
  allostericModulation : Prop
  desensitization : Prop
  internalization : Prop

structure GPCRDynamicsEvidence (D : GPCRDynamicsPackage) where
  conformationalDynamicsClosed : D.conformationalDynamics
  allostericModulationClosed : D.allostericModulation
  desensitizationClosed : D.desensitization
  internalizationClosed : D.internalization

def GPCRDynamicsClosed (D : GPCRDynamicsPackage) : Prop :=
  D.conformationalDynamics ∧ D.allostericModulation ∧ D.desensitization ∧ D.internalization

theorem gpcr_dynamics_closed_from_evidence (D : GPCRDynamicsPackage) (E : GPCRDynamicsEvidence D) :
    GPCRDynamicsClosed D := by
  exact And.intro E.conformationalDynamicsClosed
    (And.intro E.allostericModulationClosed (And.intro E.desensitizationClosed E.internalizationClosed))

end CellBiologyGProteinCoupledLemmaCanonicalLaneLean
end HautevilleHouse