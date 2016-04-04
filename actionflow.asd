
(asdf:defsystem :actionflow
  :name "actionflow"
  :version "0.0.2"
  :description "Flows and diagrams based on Raphael"
  :author "Crackbot <thecrackbot@gmail.com>"
  :maintainer "Crackbot <thecrackbot@gmail.com>"
  :license "The MIT License (MIT)"
  :components ((:static-file "actionflow.asd")
               (:file "flow")

               (:javascript-file "bower_components/lodash/lodash")
               (:javascript-file "bower_components/raphael/raphael")
               (:javascript-file "js/raphael-connections")
               
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

  :depends-on (:parenscript :serve.paren :contracts.paren :ps-events :plus.paren :paren-files))
                  
