import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure BraidedMonoidalPackage (A : AdmissibleClass) where
  braiding : ∀ a b : A.object.category, A.object.tensorProduct a b ≅ A.object.tensorProduct b a
  hexagonLeft : Prop
  hexagonRight : Prop
  hexagonLeftProof : hexagonLeft
  hexagonRightProof : hexagonRight

structure BraidedMonoidalEvidence (A : AdmissibleClass) (B : BraidedMonoidalPackage A) where
  hexagonLeftClosed : B.hexagonLeft
  hexagonRightClosed : B.hexagonRight

def BraidedMonoidalClosed (A : AdmissibleClass) (B : BraidedMonoidalPackage A) : Prop :=
  B.hexagonLeft ∧ B.hexagonRight

theorem braided_monoidal_closed_from_evidence (A : AdmissibleClass) (B : BraidedMonoidalPackage A) (E : BraidedMonoidalEvidence A B) :
    BraidedMonoidalClosed A B := by
  exact And.intro E.hexagonLeftClosed E.hexagonRightClosed

end CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse