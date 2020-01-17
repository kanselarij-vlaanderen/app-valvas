(define-resource newsletter-info ()
  :class (s-prefix "besluitvorming:NieuwsbriefInfo")
  :properties `((:text                  :string   ,(s-prefix "besluitvorming:inhoud"))
                (:richtext              :string   ,(s-prefix "ext:htmlInhoud"))
                (:subtitle              :string   ,(s-prefix "dbpedia:subtitle"))
                (:publication-date      :datetime ,(s-prefix "dct:issued"))
                (:publication-doc-date  :datetime ,(s-prefix "ext:issuedDocDate"))
                (:mandatee-proposal     :string   ,(s-prefix "ext:voorstelVan"))
                (:title                 :string   ,(s-prefix "dct:title"))
                (:category              :string   ,(s-prefix "ext:newsItemCategory")))
  :has-many `((theme                    :via      ,(s-prefix "ext:themesOfSubcase")
                                        :as "themes")
              (document        :via      ,(s-prefix "ext:documentVersie")
                                        :as "document-versions"))
  :resource-base (s-url "http://kanselarij.vo.data.gift/id/nieuwsbrief-infos/")
  :features '(include-uri)
  :on-path "newsletter-infos")

(define-resource theme ()
  :class (s-prefix "ext:ThemaCode") ;; NOTE: as well as skos:Concept
  :properties `((:label         :string ,(s-prefix "skos:prefLabel"))
                (:scope-note    :string ,(s-prefix "skos:scopeNote"))
                (:alt-label     :string ,(s-prefix "skos:altLabel"))
                (:deprecated    :bool   ,(s-prefix "owl:deprecated")))
  :resource-base (s-url "http://kanselarij.vo.data.gift/id/concept/thema-codes/")
  :features `(no-pagination-defaults include-uri)
  :on-path "themes")
