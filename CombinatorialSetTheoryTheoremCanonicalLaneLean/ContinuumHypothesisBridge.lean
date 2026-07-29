import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryTheoremCanonicalLaneLean

structure ContinuumHypothesisPackage where
  chStatement : Prop
  independenceFromZFC : Prop
  forcingConstructions : Prop

structure ContinuumHypothesisEvidence (C : ContinuumHypothesisPackage) where
  chStatementClosed : C.chStatement
  independenceFromZFCEvidence : C.independenceFromZFC
  forcingConstructionsClosed : C.forcingConstructions

def ContinuumHypothesisClosed (C : ContinuumHypothesisPackage) : Prop :=
  C.chStatement ∧ C.independenceFromZFC ∧ C.forcingConstructions

theorem continuum_hypothesis_closed_from_evidence (C : ContinuumHypothesisPackage) (E : ContinuumHypothesisEvidence C) :
    ContinuumHypothesisClosed C := by
  exact And.intro E.chStatementClosed (And.intro E.independenceFromZFCEvidence E.forcingConstructionsClosed)

end CombinatorialSetTheoryTheoremCanonicalLaneLean
end HautevilleHouse
