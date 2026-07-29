import HautevilleHouse.CanonicalLaneMathlibCore
import Mathlib.CategoryTheory.Monoidal.Category
import Mathlib.CategoryTheory.Monoidal.Braided

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

open CategoryTheory
open MonoidalCategory

structure SymmetricMonoidalSpace where
  carrier : Type u
  category : Category carrier
  monoidal : MonoidalCategory carrier
  braided : BraidedCategory carrier
  symmetric : SymmetricCategory carrier

structure SymmetricMonoidalAdmittedObject where
  space : SymmetricMonoidalSpace
  coherenceLemmas : Prop
  coherenceProof : coherenceLemmas

def SymmetricMonoidalWitnessClosed (O : SymmetricMonoidalAdmittedObject) : Prop :=
  O.coherenceLemmas

structure AdmissibleClass where
  object : SymmetricMonoidalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  SymmetricMonoidalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse