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

(setq hippie-expand-try-function-list '(try-expand-debbrev
					try-expand-debbrev-all-buffers
					try-expand-debbrev-from-kill
					try-complete-file-name-partially
					try-complete-file-name
					try-expand-all-abbrevs
					try-expand-list
					try-expand-line
					try-complete-lisp-symbol-partially
					try-complete-lisp-symbol))
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

(put 'dired-find-alternate-file 'disabled nil)

;; 主动加载 Dired Mode
;; (require 'dired)
;; (defined-key dired-mode-map (kbd "RET") 'dired-find-alternate-file)
(require 'dired-x)
;; 延迟加载
(with-eval-after-load 'dired
    (define-key dired-mode-map (kbd "RET") 'dired-find-alternate-file))

(provide 'init-better-defaults)
