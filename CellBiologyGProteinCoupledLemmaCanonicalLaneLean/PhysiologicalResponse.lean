import HautevilleHouse.CellBiologyGProteinCoupledLemmaCanonicalLaneLean.DesensitizationInternalization

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledLemmaCanonicalLaneLean

structure PhysiologicalResponsePackage {R : ReceptorActivationPackage}
    {S : SecondMessengerPackage R} {B : SignalingBranchPackage R S}
    {D : DesensitizationPackage R S B} where
  cellularResponse : Prop
  tissueLevelEffect : Prop
  organismalHomeostasis : Prop
  feedbackRegulation : Prop

structure PhysiologicalResponseEvidence {R : ReceptorActivationPackage}
    {S : SecondMessengerPackage R} {B : SignalingBranchPackage R S}
    {D : DesensitizationPackage R S B}
    (P : PhysiologicalResponsePackage R S B D) where
  cellularResponseClosed : P.cellularResponse
  tissueLevelEffectClosed : P.tissueLevelEffect
  organismalHomeostasisClosed : P.organismalHomeostasis
  feedbackRegulationClosed : P.feedbackRegulation

def PhysiologicalResponseClosed {R : ReceptorActivationPackage}
    {S : SecondMessengerPackage R} {B : SignalingBranchPackage R S}
    {D : DesensitizationPackage R S B}
    (P : PhysiologicalResponsePackage R S B D) : Prop :=
  P.cellularResponse ∧ P.tissueLevelEffect ∧ P.organismalHomeostasis ∧ P.feedbackRegulation

theorem physiological_response_closed_from_evidence {R : ReceptorActivationPackage}
    {S : SecondMessengerPackage R} {B : SignalingBranchPackage R S}
    {D : DesensitizationPackage R S B}
    (P : PhysiologicalResponsePackage R S B D)
    (E : PhysiologicalResponseEvidence P) : PhysiologicalResponseClosed P := by
  exact And.intro E.cellularResponseClosed
    (And.intro E.tissueLevelEffectClosed
      (And.intro E.organismalHomeostasisClosed E.feedbackRegulationClosed))

end CellBiologyGProteinCoupledLemmaCanonicalLaneLean
end HautevilleHouse
