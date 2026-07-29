import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure StrictificationPackage where
  strictMonoidalEquivalence : Prop
  strictTensorProduct : Prop
  strictUnitObject : Prop
  strictAssociator : Prop
  strictUnitors : Prop
  strictSymmetricBraid : Prop

structure StrictificationEvidence (S : StrictificationPackage) where
  strictMonoidalEquivalenceClosed : S.strictMonoidalEquivalence
  strictTensorProductClosed : S.strictTensorProduct
  strictUnitObjectClosed : S.strictUnitObject
  strictAssociatorClosed : S.strictAssociator
  strictUnitorsClosed : S.strictUnitors
  strictSymmetricBraidClosed : S.strictSymmetricBraid

def StrictificationClosed (S : StrictificationPackage) : Prop :=
  S.strictMonoidalEquivalence ∧ S.strictTensorProduct ∧ S.strictUnitObject ∧
  S.strictAssociator ∧ S.strictUnitors ∧ S.strictSymmetricBraid

theorem strictification_closed_from_evidence
    (S : StrictificationPackage) (E : StrictificationEvidence S) :
    StrictificationClosed S := by
  exact And.intro E.strictMonoidalEquivalenceClosed
    (And.intro E.strictTensorProductClosed
      (And.intro E.strictUnitObjectClosed
        (And.intro E.strictAssociatorClosed
          (And.intro E.strictUnitorsClosed E.strictSymmetricBraidClosed))))

end CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse