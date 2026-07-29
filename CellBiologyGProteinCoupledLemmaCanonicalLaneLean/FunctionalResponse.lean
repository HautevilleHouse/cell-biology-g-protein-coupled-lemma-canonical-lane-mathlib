import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledLemmaCanonicalLaneLean

structure CellularResponse where
  geneExpressionChange : Prop
  ionChannelModulation : Prop
  enzymeActivation : Prop
  cytoskeletalRearrangement : Prop

definition FunctionalReadout (C : CellularResponse) : Prop :=
  C.geneExpressionChange ∨ C.ionChannelModulation ∨ C.enzymeActivation ∨ C.cytoskeletalRearrangement

structure FunctionalResponsePackage where
  response : CellularResponse
  doseResponseCurve : Prop
  efficacy : ℝ
  potency : ℝ

definition Emax (R : FunctionalResponsePackage) : ℝ := R.efficacy
definition EC50 (R : FunctionalResponsePackage) : ℝ := R.potency

structure FunctionalResponseEvidence (F : FunctionalResponsePackage) where
  doseResponseCurveClosed : F.doseResponseCurve

def FunctionalResponseClosed (F : FunctionalResponsePackage) : Prop :=
  F.doseResponseCurve

theorem functional_response_closed_from_evidence (F : FunctionalResponsePackage) (E : FunctionalResponseEvidence F) :
    FunctionalResponseClosed F := by
  exact E.doseResponseCurveClosed

end CellBiologyGProteinCoupledLemmaCanonicalLaneLean
end HautevilleHouse