import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean.MonoidalCategory
import HautevilleHouse.CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean.SymmetricMonoidalStructure

namespace HautevilleHouse
namespace CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean

structure GraphicalCalculusPackage {M : MonoidalCategoryPackage} {S : SymmetricMonoidalStructurePackage M} where
  stringDiagramRepresentation : Prop
  graphicalCoherence : Prop
  yonedaEmbedding : Prop

structure GraphicalCalculusEvidence {M : MonoidalCategoryPackage} {S : SymmetricMonoidalStructurePackage M}
    (G : GraphicalCalculusPackage M S) where
  stringDiagramRepresentationClosed : G.stringDiagramRepresentation
  graphicalCoherenceClosed : G.graphicalCoherence
  yonedaEmbeddingClosed : G.yonedaEmbedding

def GraphicalCalculusClosed {M : MonoidalCategoryPackage} {S : SymmetricMonoidalStructurePackage M}
    (G : GraphicalCalculusPackage M S) : Prop :=
  G.stringDiagramRepresentation ∧ G.graphicalCoherence ∧ G.yonedaEmbedding

theorem graphical_calculus_closed_from_evidence {M : MonoidalCategoryPackage} {S : SymmetricMonoidalStructurePackage M}
    (G : GraphicalCalculusPackage M S) (E : GraphicalCalculusEvidence G) : GraphicalCalculusClosed G := by
  exact And.intro E.stringDiagramRepresentationClosed
    (And.intro E.graphicalCoherenceClosed E.yonedaEmbeddingClosed)

end CategoryTheorySymmetricMonoidalCategoriesLemmaCanonicalLaneLean
end HautevilleHouse