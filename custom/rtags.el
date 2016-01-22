;(setq rtags-autostart-diagnostics t)

(load-file "~/Apps/rtags/src/rtags.el")
(load-file "~/Apps/rtags/src/company-rtags.el")

(require 'rtags)
(setq rtags-completions-enabled t)
(add-to-list 'company-backends 'company-rtags)
(rtags-diagnostics)
