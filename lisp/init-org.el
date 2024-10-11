;;; init-org.el --- org mode customizations -*- lexical-binding: t -*-
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
(use-package org
  :config
  (setq-default org-directory "~/cloud/org")
  (setq-default org-agenda-files (list org-directory)))
(use-package org-modern
  :hook
  (org-mode . #'org-modern-mode)
  :config
  (setq org-pretty-entities nil
		org-auto-align-tags nil
		org-tags-column 0
		org-catch-invisible-edits 'show-and-error
		org-special-ctrl-a/e t
		org-insert-heading-respect-content t

		;; Org styling, hide markup etc.
		org-hide-emphasis-markers t
		org-pretty-entities t
		
		;; Agenda styling
		org-agenda-tags-column 0
		org-agenda-block-separator ?─
		org-agenda-time-grid
		'((daily today require-timed)
		  (800 1000 1200 1400 1600 1800 2000)
		  " ┄┄┄┄┄ " "┄┄┄┄┄┄┄┄┄┄┄┄┄┄┄")
		org-agenda-current-time-string
		"◀── now ─────────────────────────────────────────────────")

  ;; Ellipsis styling
  (setq org-ellipsis "…")
  (set-face-attribute 'org-ellipsis nil :inherit 'default :box nil))

(provide 'init-org)
