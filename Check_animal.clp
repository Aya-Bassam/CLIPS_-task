         CLIPS (6.30 3/17/15)
CLIPS>  (deftemplate animal
       (slot type))
CLIPS> (defrule check_animal
         (animal (type ?t))
         (test (or (eq ?t duck) (eq ?t turtle)))
         =>
         (printout t "This is a " ?t "." crlf))
CLIPS> (assert (animal (type duck)))
       (assert (animal (type turtle)))
       (assert (animal (type cat))) ;<Fact-1>
CLIPS> (run)
This is a duck.
CLIPS> 
