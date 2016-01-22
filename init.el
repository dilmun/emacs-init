(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (tango-dark)))
 '(ibuffer-saved-filter-groups
   (quote
    (("C++"
      ("shell"
       (used-mode . shell-mode))
      ("dir"
       (used-mode . dired-mode))
      ("C++"
       (used-mode . c++-mode))
      ("elisp"
       (used-mode . emacs-lisp-mode))))))
 '(ibuffer-saved-filters
   (quote
    (("gnus"
      ((or
	(mode . message-mode)
	(mode . mail-mode)
	(mode . gnus-group-mode)
	(mode . gnus-summary-mode)
	(mode . gnus-article-mode))))
     ("programming"
      ((or
	(mode . emacs-lisp-mode)
	(mode . cperl-mode)
	(mode . c-mode)
	(mode . java-mode)
	(mode . idl-mode)
	(mode . lisp-mode)))))))
 '(safe-local-variable-values
   (quote
    ((company-c-headers-path-user "." "/usr/local/qt4/include/QtGui" "/usr/local/qt4/include/QtCore")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; enki: use this to load sub-initfiles
(defun load-user-file (file)
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file "~/.emacs.d/")))

(load-user-file "custom/navigation.el")
(load-user-file "custom/packages.el")
(load-user-file "custom/ggtags.el")
(load-user-file "custom/style.el")
(load-user-file "custom/company.el")
(load-user-file "custom/cedet.el")
(load-user-file "custom/cedet-projects.el")
(load-user-file "custom/yasnippet.el")
;; (load-user-file "custom/rtags.el")
