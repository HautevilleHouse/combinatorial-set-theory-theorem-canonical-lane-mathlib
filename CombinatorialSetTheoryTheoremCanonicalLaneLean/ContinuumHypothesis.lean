import CombinatorialSetTheoryTheoremCanonicalLaneLean.LargeCardinals

namespace HautevilleHouse
namespace CombinatorialSetTheoryTheoremCanonicalLaneLean

structure ContinuumHypothesisPackage {A : AdmissibleClass} {Base : ForcingExtensionPackage A} {I : IteratedForcingPackage Base} (L : LargeCardinalPackage I) where
  chStates : Prop
  chIndependenceFromZFC : Prop
  chConsistencyWithLargeCardinals : Prop
  chFailureModel : Prop
  chSatisfactionModel : Prop

def ContinuumHypothesisClosed {A : AdmissibleClass} {Base : ForcingExtensionPackage A} {I : IteratedForcingPackage Base} {L : LargeCardinalPackage I} (C : ContinuumHypothesisPackage L) : Prop :=
  C.chIndependenceFromZFC ∧ C.chConsistencyWithLargeCardinals ∧ (C.chFailureModel ∨ C.chSatisfactionModel)

end CombinatorialSetTheoryTheoremCanonicalLaneLean
end HautevilleHouse