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
    
    
; generate new buffer (is better solution)
;; (setq confirm-nonexistent-file-or-buffer nil) ;; ???
(defun generate-buffer ()
  (interactive)
  (switch-to-buffer (make-temp-name "tmp")))
(global-set-key (kbd "C-t") 'generate-buffer)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; smart-tabs-mode
    ;(add-hook 'js2-mode-hook 'smart-tabs-mode-enable)
    ;(smart-tabs-advice js2-indent-line js2-basic-offset)
    
    
; JavaScript
    (require 'js-comint)
    (setq inferior-js-program-command "/usr/bin/java org.mozilla.javascript.tools.shell.Main")
    (add-hook 'js2-mode-hook '(lambda () 
                    (local-set-key "\C-x\C-e" 'js-send-last-sexp)
                    (local-set-key "\C-\M-x" 'js-send-last-sexp-and-go)
                    (local-set-key "\C-cb" 'js-send-buffer)
                    (local-set-key "\C-c\C-b" 'js-send-buffer-and-go)
                    (local-set-key "\C-cl" 'js-load-file-and-go)
                    ))
                    
;(require 'php-mode)
	;(require 'php+-mode)

;(load "php-electric.el")
;(require 'php-electric)
;(php-electric-mode 1)


; ECB
(load "ecb-ini.el")
(setq ecb-mouse-click-destination 1)





; C-h v package-activated-list
(auto-complete color-theme-solarized color-theme ecb ecb-snapshot elscreen helm-descbinds helm-gtags helm-projectile helm-swoop helm icicles js-comint move-text php+-mode php-completion popup projectile pkg-info epl dash quelpa package-build s smart-tabs-mode sr-speedbar tabbar undo-tree web-mode yasnippet)