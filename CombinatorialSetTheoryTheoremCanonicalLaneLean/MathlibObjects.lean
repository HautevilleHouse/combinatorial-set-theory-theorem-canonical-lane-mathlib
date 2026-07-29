import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialSetTheoryTheoremCanonicalLaneLean

structure SetTheorySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure SetTheoryAdmittedObject where
  space : SetTheorySpace
  cardinalContinuum : Prop
  inaccessibility : Prop
  forcingModel : Type
  chIndependence : Prop
  conclusion : chIndependence

structure SetTheoryEndgameState where
  object : SetTheoryAdmittedObject

def SetTheoryWitnessClosed (O : SetTheoryAdmittedObject) : Prop :=
  O.chIndependence

end CombinatorialSetTheoryTheoremCanonicalLaneLean
end HautevilleHouse
