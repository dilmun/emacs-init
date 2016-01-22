;; enki: Add melpa to package repo list
(require 'package)
(add-to-list 'package-archives
       '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)
