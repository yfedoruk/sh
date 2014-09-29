;; M-x load-file ENTER
;; ~/.emacs
;; ENTER

(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.config/emacs")

(load "melpa-ini")
;(load "quelpa-ini")


; CEDET
(load "minimial-cedet-config")


; ********************** plugins *****************

(require 'pi-php-mode)
	;(require 'php+-mode)
;(setq php-mode-warn-if-mumamo-off nil)
;(setq php-enable-wordpress-coding-style t)


; auto-complete
    (require 'auto-complete-config)
    (add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
    (ac-config-default)
    (global-auto-complete-mode t)
    (define-key ac-completing-map "\t" 'ac-complete)
    (define-key ac-completing-map "RET" 'ac-complete)
    ;(define-key ac-completing-map "\r" nil) 	; disable autocomplete on press enter
    (setq ac-ignore-case nil)

; undo-tree
(load "undo.el")

; undo-tree
(load "highlight-symbol.el")
(require 'highlight-symbol)
(global-set-key [(control f3)] 'highlight-symbol-at-point)
(global-set-key [f3] 'highlight-symbol-next)
(global-set-key [(shift f3)] 'highlight-symbol-prev)
(global-set-key [(meta f3)] 'highlight-symbol-query-replace)

; Configuration variables here:
(setq semantic-load-turn-useful-things-on t)

; Color themes
(require 'color-theme)
    ;(color-theme-initialize)
    ;(color-theme-dark-laptop)
	;(load "elegant-theme.el")
	;(color-theme-pomgranate-explosion)
	(color-theme-solarized-dark)


; move-text
(require 'move-text)
(global-set-key [C-up] 'move-text-up)
(global-set-key [C-down] 'move-text-down)

; Enable whitespace visible
(require 'whitespace)

; ++++++++++++++++++++++++ Custom functions +++++++++++++++++++++++++++

; duplicate-line 
(load "duplicate-line.el")
(global-set-key (kbd "C-d") 'duplicate-line)

; smart-line-beginning
(load "beginning-of-line.el")

; indent-region
;(load "unindent-region.el")

; session manager
(load "session.el")

; comment
(load "comment.el")

; kill current buffer
(global-set-key (kbd "C-w") 'kill-buffer)

; reload file f5
(load "reload-file.el")

; +++++++++++++++++++++++++++++ settings ++++++++++++++++++++++++++++++
(setq inhibit-startup-message t)    ; remove startup message
(setq make-backup-files nil)        ; stop creating those backup~ files
(setq auto-save-default nil)        ; stop creating those #autosave# files
(defalias 'list-buffers 'ibuffer)   ; buffers tool

; keep a list of recently opened files
    (recentf-mode 1)
    (global-set-key (kbd "<f7>") 'recentf-open-files)

; Show the column number ( in bottom bar )
    (column-number-mode 1)

; display line numbers in margin
    (global-linum-mode 1) 

; parenthesis highlight
    (show-paren-mode 1)

; yes/no
    (fset 'yes-or-no-p 'y-or-n-p)

; scrolling 1-string
    (setq scroll-step 1)

; highlight current string
    ;(global-hl-line-mode 1)
    ;(set-face-background 'hl-line "#E6E6E6")

; no-wrap off
    (setq toggle-truncate-lines t)
    (global-visual-line-mode t)

; utf-8
    (setq file-name-coding-system 'utf-8)

; ido - interactively doing things
(load "ido-ini.el")

; icicles
;(require 'icicles)
;(icy-mode 1)

(global-set-key [f9] 'isearchb-activate)	;(global-set-key (kbd "<f9>") 'isearchb-activate)



;cursor-line
(setq-default cursor-type 'bar)

; kill current line
(global-set-key (kbd "C-S-d") 'kill-whole-line)


; close brackets 
    (electric-pair-mode 1)
; make electric-pair-mode work on {} brackets
    (setq electric-pair-pairs '(  (?\" . ?\")  (?\{ . ?\})  ) )

; make whitespace-mode use just basic coloring
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




; ++++++++++++++ global +++++++++++++++++

(global-set-key (kbd "M-a") 'mark-whole-buffer)
(global-set-key (kbd "C-s") 'save-buffer)
(global-set-key (kbd "C-f") 'isearch-forward)
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

; Goto-line short-cut key
(global-set-key "\M-l" 'goto-line)


; tabbar
(load "tabbar-ini.el")
;(load "tabbar-tweak.el")
(load "tabbar-china.el")

;speedbar
(require 'sr-speedbar)
;(custom-set-variables '(speedbar-show-unknown-files t))
;(eval-after-load "speedbar" '(speedbar-add-supported-extension ".php"))
(speedbar-add-supported-extension ".php") 
(setq speedbar-use-images nil)
(setq sr-speedbar-right-side nil)
(global-set-key [f4] 'sr-speedbar-toggle)
(sr-speedbar-open)
(setq sr-speedbar-width-x 150)
(setq sr-speedbar-width-console 150)
(global-set-key (kbd "C-c o") 'speedbar-get-focus)


(defun search-all-buffers (regexp)
   (interactive "sRegexp: ")
   (multi-occur-in-matching-buffers "^[^\*]." regexp t))
 (global-set-key [f6] 'search-all-buffers)
 

; fullscreen 
(load "fullscreen.el")

;helm
; (load "helm-ini.el")
;(require 'helm-swoop)

; save history in mini-buffer (+ icycles history)
(savehist-mode 1)
(setq savehist-additional-variables '(kill-ring search-ring regexp-search-ring icicle-history))


; Map escape to cancel (like C-g)
(global-set-key [escape] 'keyboard-escape-quit)				;; everywhere else
;(define-key isearch-mode-map [escape] 'isearch-abort)		;; isearch ESC key. Need be define after icicles

; new buffer
(load "buffer-new")

(add-hook 'occur-hook (lambda () (other-window 1))) ;;  "Switch cursor to *Occur* buffer, if `occur'."


; go to parenthesis. By an unknown contributor.See also maybe "smartparens" plugin.
(global-set-key "%" 'match-paren)
(defun match-paren (arg)
	"Go to the matching paren if on a paren; otherwise insert %."
	(interactive "p")
	(cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
		((looking-at "\\s\)") (forward-char 1) (backward-list 1))
		(t (self-insert-command (or arg 1)))))




;; Emacs will not automatically add new lines
(setq next-line-add-newlines nil)
(setq recenter-positions '(top middle bottom))
(setq scroll-preserve-screen-position t)


;; Turn on tabs
(setq indent-tabs-mode t)
(setq-default indent-tabs-mode t)

;; Bind the TAB key
(global-set-key (kbd "TAB") 'self-insert-command)						; troubles in select mode 
(delete-selection-mode nil)


(setq-default tab-width 4)
;(setq-default indent-tabs-mode nil) 


(define-key minibuffer-local-map (kbd "M-<up>") 'next-history-element)
(define-key minibuffer-local-map (kbd "M-<down>") 'previous-history-element)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
;(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[gj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))

; CUA
(load "cua.el")
