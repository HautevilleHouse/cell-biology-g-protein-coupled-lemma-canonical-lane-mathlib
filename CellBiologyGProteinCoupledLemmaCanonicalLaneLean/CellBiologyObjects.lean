import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GPCRSystem where
  receptor : Type
  gProtein : Type
  effector : Type
  ligandPresent : Prop
  receptorActivated : Prop
  gProteinDissociated : Prop
  effectorActivated : Prop
  signalTransduced : Prop
  couplingCorrect : receptorActivated → gProteinDissociated → effectorActivated → signalTransduced

def GPCRWitnessClosed (sys : GPCRSystem) : Prop :=
  sys.couplingCorrect sys.receptorActivated sys.gProteinDissociated sys.effectorActivated → sys.signalTransduced

end CellBiologyGProteinCoupledLemmaCanonicalLaneLean
end HautevilleHouse