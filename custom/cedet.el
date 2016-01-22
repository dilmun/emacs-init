;; enki: setting up semantic
(require 'semantic)
(global-semanticdb-minor-mode 1)
(global-semantic-idle-scheduler-mode 1)
(semantic-mode 1)
(semantic-add-system-include "/usr/include/boost" 'c++-mode)

;; enki: setting up CEDET
(require 'ede)
(global-ede-mode)

;; enki: parsing qt4
(add-to-list 'auto-mode-alist
'("/usr/local/qt4/include" . c++-mode))
(semantic-add-system-include 
"/usr/local/qt4/include" 'c++-mode)

;; (add-hook 'c++-mode-hook
;;     (lambda ()
;;       (add-to-list 'semantic-lex-c-preprocessor-symbol-file
;; 		   "/usr/local/qt4/include/Qt/qconfig.h")
;;       (add-to-list 'semantic-lex-c-preprocessor-symbol-file
;; 		   "/usr/local/qt4/include/Qt/qconfig-dist.h")
;;       ))



