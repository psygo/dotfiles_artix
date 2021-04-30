(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(setq inhibit-startup-message t)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)
(menu-bar-mode -1)

(setq custom-safe-themes t)
(load-theme 'atom-one-dark t)

;; My Packages

;; - dracula-theme
;; - atom-one-dark-theme
;; - evil
;; - magit

(require 'evil)
(evil-mode 1)

(set-frame-font "Fira Code Medium 14" nil t)
(global-display-line-numbers-mode)

(custom-enabled-themes '(atom-one-dark))
(package-selected-packages '(evil magit atom-one-dark-theme dracula-theme))

