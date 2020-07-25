(setq ring-bell-function 'ignore)

;; highlight current line
(global-hl-line-mode 1)

(global-auto-revert-mode t)

(abbrev-mode t)
;; type "name" + ' '  --> "adam_zhm"
(define-abbrev-table 'global-abbrev-table' (
					    ;; signature
					    ("name" "adam_zhm")
					    ))

;; ban auto-save and backup
(setq make-backup-files nil)
(setq auto-save-default nil)

(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-item 10)

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

;;setq: local, setq-default: global
(setq-default cursor-type 'bar)

;; delete what you have chosen
(delete-selection-mode 1)

;; refine indent
(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indent selected region."))
      (progn
	(indent-buffer)
	(message "Indent buffer.")))))

(provide 'init-better-defaults)
