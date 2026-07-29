import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledLemmaCanonicalLaneLean

structure GProteinCoupledReceptor where
  carrier : Type
  topology : TopologicalSpace carrier
  sevenTransmembrane : Prop
  gProteinBinding : Prop
  conformationalChange : Prop

def GPCRAdmittedObject (R : GProteinCoupledReceptor) (A : AdmissibleClass) : Prop :=
  R.sevenTransmembrane ∧ R.gProteinBinding ∧ R.conformationalChange

structure ReceptorActivationPackage where
  ligandBinding : Prop
  receptorDimerization : Prop
  phosphorylation : Prop
  internalization : Prop

structure ReceptorActivationEvidence (P : ReceptorActivationPackage) where
  ligandBindingClosed : P.ligandBinding
  receptorDimerizationClosed : P.receptorDimerization
  phosphorylationClosed : P.phosphorylation
  internalizationClosed : P.internalization

def ReceptorActivationClosed (P : ReceptorActivationPackage) : Prop :=
  P.ligandBinding ∧ P.receptorDimerization ∧ P.phosphorylation ∧ P.internalization

theorem receptor_activation_closed_from_evidence (P : ReceptorActivationPackage)
    (E : ReceptorActivationEvidence P) : ReceptorActivationClosed P := by
  exact And.intro E.ligandBindingClosed
    (And.intro E.receptorDimerizationClosed
      (And.intro E.phosphorylationClosed E.internalizationClosed))

end CellBiologyGProteinCoupledLemmaCanonicalLaneLean
end HautevilleHouse
