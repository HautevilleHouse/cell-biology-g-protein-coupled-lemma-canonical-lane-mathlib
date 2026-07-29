import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledLemmaCanonicalLaneLean

structure DesensitizationInternalizationPackage {G : LigandReceptorInteractionPackage} {M : MembraneSignalingPackage G} {R : ReceptorBindingKineticsPackage M} {S : GProteinConformationalSwitchPackage R} {C : EffectorActivationCascadePackage S} where
  receptorPhosphorylation : Prop
  arrestinBinding : Prop
  clathrinMediatedEndocytosis : Prop
  recyclingOrDegradation : Prop

structure DesensitizationInternalizationEvidence {G : LigandReceptorInteractionPackage} {M : MembraneSignalingPackage G} {R : ReceptorBindingKineticsPackage M} {S : GProteinConformationalSwitchPackage R} {C : EffectorActivationCascadePackage S} (D : DesensitizationInternalizationPackage C) where
  receptorPhosphorylationClosed : D.receptorPhosphorylation
  arrestinBindingClosed : D.arrestinBinding
  clathrinMediatedEndocytosisClosed : D.clathrinMediatedEndocytosis
  recyclingOrDegradationClosed : D.recyclingOrDegradation

def DesensitizationInternalizationClosed {G : LigandReceptorInteractionPackage} {M : MembraneSignalingPackage G} {R : ReceptorBindingKineticsPackage M} {S : GProteinConformationalSwitchPackage R} {C : EffectorActivationCascadePackage S} (D : DesensitizationInternalizationPackage C) : Prop :=
  D.receptorPhosphorylation ∧ D.arrestinBinding ∧ D.clathrinMediatedEndocytosis ∧ D.recyclingOrDegradation

theorem desensitization_internalization_closed_from_evidence {G : LigandReceptorInteractionPackage} {M : MembraneSignalingPackage G} {R : ReceptorBindingKineticsPackage M} {S : GProteinConformationalSwitchPackage R} {C : EffectorActivationCascadePackage S} (D : DesensitizationInternalizationPackage C) (E : DesensitizationInternalizationEvidence D) : DesensitizationInternalizationClosed D := by
  exact And.intro E.receptorPhosphorylationClosed (And.intro E.arrestinBindingClosed (And.intro E.clathrinMediatedEndocytosisClosed E.recyclingOrDegradationClosed))

end CellBiologyGProteinCoupledLemmaCanonicalLaneLean
end HautevilleHouse