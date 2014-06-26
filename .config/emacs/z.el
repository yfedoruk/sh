;; save session
    (desktop-save-mode t)
    
;;colors
;;(set-background-color «#333333»)
;;(set-foreground-color «#ffffff»)


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
	

;(elscreen-start)
    ;(global-set-key (kbd "C-t") 'elscreen-create)
    ;(global-set-key (kbd "M-1") (lambda () (interactive) (elscreen-goto 0)))
    ;(global-set-key (kbd "M-2") (lambda () (interactive) (elscreen-goto 1)))
    ;(global-set-key (kbd "M-3") (lambda () (interactive) (elscreen-goto 2)))
    
;; yasnippet ( http://github.com/capitaomorte/yasnippet )
    ;(require 'yasnippet)
    ;(yas-global-mode 1)
      ;; Load the snippet files themselves
    ;(yas/load-directory "~/.emacs.d/elpa/yasnippet-20131031.628/snippets/text-mode")   ; bug
      ;; Let's have snippets in the auto-complete dropdown
    ;(add-to-list 'ac-sources 'ac-source-yasnippet)