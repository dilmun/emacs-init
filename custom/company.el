;; enki: company autocompletion mode
(require 'company)
(require 'company-c-headers)
(add-hook 'after-init-hook 'global-company-mode)
(add-to-list 'company-backends 'company-c-headers)
(add-to-list 'company-c-headers-path-system "/usr/include/c++/4.9/")
(add-to-list 'company-c-headers-path-system "/usr/local/qt4/include")
;;(setq company-backends (delete 'company-semantic company-backends))

(require 'cc-mode)
(define-key c-mode-map  (kbd "<C-tab>") 'company-complete)
(define-key c++-mode-map (kbd "<C-tab>") 'company-complete)


(defvar company-c-headers-modes
  `(
    (c-mode     . ,(rx ".h" line-end))
    (c++-mode   . ,(rx (or (: line-start (one-or-more (in "A-Za-z0-9_")))
                           (or ".h" ".hpp" ".hxx" ".hh" "Object"))
                       line-end))
    (objc-mode  . ,(rx ".h" line-end))
    )
  "Assoc list of supported major modes and associated header file names.")
