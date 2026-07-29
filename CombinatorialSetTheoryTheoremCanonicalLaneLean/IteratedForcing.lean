import CombinatorialSetTheoryTheoremCanonicalLaneLean.ForcingExtensions

namespace HautevilleHouse
namespace CombinatorialSetTheoryTheoremCanonicalLaneLean

structure IteratedForcingPackage {A : AdmissibleClass} (Base : ForcingExtensionPackage A) where
  iterationLength : Ordinal
  limitStages : Set Ordinal
  directLimitExists : Prop
  cofinalityPreserved : Prop
  chainConditionHolds : Prop
  closureUnderLimits : Prop
  amalgamationProperty : Prop

def IteratedForcingClosed {A : AdmissibleClass} {Base : ForcingExtensionPackage A} (I : IteratedForcingPackage Base) : Prop :=
  I.directLimitExists ∧ I.cofinalityPreserved ∧ I.chainConditionHolds

end CombinatorialSetTheoryTheoremCanonicalLaneLean
end HautevilleHouse