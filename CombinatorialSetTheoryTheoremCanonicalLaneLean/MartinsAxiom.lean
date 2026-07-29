import CombinatorialSetTheoryTheoremCanonicalLaneLean.ForcingExtension

/-!
# Martin's Axiom Package
-/

namespace HautevilleHouse
namespace CombinatorialSetTheoryTheoremCanonicalLaneLean

structure MartinsAxiomPackage {G : SetTheoryGroundModel}
    (F : ForcingExtensionPackage G) where
  maKappaHolds : Prop
  cccForcingPreserved : Prop
  maImpliesNonCH : Prop
  consistencyStrengthGiven : Prop

structure MartinsAxiomEvidence {G : SetTheoryGroundModel}
    {F : ForcingExtensionPackage G} (M : MartinsAxiomPackage F) where
  maKappaHoldsClosed : M.maKappaHolds
  cccForcingPreservedClosed : M.cccForcingPreserved
  maImpliesNonCHClosed : M.maImpliesNonCH
  consistencyStrengthGivenClosed : M.consistencyStrengthGiven

def MartinsAxiomClosed {G : SetTheoryGroundModel}
    {F : ForcingExtensionPackage G} (M : MartinsAxiomPackage F) : Prop :=
  M.maKappaHolds ∧ M.cccForcingPreserved ∧ M.maImpliesNonCH ∧ M.consistencyStrengthGiven

theorem martins_axiom_closed_from_evidence
    {G : SetTheoryGroundModel} {F : ForcingExtensionPackage G}
    (M : MartinsAxiomPackage F) (E : MartinsAxiomEvidence M) :
    MartinsAxiomClosed M := by
  exact And.intro E.maKappaHoldsClosed
    (And.intro E.cccForcingPreservedClosed
      (And.intro E.maImpliesNonCHClosed E.consistencyStrengthGivenClosed))

end CombinatorialSetTheoryTheoremCanonicalLaneLean
end HautevilleHouse