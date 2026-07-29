import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryTheoremCanonicalLaneLean

structure SetSystemDimensionPackage where
  groundSet : Type u
  system : Set (Set (groundSet))
  dimension : Nat
  dimensionBound : Prop
  combinatorialDimensionDefined : Prop

structure SetSystemDimensionEvidence (S : SetSystemDimensionPackage) where
  dimensionBoundClosed : S.dimensionBound
  combinatorialDimensionDefinedClosed : S.combinatorialDimensionDefined

def SetSystemDimensionClosed (S : SetSystemDimensionPackage) : Prop :=
  S.dimensionBound ∧ S.combinatorialDimensionDefined

theorem set_system_dimension_closed_from_evidence
    (S : SetSystemDimensionPackage) (E : SetSystemDimensionEvidence S) :
    SetSystemDimensionClosed S := by
  exact And.intro E.dimensionBoundClosed E.combinatorialDimensionDefinedClosed

end CombinatorialSetTheoryTheoremCanonicalLaneLean
end HautevilleHouse
