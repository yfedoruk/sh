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

