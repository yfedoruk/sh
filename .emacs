(when (>= emacs-major-version 24)
    (require 'package)
    (add-to-list 'package-archives
                 '("marmalade" . "http://marmalade-repo.org/packages/"))
    (add-to-list 'package-archives
                 '("melpa" . "http://melpa.milkbox.net/packages/") t)

    ;; Install a hook running post-init.el *after* initialization took place
    ;;(add-hook 'after-init-hook (lambda () (load "post-init.el")))
        ;; disable automatic loading of packages after init.el is done
        (setq package-enable-at-startup nil)
    (package-initialize)
)   ;;http://www.logilab.org/173886

;; M-x package-list-packages
;; M-x list-packages

(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.config/emacs")

;*********** CEDET ********
;; Load CEDET.
;; See cedet/common/cedet.info for configuration details.
;; IMPORTANT: Tou must place this *before* any CEDET component (including
;; EIEIO) gets activated by another package (Gnus, auth-source, ...).
;(load-file "/home/slava/.emacs.d/cedet/cedet-devel-load.el")           // bug

;; Add further minor-modes to be enabled by semantic-mode.
;; See doc-string of `semantic-default-submodes' for other things
;; you can use here.
(add-to-list 'semantic-default-submodes 'global-semantic-idle-summary-mode t)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-completions-mode t)
(add-to-list 'semantic-default-submodes 'global-cedet-m3-minor-mode t)

;; Enable Semantic
;(semantic-mode 1)                                                      // bug

;; Enable EDE (Project Management) features
(global-ede-mode 1)
;; END CEDET



;; ********************** plugins *****************
;(elscreen-start)
    ;(global-set-key (kbd "C-t") 'elscreen-create)
    ;(global-set-key (kbd "M-1") (lambda () (interactive) (elscreen-goto 0)))
    ;(global-set-key (kbd "M-2") (lambda () (interactive) (elscreen-goto 1)))
    ;(global-set-key (kbd "M-3") (lambda () (interactive) (elscreen-goto 2)))
(require 'php-mode)
;(require 'php+-mode)

(load-file "~/.config/emacs/php-electric.el")
(require 'php-electric)
(php-electric-mode 1)
;; auto-complete
    (require 'auto-complete-config)
    (add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
    (ac-config-default)
    (global-auto-complete-mode t)
    (define-key ac-completing-map "\t" 'ac-complete)
    (define-key ac-completing-map "\r" nil)
    (setq ac-ignore-case nil)

;; yasnippet ( http://github.com/capitaomorte/yasnippet )
    (require 'yasnippet)
    (yas-global-mode 1)
      ;; Load the snippet files themselves
    ;(yas/load-directory "~/.emacs.d/elpa/yasnippet-20131031.628/snippets/text-mode")   // bug
      ;; Let's have snippets in the auto-complete dropdown
    (add-to-list 'ac-sources 'ac-source-yasnippet)

;; JavaScript
    (require 'js-comint)
    (setq inferior-js-program-command "/usr/bin/java org.mozilla.javascript.tools.shell.Main")
    (add-hook 'js2-mode-hook '(lambda () 
                    (local-set-key "\C-x\C-e" 'js-send-last-sexp)
                    (local-set-key "\C-\M-x" 'js-send-last-sexp-and-go)
                    (local-set-key "\C-cb" 'js-send-buffer)
                    (local-set-key "\C-c\C-b" 'js-send-buffer-and-go)
                    (local-set-key "\C-cl" 'js-load-file-and-go)
                    ))

;; undo-tree
    (require 'undo-tree)
    (global-undo-tree-mode 1)
    (defalias 'redo 'undo-tree-redo)
    (global-set-key (kbd "C-z") 'undo)
    (global-set-key (kbd "C-S-z") 'redo)

;; smart-tabs-mode
    ;(add-hook 'js2-mode-hook 'smart-tabs-mode-enable)
    ;(smart-tabs-advice js2-indent-line js2-basic-offset)

; tabbar
(load-file "~/.config/emacs/tabbar.el")

;;Configuration variables here:
(setq semantic-load-turn-useful-things-on t)

;; Color themes
(require 'color-theme)
    ;(color-theme-initialize)
    ;(color-theme-dark-laptop)
	;(load-file "~/.config/emacs/elegant-theme.el")
	;(color-theme-pomgranate-explosion)
	(color-theme-solarized-dark)


;; move-text
(require 'move-text)
(global-set-key [C-up] 'move-text-up)
(global-set-key [C-down] 'move-text-down)

;; evil
    ;(require 'evil)
    ;(evil-mode 1)
        ; esc quits
    ;(define-key evil-normal-state-map [escape] 'keyboard-quit)
    ;(define-key evil-visual-state-map [escape] 'keyboard-quit)
    ;(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
    ;(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
    ;(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
    ;(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
    ;(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

	; Map escape to cancel (like C-g)
	(define-key isearch-mode-map [escape] 'isearch-abort)   ;; isearch
	(global-set-key [escape] 'keyboard-escape-quit)         ;; everywhere else


;;code view
(require 'ecb)
  (require 'ecb-autoloads)
  (setq ecb-auto-expand-tag-tree 'all)
  
  (global-set-key (kbd "C-x C-;") 'ecb-activate)
  (global-set-key (kbd "C-x C-'") 'ecb-deactivate)
  (global-set-key (kbd "C-.") 'ecb-goto-window-edit1)
  (global-set-key (kbd "C-,") 'ecb-goto-window-methods)
  
  
(require 'sr-speedbar)
  
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(current-language-environment "utf-8")
 '(ecb-display-image-icons-for-semantic-tags t)
 '(ecb-expand-methods-nodes "10")
 '(ecb-layout-name "left9")
 '(ecb-layout-window-sizes (quote (("left9" (ecb-methods-buffer-name 0.15028901734104047 . 0.975)))))
 '(ecb-options-version "2.40")
 '(ecb-tip-of-the-day nil)
 '(ecb-tree-expand-symbol-before t)
 '(ecb-use-speedbar-instead-native-tree-buffer nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; ++++++++++++++++++++++++ Custom functions +++++++++++++++++++++++++++


;; Enable whitespace visible
(require 'whitespace)
    (autoload 'whitespace-mode           "whitespace"
      "Toggle whitespace visualization."        t)
    (autoload 'whitespace-toggle-options "whitespace"
      "Toggle local `whitespace-mode' options." t)

;; duplicate-line 
(load-file "~/.config/emacs/duplicate-line.el")

; smart-line-beginning
(load-file "~/.config/emacs/beginning-of-line.el")

; indent-region
(load-file "~/.config/emacs/unindent-region.el")

; session manager
(load-file "~/.config/emacs/session.el")


(load-file "~/.config/emacs/comment.el")
;(global-set-key (kbd "C-q") 'comment-or-uncomment-line-or-region)
(global-set-key [remap comment-dwim] 'comment-or-uncomment-region-or-line)

;; +++++++++++++++++++++++++++++ settings ++++++++++++++++++++++++++++++
(setq inhibit-startup-message t)    ; remove startup message
(setq make-backup-files nil)        ; stop creating those backup~ files
(setq auto-save-default nil)        ; stop creating those #autosave# files
(defalias 'list-buffers 'ibuffer)   ; buffers tool

; keep a list of recently opened files
    (recentf-mode 1)
    (global-set-key (kbd "<f7>") 'recentf-open-files)

;; Show the column number ( in bottom bar )
    (column-number-mode 1)

; display line numbers in margin
    (global-linum-mode 1) 

;; parenthesis highlight
    (show-paren-mode 1)

;; yes/no
    (fset 'yes-or-no-p 'y-or-n-p)

;; scrolling 1-string
    (setq scroll-step 1)

;; highlight current string
    ;(global-hl-line-mode 1)
    ;(set-face-background 'hl-line "#E6E6E6")

;; no-wrap off
    ;;(toggle-truncate-lines)
    (global-visual-line-mode t)

;; utf-8
    (setq file-name-coding-system 'utf-8)

; save history in mini-buffer
(savehist-mode 1)
(setq savehist-additional-variables '(kill-ring search-ring regexp-search-ring))

;; ido - interactively doing things
    (ido-mode 1)
    (ido-everywhere 1)
    (ido-mode 'buffer) 
    ; ignore '*' buffers
(defun ido-ignore-non-user-except-ielm (name)
  "Ignore all non-user (a.k.a. *starred*) buffers except *ielm*."
  (and (string-match "^\*" name)
       (not (string= name "*ielm*"))))
(setq ido-ignore-buffers '("\\` " ido-ignore-non-user-except-ielm))

;;cursor-line
(setq-default cursor-type 'bar)

;; kill current line
(global-set-key (kbd "C-d") 'kill-whole-line)


; close brackets 
    (electric-pair-mode 1)
; make electric-pair-mode work on {} brackets
    (setq electric-pair-pairs '(  (?\" . ?\")  (?\{ . ?\})  ) )

;; make whitespace-mode use just basic coloring
(global-whitespace-mode t)
(setq whitespace-style (quote (spaces tabs newline space-mark tab-mark newline-mark)))

(custom-set-variables
 '(whitespace-display-mappings
   '((space-mark 32 [183]
      [46])
     (space-mark 160 [164]
      [95])
     ;; (newline-mark 10 [36 10])
     (tab-mark 9 [8594 9]
      [92 9]))))

;; tabs

;; CUA
(load-file "~/.config/emacs/cua.el")


;;; global

(global-set-key (kbd "M-a") 'mark-whole-buffer)
(global-set-key (kbd "M-s") 'save-buffer)
(global-set-key (kbd "M-w") 'quit-window)
(global-set-key (kbd "RET") 'newline-and-indent)
;(global-set-key (kbd "C-SPC") 'comment-or-uncomment-region-or-line)

(global-set-key (kbd "H-/") 'switch-to-buffer)
(global-set-key (kbd "s-/") 'switch-to-buffer)
(global-set-key (kbd "M-z") 'switch-to-buffer)
(global-set-key (kbd "C-x s") 'multi-occur)
;(add-hook 'change-major-mode-hook '(lambda () (highlight-lines-matching-regexp ".\\{81\\}" 'hi-yellow)))
;(add-hook 'change-major-mode-hook '(lambda () (highlight-regexp 'hi-yellow)))
(global-hi-lock-mode 1)
(setq hi-lock-file-patterns-policy #'(lambda (dummy) t))