;;; init-languages.el --- settings for languages -*- lexical-binding: t -*-
;;
;; Copyright @ 2024 Charlie Root
;;
;; Author: Charlie Root <charlie@charlieroot.dev>
;; URL: https://charlieroot.dev

;;; Commentary:

;; This file enables modes and sets settitngs for all languages I need.

;;; Licence:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code

(use-package markdown-mode)
(use-package nix-mode
  :mode "\\.nix\\'")

;; lisp
(use-package smartparens
  :hook (prog-mode . smartparens-mode))

(use-package treesit-auto
  :ensure t
  :config
  (global-treesit-auto-mode))

(use-package rustic
  :mode ("\\.rs'" . rust-mode)
  :mode ("\\.rs'" . rustic-mode))

(use-package typst-ts-mode
  :ensure (:type git :host sourcehut :repo "meow_king/typst-ts-mode" :files (:defaults "*.el"))
  :custom
  ;; don't add "--open" if you'd like `watch` to be an error detector
  (typst-ts-mode-watch-options "--open")
  
  (typst-ts-mode-enable-raw-blocks-highlight t)
  (typst-ts-mode-highlight-raw-blocks-at-startup t))

(provide 'init-languages)
