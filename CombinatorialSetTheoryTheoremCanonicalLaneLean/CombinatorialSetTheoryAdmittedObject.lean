import CombinatorialSetTheoryTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryTheoremCanonicalLaneLean

structure CombinatorialSetTheorySpace where
  carrier : Type
  structure : Prop

structure CombinatorialSetTheoryAdmittedObject where
  model : CombinatorialSetTheorySpace
  setTheoreticAxioms : Prop
  incompletenessHypothesis : Prop
  theoremToProve : Prop
  conclusion : theoremToProve

structure CombinatorialSetTheoryEndgameState where
  object : CombinatorialSetTheoryAdmittedObject

def CombinatorialSetTheoryWitnessClosed (O : CombinatorialSetTheoryAdmittedObject) : Prop :=
  O.theoremToProve

end CombinatorialSetTheoryTheoremCanonicalLaneLean
end HautevilleHouse