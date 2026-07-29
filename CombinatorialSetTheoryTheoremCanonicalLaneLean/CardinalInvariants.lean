import CombinatorialSetTheoryTheoremCanonicalLaneLean.CombinatorialPrincipleS

/-!
# Cardinal Invariants Package
-/

namespace HautevilleHouse
namespace CombinatorialSetTheoryTheoremCanonicalLaneLean

structure CardinalInvariantsPackage where
  continuumHypothesisNotUsed : Prop
  cardinalArithmeticDefined : Prop
  cofinalitiesPreserved : Prop
  cardinalCharacteristicsCalculated : Prop

structure CardinalInvariantsEvidence (C : CardinalInvariantsPackage) where
  continuumHypothesisNotUsedClosed : C.continuumHypothesisNotUsed
  cardinalArithmeticDefinedClosed : C.cardinalArithmeticDefined
  cofinalitiesPreservedClosed : C.cofinalitiesPreserved
  cardinalCharacteristicsCalculatedClosed : C.cardinalCharacteristicsCalculated

def CardinalInvariantsClosed (C : CardinalInvariantsPackage) : Prop :=
  C.continuumHypothesisNotUsed ∧ C.cardinalArithmeticDefined ∧
  C.cofinalitiesPreserved ∧ C.cardinalCharacteristicsCalculated

theorem cardinal_invariants_closed_from_evidence
    (C : CardinalInvariantsPackage) (E : CardinalInvariantsEvidence C) :
    CardinalInvariantsClosed C := by
  exact And.intro E.continuumHypothesisNotUsedClosed
    (And.intro E.cardinalArithmeticDefinedClosed
      (And.intro E.cofinalitiesPreservedClosed E.cardinalCharacteristicsCalculatedClosed))

end CombinatorialSetTheoryTheoremCanonicalLaneLean
end HautevilleHouse