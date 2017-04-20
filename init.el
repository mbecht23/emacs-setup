(defconst my/emacs-directory "C:/.emacs.d")
(defconst my/gtdfile (expand-file-name "gtd.org" my/emacs-directory))

;; basic things we don't want emas to start with
(setq inhibit-startup-message t)
(setq initial-scratch-message "")
(setq tool-bar-mode nil)
(setq make-backup-files nil)

;; the package manager
;; use list-packages to find emacs pkgs that can be installed
(require 'package)
;;(add-to-list 'package-archives
;;             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;; Bootstrap use-package
;; Install use-package if it's not already installed.
;; use-package is used to configure the rest of the packages.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;;; Load the config
(org-babel-load-file (expand-file-name "config.org" my/emacs-directory))
