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