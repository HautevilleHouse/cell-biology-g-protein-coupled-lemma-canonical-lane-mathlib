import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyGProteinCoupledLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  GProteinWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyGProteinCoupledLemmaCanonicalLaneLean
end HautevilleHouse