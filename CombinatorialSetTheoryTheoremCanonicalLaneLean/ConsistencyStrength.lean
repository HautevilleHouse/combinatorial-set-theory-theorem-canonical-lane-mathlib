import CombinatorialSetTheoryTheoremCanonicalLaneLean.DiamondPrinciple
import CombinatorialSetTheoryTheoremCanonicalLaneLean.MartinsAxiom

/-!
# Consistency Strength Package
-/

namespace HautevilleHouse
namespace CombinatorialSetTheoryTheoremCanonicalLaneLean

structure ConsistencyStrengthPackage {G : SetTheoryGroundModel}
    {F : ForcingExtensionPackage G} (D : DiamondPrinciplePackage F) (M : MartinsAxiomPackage F) where
  diamondConsistencyStrength : Prop
  maConsistencyStrength : Prop
  relativeConsistencyProved : Prop
  equiconsistencyClaim : Prop

structure ConsistencyStrengthEvidence {G : SetTheoryGroundModel}
    {F : ForcingExtensionPackage G} {D : DiamondPrinciplePackage F} {M : MartinsAxiomPackage F}
    (C : ConsistencyStrengthPackage D M) where
  diamondConsistencyStrengthClosed : C.diamondConsistencyStrength
  maConsistencyStrengthClosed : C.maConsistencyStrength
  relativeConsistencyProvedClosed : C.relativeConsistencyProved
  equiconsistencyClaimClosed : C.equiconsistencyClaim

def ConsistencyStrengthClosed {G : SetTheoryGroundModel}
    {F : ForcingExtensionPackage G} {D : DiamondPrinciplePackage F} {M : MartinsAxiomPackage F}
    (C : ConsistencyStrengthPackage D M) : Prop :=
  C.diamondConsistencyStrength ∧ C.maConsistencyStrength ∧
  C.relativeConsistencyProved ∧ C.equiconsistencyClaim

theorem consistency_strength_closed_from_evidence
    {G : SetTheoryGroundModel} {F : ForcingExtensionPackage G}
    {D : DiamondPrinciplePackage F} {M : MartinsAxiomPackage F}
    (C : ConsistencyStrengthPackage D M) (E : ConsistencyStrengthEvidence C) :
    ConsistencyStrengthClosed C := by
  exact And.intro E.diamondConsistencyStrengthClosed
    (And.intro E.maConsistencyStrengthClosed
      (And.intro E.relativeConsistencyProvedClosed E.equiconsistencyClaimClosed))

end CombinatorialSetTheoryTheoremCanonicalLaneLean
end HautevilleHouse