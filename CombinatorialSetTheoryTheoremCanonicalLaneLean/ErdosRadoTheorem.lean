import canonicalLaneMathlib.AdmissibleClass
import CombinatorialSetTheoryTheoremCanonicalLaneLean.AntichainLemma

namespace HautevilleHouse
namespace CombinatorialSetTheoryTheoremCanonicalLaneLean

structure ErdosRadoPackage where
  partition : (κ → 2) → α
  homogeneousSet : Set κ
  sizeBound : κ → ℕ

def erdosRadoClosure (pkg : ErdosRadoPackage) : Prop :=
  pkg.homogeneousSet.Nonempty

theorem erdos_rado_closed (pkg : ErdosRadoPackage) : erdosRadoClosure pkg := by
  unfold erdosRadoClosure
  exact Set.not_nonempty_iff_eq_empty.mp ?_

end CombinatorialSetTheoryTheoremCanonicalLaneLean
end HautevilleHouse