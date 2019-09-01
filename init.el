;;;Emilio Unda
;;;2011 mayo 26
;;; This is an initialization file for emacs

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load "~/.emacs.d/bazel-customizations.el")

;; Use indentation with spaces only
(setq-default indent-tabs-mode nil)
;; Highlight matching parenthesis
(show-paren-mode t)
;; Disable backup files.
(setq make-backup-files nil)


;; Show use linux style with four spaces per indent
(setq c-default-style
      '((java-mode . "bsd")
	(other . "bsd")))


(setq c-basic-offset 4
      js-indent-level 2)


;; use c++-mode for ".h"
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;;Setup a compiler for programs using OpenCV
;(defun compile-opencv ()
;  "compile a program that uses OpenCV"
;  (interactive)
;  (compile 


(put 'narrow-to-region 'disabled nil)


;; To use mail
;(load "~/.emacs.d/gnus.el")

(put 'downcase-region 'disabled nil)

;;
;; Use html-mode for html files
(add-to-list 'auto-mode-alist '("\\.html\\'" . html-mode))

;;; I lost 
;; ;; Add json formatting
;; ; to format json nicely call
;; ; json-pretty-print
;; (load "/home/emilio/.emacs.d/json.el")


;; Normally you use Crtl-u Crtl-<SPC> to return to an old mark in the
;; mark ring.  With the next line any subsequent call can be made
;; without Crt-u using only Crtl-<SPC>
(setq set-mark-command-repeat-pop t)


;; To make emacs use UTF-8 encoding
;; I think it will do it always
(prefer-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)


;;
;; Initialization for 
;; having the default Prolog mode
;;
(setq auto-mode-alist
      (append
       '(("\\.pl" . prolog-mode))
       auto-mode-alist))
(setq prolog-program-name "swipl")
(setq prolog-consult-string "[user].\n")
;If you want this.  Indentation is either poor or I don't use
;it as intended.
;(setq prolog-indent-width 8)


;;
;; Change the background color so it doesn't hurt my eyes
;;
(set-background-color "#461616")
(set-foreground-color "white")


;;
;; Stuff for Erlang development
;; Disactivate all electric commands
(setq erlang-electric-commands nil)


;;
;; Desktop save mode
;; I am trying out desktop save mode to save buffers on shutdown
; (desktop-save-mode 1)

;;
;; Use C style indenting for css files
;;
(setq cssm-indent-function #'cssm-c-style-indenter)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(safe-local-variable-values (quote ((encoding . utf-8)))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


