import CombinatorialSetTheoryTheoremCanonicalLaneLean.ForcingExtension

/-!
# Diamond Principle Package
-/

namespace HautevilleHouse
namespace CombinatorialSetTheoryTheoremCanonicalLaneLean

structure DiamondPrinciplePackage {G : SetTheoryGroundModel}
    (F : ForcingExtensionPackage G) where
  diamondSequenceExists : Prop
  diamondSequenceGuessesAllSubsets : Prop
  diamondImpliesCHNot : Prop
  consistencyStrength : Prop

structure DiamondPrincipleEvidence {G : SetTheoryGroundModel}
    {F : ForcingExtensionPackage G} (D : DiamondPrinciplePackage F) where
  diamondSequenceExistsClosed : D.diamondSequenceExists
  diamondSequenceGuessesAllSubsetsClosed : D.diamondSequenceGuessesAllSubsets
  diamondImpliesCHNotClosed : D.diamondImpliesCHNot
  consistencyStrengthClosed : D.consistencyStrength

def DiamondPrincipleClosed {G : SetTheoryGroundModel}
    {F : ForcingExtensionPackage G} (D : DiamondPrinciplePackage F) : Prop :=
  D.diamondSequenceExists ∧ D.diamondSequenceGuessesAllSubsets ∧
  D.diamondImpliesCHNot ∧ D.consistencyStrength

theorem diamond_principle_closed_from_evidence
    {G : SetTheoryGroundModel} {F : ForcingExtensionPackage G}
    (D : DiamondPrinciplePackage F) (E : DiamondPrincipleEvidence D) :
    DiamondPrincipleClosed D := by
  exact And.intro E.diamondSequenceExistsClosed
    (And.intro E.diamondSequenceGuessesAllSubsetsClosed
      (And.intro E.diamondImpliesCHNotClosed E.consistencyStrengthClosed))

end CombinatorialSetTheoryTheoremCanonicalLaneLean
end HautevilleHouse