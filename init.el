;;; init-el --- The core of my emcas configuration -*- lexical-binding: t -*-
;;; Commentary

;;; Code:

;; The entrypoint for all of my configuration files
(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))


(setq gc-cons-threshold (* 128 1024 1024))

(setq custom-file (locate-user-emacs-file "custom.el"))

;; Initialize elpaca, my main package manager.
(require 'init-elpaca)

;; I use diminish to make my packages shut up, I load it here to ensure it's available.
;; Packages
(require 'init-god)
(require 'init-ui)
(require 'init-vcs)
(require 'init-themes)
