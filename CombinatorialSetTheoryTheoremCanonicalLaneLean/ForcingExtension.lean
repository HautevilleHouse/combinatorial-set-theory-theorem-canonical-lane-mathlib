import CombinatorialSetTheoryTheoremCanonicalLaneLean.CardinalInvariants

/-!
# Forcing Extension Package
-/

namespace HautevilleHouse
namespace CombinatorialSetTheoryTheoremCanonicalLaneLean

structure ForcingExtensionPackage {G : SetTheoryGroundModel}
    (M : SetTheoryModel) where
  posetExists : Prop
  genericFilterExists : Prop
  forcingRelationDefined : Prop
  extensionModelSatisfiesZFC : Prop

structure ForcingExtensionEvidence {G : SetTheoryGroundModel}
    {M : SetTheoryModel} (F : ForcingExtensionPackage M) where
  posetExistsClosed : F.posetExists
  genericFilterExistsClosed : F.genericFilterExists
  forcingRelationDefinedClosed : F.forcingRelationDefined
  extensionModelSatisfiesZFCTerm : F.extensionModelSatisfiesZFC

def ForcingExtensionClosed {G : SetTheoryGroundModel}
    {M : SetTheoryModel} (F : ForcingExtensionPackage M) : Prop :=
  F.posetExists ∧ F.genericFilterExists ∧ F.forcingRelationDefined ∧ F.extensionModelSatisfiesZFC

theorem forcing_extension_closed_from_evidence
    {G : SetTheoryGroundModel} {M : SetTheoryModel}
    (F : ForcingExtensionPackage M) (E : ForcingExtensionEvidence F) :
    ForcingExtensionClosed F := by
  exact And.intro E.posetExistsClosed
    (And.intro E.genericFilterExistsClosed
      (And.intro E.forcingRelationDefinedClosed E.extensionModelSatisfiesZFCTerm))

end CombinatorialSetTheoryTheoremCanonicalLaneLean
end HautevilleHouse