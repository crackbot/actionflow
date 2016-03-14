
(defsystem :actionflow
  :name "actionflow"
  :author "Mikhail Malyuk"
  :maintainer "Mikhail Malyuk"
  :license ""
  :components ((:static-file "actionflow.asd")
               (:file "flow")
               (:module "js"
                        :components ((:javascript-file "raphael-connections")))
               (:module "bower_components"
                        :components (:javascript-file "raphael/raphael"))
               (:module "src"
                        :components ((:parenscript-file "macro")
                                     (:parenscript-file "contracts")
                                     (:parenscript-file "util")
                                     
                                     (:parenscript-file "style")
                                     (:parenscript-file "shape")
                                     (:parenscript-file "shape/rectangle")
                                     (:parenscript-file "shape/sideway-triangle")
                                     
                                     (:parenscript-file "connection")
                                     
                                     (:parenscript-file "io")
                                     (:parenscript-file "io/connection")
                                     (:parenscript-file "io/factory")
                                     (:parenscript-file "io/input")
                                     (:parenscript-file "io/output")
                                     
                                     (:parenscript-file "action")
                                     (:parenscript-file "flow"))))

  :depends-on (:parenscript :serve.paren :contracts.paren :plus.paren :paren-files))
                  
