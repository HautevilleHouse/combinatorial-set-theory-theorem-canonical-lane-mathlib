import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialSetTheoryTheoremCanonicalLaneLean.SetTheoryAxioms

namespace HautevilleHouse
namespace CombinatorialSetTheoryTheoremCanonicalLaneLean

structure CombinatorialForcingPackage {A : SetTheoryAxiomPackage} where
  poset : Type u
  genericFilter : Prop
  forcingRelation : Prop
  extensionModel : Prop

structure CombinatorialForcingEvidence {A : SetTheoryAxiomPackage} (F : CombinatorialForcingPackage A) where
  posetExists : F.poset
  genericFilterExists : F.genericFilter
  forcingRelationDefined : F.forcingRelation
  extensionModelConsistent : F.extensionModel

def CombinatorialForcingClosed {A : SetTheoryAxiomPackage} (F : CombinatorialForcingPackage A) : Prop :=
  F.poset ∧ F.genericFilter ∧ F.forcingRelation ∧ F.extensionModel

theorem combinatorial_forcing_closed_from_evidence {A : SetTheoryAxiomPackage} (F : CombinatorialForcingPackage A) (E : CombinatorialForcingEvidence F) : CombinatorialForcingClosed F := by
  exact And.intro E.posetExists (And.intro E.genericFilterExists (And.intro E.forcingRelationDefined E.extensionModelConsistent))

end CombinatorialSetTheoryTheoremCanonicalLaneLean
end HautevilleHouse