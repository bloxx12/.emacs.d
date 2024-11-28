;;; init-ui.el --- Suppress GUI features -*- lexical-binding: t -*-
;;
;; Copyright @ 2024 Charlie Root
;;
;; Author Charlie Root <charlie@charlieroot.dev>
;; URL: https://charlieroot.dev

;;; Commentary:

;; This file configures org mode to my likings.

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

(setq default-frame-alist      (append (list
	           '(min-height . 1)
               '(height     . 45)
	           '(min-width  . 1)
               '(width      . 81)
               '(vertical-scroll-bars . nil)
               '(internal-border-width . 24)
               '(left-fringe    . 1)
               '(right-fringe   . 1)
               '(tool-bar-lines . 0)
               '(menu-bar-lines . 0))))


(setq use-dialog-box nil)
(setq inihibit-startup-screen t)
(scroll-bar-mode -1)
(show-paren-mode 1)
(fringe-mode '(0 . 0))
(display-time-mode 1)
;; who ever thought blinking cursors were a good idea?
(blink-cursor-mode -1)

;; disable the annoying bell
(setq ring-bell-function 'ignore)

;; disable the startup screen
(setq inhibit-startup-screen t)

(set-frame-parameter nil 'alpha-background 100)
;; y/n answers
(fset 'yes-or-no-p 'y-or-n-p)
(setq confirm-kill-emacs 'yes-or-no-p)
(setq confirm-kill-processes nil)

(line-number-mode nil)
(column-number-mode t)
(size-indication-mode t)

;; Hide the mode line
(setq-default mode-line-format nil)


(use-package fontaine
  :config
  (setq fontaine-presets
   '((regular
	  :default-family "Iosevka Nerd Font"
	  :default-height 140
	  :variable-pitch-family "Lexend")))
  (fontaine-set-preset 'regular))


(provide 'init-ui)
;;; init-ui.el ends here
