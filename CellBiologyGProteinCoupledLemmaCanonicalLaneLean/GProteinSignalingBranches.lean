import HautevilleHouse.CellBiologyGProteinCoupledLemmaCanonicalLaneLean.SecondMessengerCascade

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledLemmaCanonicalLaneLean

structure SignalingBranchPackage {R : ReceptorActivationPackage}
    {S : SecondMessengerPackage R} where
  mapkPathway : Prop
  pi3kPathway : Prop
  rhoPathway : Prop
  branchCrossTalk : Prop

structure SignalingBranchEvidence {R : ReceptorActivationPackage}
    {S : SecondMessengerPackage R} (B : SignalingBranchPackage R S) where
  mapkPathwayClosed : B.mapkPathway
  pi3kPathwayClosed : B.pi3kPathway
  rhoPathwayClosed : B.rhoPathway
  branchCrossTalkClosed : B.branchCrossTalk

def SignalingBranchClosed {R : ReceptorActivationPackage}
    {S : SecondMessengerPackage R} (B : SignalingBranchPackage R S) : Prop :=
  B.mapkPathway ∧ B.pi3kPathway ∧ B.rhoPathway ∧ B.branchCrossTalk

theorem signaling_branch_closed_from_evidence {R : ReceptorActivationPackage}
    {S : SecondMessengerPackage R} (B : SignalingBranchPackage R S)
    (E : SignalingBranchEvidence B) : SignalingBranchClosed B := by
  exact And.intro E.mapkPathwayClosed
    (And.intro E.pi3kPathwayClosed
      (And.intro E.rhoPathwayClosed E.branchCrossTalkClosed))

end CellBiologyGProteinCoupledLemmaCanonicalLaneLean
end HautevilleHouse
