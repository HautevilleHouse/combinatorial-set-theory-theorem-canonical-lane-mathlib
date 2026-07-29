import CombinatorialSetTheoryTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CombinatorialSetTheoryTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CombinatorialSetTheoryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinatorialSetTheoryTheoremCanonicalLaneLean
end HautevilleHouse