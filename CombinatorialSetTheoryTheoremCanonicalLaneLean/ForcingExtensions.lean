import CombinatorialSetTheoryTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryTheoremCanonicalLaneLean

structure ForcingExtensionPackage (A : AdmissibleClass) where
  partialOrder : Type u
  conditions : List Type
  genericFilter : Prop
  extensionModel : Type v
  forcingRelationDefined : Prop
  genericExtensionExists : Prop
  genericityPreservesCardinals : Prop
  names : Type w
  forcingRelationCoherent : Prop

def ForcingExtensionClosed {A : AdmissibleClass} (P : ForcingExtensionPackage A) : Prop :=
  P.genericExtensionExists ∧ P.genericityPreservesCardinals ∧ P.forcingRelationCoherent

end CombinatorialSetTheoryTheoremCanonicalLaneLean
end HautevilleHouse