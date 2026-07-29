import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialSetTheoryTheoremCanonicalLaneLean.DescriptiveSetTheory

namespace HautevilleHouse
namespace CombinatorialSetTheoryTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  SetTheoryAxiomClosed A.object ∧ CombinatorialForcingClosed A.object ∧ LargeCardinalClosed A.object ∧ DescriptiveSetTheoryClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  have h1 : SetTheoryAxiomClosed A.object := A.setTheoryAxiomClosed
  have h2 : CombinatorialForcingClosed A.object := A.combinatorialForcingClosed
  have h3 : LargeCardinalClosed A.object := A.largeCardinalClosed
  have h4 : DescriptiveSetTheoryClosed A.object := A.descriptiveSetTheoryClosed
  exact ⟨h1, h2, h3, h4⟩

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedSetTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_set_theory_endgame (A : AdmissibleClass) : ConstrainedSetTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CombinatorialSetTheoryTheoremCanonicalLaneLean
end HautevilleHouse