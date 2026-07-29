import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledLemmaCanonicalLaneLean

structure GPCRBindingKineticsPackage where
  ligandConcentration : Type u
  receptorDensity : Type v
  associationRate : Prop
  dissociationRate : Prop
  equilibriumConstant : Prop

structure GPCRBindingKineticsEvidence (B : GPCRBindingKineticsPackage) where
  associationRateClosed : B.associationRate
  dissociationRateClosed : B.dissociationRate
  equilibriumConstantClosed : B.equilibriumConstant

def GPCRBindingKineticsClosed (B : GPCRBindingKineticsPackage) : Prop :=
  B.associationRate ∧ B.dissociationRate ∧ B.equilibriumConstant

theorem gpcr_binding_kinetics_closed_from_evidence (B : GPCRBindingKineticsPackage)
    (E : GPCRBindingKineticsEvidence B) : GPCRBindingKineticsClosed B := by
  exact And.intro E.associationRateClosed (And.intro E.dissociationRateClosed E.equilibriumConstantClosed)

end CellBiologyGProteinCoupledLemmaCanonicalLaneLean
end HautevilleHouse