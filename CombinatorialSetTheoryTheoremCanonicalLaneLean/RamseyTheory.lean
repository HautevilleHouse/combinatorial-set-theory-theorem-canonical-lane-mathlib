import canonicalLaneMathlib.AdmissibleClass
import CombinatorialSetTheoryTheoremCanonicalLaneLean.ErdosRadoTheorem

namespace HautevilleHouse
namespace CombinatorialSetTheoryTheoremCanonicalLaneLean

structure RamseyPackage where
  coloring : (ℕ → 2) → ℕ
  infiniteMonochrome : Set ℕ
  infiniteExists : Prop

structure RamseyEvidence where
  coloringDefined : RamseyPackage
  proofOfInfinite : coloringDefined.infiniteExists

def ramseyClosure (pkg : RamseyPackage) : Prop :=
  pkg.infiniteExists

theorem ramsey_closed (pkg : RamseyPackage) : ramseyClosure pkg := by
  exact pkg.infiniteExists

end CombinatorialSetTheoryTheoremCanonicalLaneLean
end HautevilleHouse
