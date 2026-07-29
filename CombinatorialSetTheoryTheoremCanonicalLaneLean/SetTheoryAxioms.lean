import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryTheoremCanonicalLaneLean

structure SetTheoryAxiomPackage where
  zfc : Prop
  axiomOfChoice : Prop
  continuumHypothesis : Prop
  cardinalArithmetic : Prop

structure SetTheoryAxiomEvidence (A : SetTheoryAxiomPackage) where
  zfcClosed : A.zfc
  axiomOfChoiceClosed : A.axiomOfChoice
  continuumHypothesisClosed : A.continuumHypothesis
  cardinalArithmeticClosed : A.cardinalArithmetic

def SetTheoryAxiomClosed (A : SetTheoryAxiomPackage) : Prop :=
  A.zfc ∧ A.axiomOfChoice ∧ A.continuumHypothesis ∧ A.cardinalArithmetic

theorem set_theory_axiom_closed_from_evidence (A : SetTheoryAxiomPackage) (E : SetTheoryAxiomEvidence A) : SetTheoryAxiomClosed A := by
  exact And.intro E.zfcClosed (And.intro E.axiomOfChoiceClosed (And.intro E.continuumHypothesisClosed E.cardinalArithmeticClosed))

end CombinatorialSetTheoryTheoremCanonicalLaneLean
end HautevilleHouse