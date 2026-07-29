import CombinatorialSetTheoryTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CombinatorialSetTheoryTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : CombinatorialSetTheoryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop := 
  CombinatorialSetTheoryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CombinatorialSetTheoryTheoremCanonicalLaneLean
end HautevilleHouse