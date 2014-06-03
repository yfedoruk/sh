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
(elscreen-start)
(require 'php-mode)

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



;;Configuration variables here:
(setq semantic-load-turn-useful-things-on t)


;;code view
(require 'ecb)
  (require 'ecb-autoloads)
  (setq ecb-auto-expand-tag-tree 'all)
  
  (global-set-key (kbd "C-x C-;") 'ecb-activate)
  (global-set-key (kbd "C-x C-'") 'ecb-deactivate)
  (global-set-key (kbd "C-.") 'ecb-goto-window-edit1)
  (global-set-key (kbd "C-,") 'ecb-goto-window-methods)
  
(custom-set-variables
         ;; custom-set-variables was added by Custom.
         ;; If you edit it by hand, you could mess it up, so be careful.
         ;; Your init file should contain only one such instance.
         ;; If there is more than one, they won't work right.
 '(current-language-environment "utf-8")
 '(ecb-layout-name "left9")
 '(ecb-layout-window-sizes (quote (("left9" (ecb-methods-buffer-name 0.15028901734104047 . 0.975)))))
 '(ecb-options-version "2.40")
 '(speedbar-use-imenu-flag t)
 '(ecb-tip-of-the-day nil)
 '(ecb-expand-methods-nodes "10")
 '(ecb-tree-expand-symbol-before t)
 '(ecb-display-image-icons-for-semantic-tags t)
 '(ecb-use-speedbar-instead-native-tree-buffer nil)
)
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
    (set-face-background 'hl-line "#E6E6E6")

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


 ;; JavaScript
 (add-hook 'js2-mode-hook 'smart-tabs-mode-enable)
 (smart-tabs-advice js2-indent-line js2-basic-offset)

;; CUA
(load-file "~/.config/emacs/cua.el")


