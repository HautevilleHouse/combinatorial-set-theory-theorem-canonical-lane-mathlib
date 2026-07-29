import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryTheoremCanonicalLaneLean

structure DeltaSystemPackage where
  family : Set (Set α)
  size : ℕ
  root : Set α
  deltaSystemProperty : Prop
  deltaSystemExists : ℕ → Prop

def deltaSystemClosure (pkg : DeltaSystemPackage) : Prop :=
  pkg.deltaSystemProperty ∧ pkg.root.Finite

end CombinatorialSetTheoryTheoremCanonicalLaneLean
end HautevilleHouse
