(in-package :mu-cl-resources)
(defparameter *cache-model-properties-p* t)
(defparameter *cache-count-queries* t)
(defparameter *supply-cache-headers-p* t
  "when non-nil, cache headers are supplied.  this works together with mu-cache.")
(defparameter *include-count-in-paginated-responses* t
  "when non-nil, all paginated listings will contain the number
   of responses in the result object's meta.")
(defparameter *max-group-sorted-properties* nil)
;;(defparameter sparql:*query-log-types* nil) ; disable query logs
;;(defparameter *log-delta-clear-keys* t)
(setf sparql:*experimental-no-application-graph-for-sudo-select-queries* t)

(read-domain-file "besluit-domain.json")
(read-domain-file "mandaat-domain.json")
(read-domain-file "bijlage-domain.json")
(read-domain-file "nieuwsbericht-domain.json")