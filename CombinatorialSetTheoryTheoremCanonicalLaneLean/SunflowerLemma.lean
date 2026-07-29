import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryTheoremCanonicalLaneLean

structure SunflowerPackage where
  family : Set (Set α)
  cardinality : ℕ
  kernel : Set α
  sunflowerProperty : Prop

def sunflowerClosure (pkg : SunflowerPackage) : Prop :=
  pkg.sunflowerProperty ∧ pkg.kernel.Nonempty

theorem sunflower_closed (pkg : SunflowerPackage) : sunflowerClosure pkg := by
  exact And.intro pkg.sunflowerProperty (by
    sorry)

end CombinatorialSetTheoryTheoremCanonicalLaneLean
end HautevilleHouse
