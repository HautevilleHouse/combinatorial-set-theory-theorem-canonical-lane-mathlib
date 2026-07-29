import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialSetTheoryTheoremCanonicalLaneLean.CombinatorialForcing

namespace HautevilleHouse
namespace CombinatorialSetTheoryTheoremCanonicalLaneLean

structure LargeCardinalPackage {A : SetTheoryAxiomPackage} {F : CombinatorialForcingPackage A} where
  inaccessibleCardinal : Prop
  measurableCardinal : Prop
  woodinCardinal : Prop
  supercompactCardinal : Prop

structure LargeCardinalEvidence {A : SetTheoryAxiomPackage} {F : CombinatorialForcingPackage A} (L : LargeCardinalPackage A F) where
  inaccessibleClosed : L.inaccessibleCardinal
  measurableClosed : L.measurableCardinal
  woodinClosed : L.woodinCardinal
  supercompactClosed : L.supercompactCardinal

def LargeCardinalClosed {A : SetTheoryAxiomPackage} {F : CombinatorialForcingPackage A} (L : LargeCardinalPackage A F) : Prop :=
  L.inaccessibleCardinal ∧ L.measurableCardinal ∧ L.woodinCardinal ∧ L.supercompactCardinal

theorem large_cardinal_closed_from_evidence {A : SetTheoryAxiomPackage} {F : CombinatorialForcingPackage A} (L : LargeCardinalPackage A F) (E : LargeCardinalEvidence L) : LargeCardinalClosed L := by
  exact And.intro E.inaccessibleClosed (And.intro E.measurableClosed (And.intro E.woodinClosed E.supercompactClosed))

end CombinatorialSetTheoryTheoremCanonicalLaneLean
end HautevilleHouse