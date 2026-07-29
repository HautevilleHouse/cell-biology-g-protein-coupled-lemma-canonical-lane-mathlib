namespace HautevilleHouse
namespace CellBiologyGProteinCoupledLemmaCanonicalLaneLean

structure LigandBindingPackage where
  ligandPresent : Prop
  receptorConformationChange : Prop
  bindingAffinity : Prop
  bindingInducesActivation : Prop

structure LigandBindingEvidence (L : LigandBindingPackage) where
  ligandPresentClosed : L.ligandPresent
  receptorConformationChangeClosed : L.receptorConformationChange
  bindingAffinityClosed : L.bindingAffinity
  bindingInducesActivationClosed : L.bindingInducesActivation

def LigandBindingClosed (L : LigandBindingPackage) : Prop :=
  L.ligandPresent ∧ L.receptorConformationChange ∧
  L.bindingAffinity ∧ L.bindingInducesActivation

theorem ligand_binding_closed_from_evidence (L : LigandBindingPackage) (E : LigandBindingEvidence L) :
    LigandBindingClosed L :=
  by
    exact And.intro E.ligandPresentClosed
      (And.intro E.receptorConformationChangeClosed
        (And.intro E.bindingAffinityClosed E.bindingInducesActivationClosed))

end CellBiologyGProteinCoupledLemmaCanonicalLaneLean
end HautevilleHouse