import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryTheoremCanonicalLaneLean

structure AntichainPackage (A : AdmissibleClass) where
  poset : Type u
  order : poset → poset → Prop
  chainCondition : Prop
  antichainSizeBound : ℕ
  antichainBoundProof : chainCondition → antichainSizeBound ≤ someConstant

def antichainClosure (A : AdmissibleClass) : Prop :=
  ∃ (pkg : AntichainPackage A), pkg.antichainSizeBound ≤ someConstant

end CombinatorialSetTheoryTheoremCanonicalLaneLean
end HautevilleHouse
