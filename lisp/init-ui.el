;;; init-ui.el --- Supporess GUI features -*- lexical-binding: t -*-
;;; Commentary

;;; Code

(setq use-dialog-box nil)
(setq inihibit-startup-screen t)

(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)

;; who ever thought blinking cursors were a good idea?
(blink-cursor-mode -1)

;; disable the annoying bell
(setq ring-bell-function 'ignore)

;; disable the startup screen
(setq inhibit-startup-screen t)


;; y/n answers
(fset 'yes-or-no-p 'y-or-n-p)


(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)


(use-package fontaine
  :config
  (setq fontaine-presets
   '((regular
	  :default-family "Iosevka"
	  :default-height 100
	  :variable-pitch-family "Lexend")))
  (fontaine-set-preset 'regular))


(provide 'init-ui)
;;; init-ui.el ends here
