import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialSetTheoryTheoremCanonicalLaneLean.LargeCardinals

namespace HautevilleHouse
namespace CombinatorialSetTheoryTheoremCanonicalLaneLean

structure DescriptiveSetTheoryPackage {A : SetTheoryAxiomPackage} {F : CombinatorialForcingPackage A} {L : LargeCardinalPackage A F} where
  projectiveHierarchy : Prop
  borelSets : Prop
  determinacy : Prop
  uniformization : Prop

structure DescriptiveSetTheoryEvidence {A : SetTheoryAxiomPackage} {F : CombinatorialForcingPackage A} {L : LargeCardinalPackage A F} (D : DescriptiveSetTheoryPackage A F L) where
  projectiveHierarchyClosed : D.projectiveHierarchy
  borelSetsClosed : D.borelSets
  determinacyClosed : D.determinacy
  uniformizationClosed : D.uniformization

def DescriptiveSetTheoryClosed {A : SetTheoryAxiomPackage} {F : CombinatorialForcingPackage A} {L : LargeCardinalPackage A F} (D : DescriptiveSetTheoryPackage A F L) : Prop :=
  D.projectiveHierarchy ∧ D.borelSets ∧ D.determinacy ∧ D.uniformization

theorem descriptive_set_theory_closed_from_evidence {A : SetTheoryAxiomPackage} {F : CombinatorialForcingPackage A} {L : LargeCardinalPackage A F} (D : DescriptiveSetTheoryPackage A F L) (E : DescriptiveSetTheoryEvidence D) : DescriptiveSetTheoryClosed D := by
  exact And.intro E.projectiveHierarchyClosed (And.intro E.borelSetsClosed (And.intro E.determinacyClosed E.uniformizationClosed))

end CombinatorialSetTheoryTheoremCanonicalLaneLean
end HautevilleHouse