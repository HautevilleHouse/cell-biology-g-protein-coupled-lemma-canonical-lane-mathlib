import HautevilleHouse.CellBiologyGProteinCoupledLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledLemmaCanonicalLaneLean

structure ReceptorActivationPackage where
  ligandBinding : Prop
  conformationalChange : Prop
  gdpGtpExchange : Prop
  subunitDissociation : Prop

structure ReceptorActivationEvidence (R : ReceptorActivationPackage) where
  ligandBindingClosed : R.ligandBinding
  conformationalChangeClosed : R.conformationalChange
  gdpGtpExchangeClosed : R.gdpGtpExchange
  subunitDissociationClosed : R.subunitDissociation

def ReceptorActivationClosed (R : ReceptorActivationPackage) : Prop :=
  R.ligandBinding ∧ R.conformationalChange ∧ R.gdpGtpExchange ∧ R.subunitDissociation

theorem receptor_activation_closed_from_evidence (R : ReceptorActivationPackage)
    (E : ReceptorActivationEvidence R) : ReceptorActivationClosed R := by
  exact And.intro E.ligandBindingClosed
    (And.intro E.conformationalChangeClosed
      (And.intro E.gdpGtpExchangeClosed E.subunitDissociationClosed))

end CellBiologyGProteinCoupledLemmaCanonicalLaneLean
end HautevilleHouse
