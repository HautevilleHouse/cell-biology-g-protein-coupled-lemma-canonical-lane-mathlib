import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledLemmaCanonicalLaneLean

structure LigandBindingPackage (A : AdmissibleClass) where
  bindingAffinity : Prop
  conformationalChange : Prop
  activeStateStabilization : Prop

structure LigandBindingEvidence {A : AdmissibleClass} (L : LigandBindingPackage A) where
  bindingAffinityClosed : L.bindingAffinity
  conformationalChangeClosed : L.conformationalChange
  activeStateStabilizationClosed : L.activeStateStabilization

def LigandBindingClosed {A : AdmissibleClass} (L : LigandBindingPackage A) : Prop :=
  L.bindingAffinity ∧ L.conformationalChange ∧ L.activeStateStabilization

theorem ligand_binding_closed_from_evidence {A : AdmissibleClass}
    (L : LigandBindingPackage A) (E : LigandBindingEvidence L) :
    LigandBindingClosed L := by
  exact And.intro E.bindingAffinityClosed (And.intro E.conformationalChangeClosed E.activeStateStabilizationClosed)

end CellBiologyGProteinCoupledLemmaCanonicalLaneLean
end HautevilleHouse