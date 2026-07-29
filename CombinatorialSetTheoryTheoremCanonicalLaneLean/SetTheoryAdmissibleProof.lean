import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryTheoremCanonicalLaneLean

structure ForcingModelPackage where
  poset : Type
  genericFilter : Prop
  names : Type
  forcingRelation : Prop

structure ForcingModelEvidence (F : ForcingModelPackage) where
  posetDefined : F.poset ≠ Empty
  genericExists : F.genericFilter
  namesDefined : F.names ≠ Empty
  forcingRelationClosed : F.forcingRelation

def ForcingModelClosed (F : ForcingModelPackage) : Prop :=
  (F.poset ≠ Empty) ∧ F.genericFilter ∧ (F.names ≠ Empty) ∧ F.forcingRelation

theorem forcing_model_closed_from_evidence (F : ForcingModelPackage) (E : ForcingModelEvidence F) :
    ForcingModelClosed F := by
  exact And.intro E.posetDefined (And.intro E.genericExists (And.intro E.namesDefined E.forcingRelationClosed))

end CombinatorialSetTheoryTheoremCanonicalLaneLean
end HautevilleHouse
