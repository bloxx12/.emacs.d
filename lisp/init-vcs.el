;;; init-vcs.el --- Version control systems -*- lexical-binding: t -*-
;;
;; Copyright @ 2024 Charlie Root
;;
;; Author: Charlie Root <charlie@charlieroot.dev>
;; URL: https://charlieroot.dev

;;; Commentary:

;; This file sets configures magit and transient for version control.

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

;; Disable all uneeded version control systems.
(setq-default vc-handled-backends '(Hg Git SVN))

(use-package transient
  :ensure t)

(use-package magit
  :ensure t
  :after transient
  :bind
  (("C-c m s" . 'magit-status))
   ("C-c m l" . 'magit-log))

(provide 'init-vcs)
;;; init-vcs.el ends here
