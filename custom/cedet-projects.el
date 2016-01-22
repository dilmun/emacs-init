(ede-cpp-root-project "c-demo-project"
                      :file "~/Sandbox/C++/Demo/c-demo-project/Makefile"
                      :include-path '("/include1"
                                      "/include2") ;; add more include
                      ;; paths here
                      :system-include-path '("~/Sandbox/Linux/linux"))


;; (set (make-local-variable 'qt4-include-path) "/usr/local/qt4/include/")
;; (set (make-local-variable 'qt4-headers) '())
;; (mapcar
;;  (lambda (x) (add-to-list 'qt4-headers (expand-file-name x qt4-include-path)))
;;  '("QtCore" "QtGui"))



(ede-cpp-root-project "QtTest"
                      :file "~/Sandbox/C++/Qt/Testoune/Testoune.pro"
                      ;; paths here
;;                      :system-include-path qt4-headers)
                      :system-include-path '("/usr/local/qt4/include")
		      :spp-files '("/usr/local/qt4/include/Qt/qconfig.h"
				   "/usr/local/qt4/include/Qt/qconfig-dist.h")
		      )

