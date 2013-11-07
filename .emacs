(when (>= emacs-major-version 24)
	(require 'package)
	(add-to-list 'package-archives
				 '("marmalade" . "http://marmalade-repo.org/packages/"))
	(add-to-list 'package-archives
				 '("melpa" . "http://melpa.milkbox.net/packages/") t)

	;; Install a hook running post-init.el *after* initialization took place
	(add-hook 'after-init-hook (lambda () (load "post-init.el")))
		;; disable automatic loading of packages after init.el is done
		(setq package-enable-at-startup nil)
	(package-initialize)
)

(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.config/emacs")
(add-to-list 'load-path "/usr/local/share/emacs/ecb-new-cedet")


;; ********************** plugins *****************
(elscreen-start)
(require 'php-mode)
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")

(ac-config-default)

;;Configuration variables here:
(setq semantic-load-turn-useful-things-on t)

;; CEDET (instead of semantic)
(load-file "/usr/local/share/emacs/cedet-1.1/common/cedet.el")
;;(load-file "~/.emacs.d/cedet/common/cedet.el")
(global-ede-mode 1)
(semantic-load-enable-code-helpers)
(semantic-load-enable-gaudy-code-helpers)
(semantic-load-enable-all-exuberent-ctags-support)
(require 'wisent-php)
(defun my-semantic-hook ()
  (imenu-add-to-menubar "TAGS"))
(add-hook 'semantic-init-hooks 'my-semantic-hook)
;; END CEDET



;;code view
(require 'ecb)


;; Enable whitespace visible
(require 'whitespace)
    (autoload 'whitespace-mode           "whitespace"
      "Toggle whitespace visualization."        t)
    (autoload 'whitespace-toggle-options "whitespace"
      "Toggle local `whitespace-mode' options." t)

;; php-mode 
(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
)
(global-set-key (kbd "C-M-<kp-0>") 'duplicate-line)

;; +++++++++++++++++++++++++++++ settings ++++++++++++++++++++++++++++++
;; Remove startup message
    (setq inhibit-startup-message t)

;; Show the column number
    (column-number-mode t)

;; parenthesis highlight
    (show-paren-mode t)

;; save session
    (desktop-save-mode t)

;; yes/no
    (fset 'yes-or-no-p 'y-or-n-p)

;; scrolling 1-string
    (setq scroll-step 1)

;; highlight current string
    (global-hl-line-mode 1)
    (set-face-background 'hl-line "#CCCCCC")

;; no-wrap off
    ;;(toggle-truncate-lines)
    (global-visual-line-mode t)

;; utf-8
    (setq file-name-coding-system 'utf-8)


;;colors
;;(set-background-color «#333333»)
;;(set-foreground-color «#ffffff»)

;;cursor-line
;; (bar-cursor-mode t) ;; deprecated ????

;; kill current line
(global-set-key (kbd "C-d") 'kill-whole-line)


;; ++++++++ CUA mode: C-x, C-c, C-v for copying, pasting, C-z for undo ++++++
(cua-mode t)
(transient-mark-mode 1) ;; No region when it is not highlighted
(setq cua-keep-region-after-copy t) ;; Standard Windows behaviour 
;; Delete (and its variants) delete forward instead of backward. ;; C-Backspace kills backward a word (as C-Delete normally would). ;; M-Backspace does undo. 
;; Home and End move to beginning and end of line. ;; C-Home and C-End move to beginning and end of buffer. ;; C-Escape does list-buffers."
(delete-selection-mode nil)

;; Makes clipboard work (copy from emacs)
(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))

;; Other global keybindings
(global-set-key (kbd "C-s") 'save-buffer)  ;; (global-set-key (kbd "C-S-s") 'another-command)  //C-S-s (Ctrl+Shift+s)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ecb-options-version "2.40")
 '(speedbar-use-imenu-flag t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
 
