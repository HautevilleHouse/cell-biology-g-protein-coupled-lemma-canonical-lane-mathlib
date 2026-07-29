import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledLemmaCanonicalLaneLean

structure GProteinAdmittedObject where
  receptor : Type
  ligand : Type
  gProtein : Type
  activationPathway : Prop
  downstreamSignaling : Prop
  conclusion : activationPathway ∧ downstreamSignaling

def GProteinWitnessClosed (O : GProteinAdmittedObject) : Prop :=
  O.activationPathway ∧ O.downstreamSignaling

end CellBiologyGProteinCoupledLemmaCanonicalLaneLean
end HautevilleHouse