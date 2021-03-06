 (when (>= emacs-major-version 24)
    ;; (require 'package)
    ;; (package-initialize) ;; 遍历整个elpa，找到***-autoload.el
     (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
		      ("melpa" . "http://elpa.emacs-china.org/melpa/"))))

;; 注意 elpa.emacs-china.org 是 Emacs China 中文社区在国内搭建的一个
;; ELPA 镜像

 ;; cl - Common Lisp Extension
 (require 'cl)
 ;; Add Packages
 (defvar my/packages '(
		;; --- Auto-completion ---
		company
		;; --- Better Editor ---
		hungry-delete
		swiper
		counsel
		smartparens
		;; --- Major Mode ---
		js2-mode
		;; --- Minor Mode ---
		nodejs-repl
		exec-path-from-shell
		popwin
		;; --- Themes ---
		monokai-theme
		;; solarized-theme
		;; test by ming
		auto-shell-command
		) "Default packages")

(setq package-selected-packages my/packages)

(defun my/packages-installed-p ()
     (loop for pkg in my/packages
	   when (not (package-installed-p pkg)) do (return nil)
	   finally (return t)))

 (unless (my/packages-installed-p)
     (message "%s" "Refreshing package database...")
     (package-refresh-contents)
     (dolist (pkg my/packages)
       (when (not (package-installed-p pkg))
	 (package-install pkg))))

 ;; Find Executable Path on OS X
 (when (memq window-system '(mac ns))
   (exec-path-from-shell-initialize))

;; parenthesis highlight
;;(require 'smartparens-config)  autoload, no need for require
(smartparens-global-mode 1)
(add-hook 'js-mode-hook #'smartparens-mode)


;; delete a whitespace character will delete all until next non-whitespace
(require 'hungry-delete)
(global-hungry-delete-mode)

(ivy-mode 1)
(setq ivy-use-virtual-buffers t)

;; open .js file with js2-mode
;; with C-x C-f not C-x B!!!
(setq auto-mode-alist
      (append
       '(("\\.js\\'" . js2-mode))
       auto-mode-alist))

(global-company-mode 1)

(load-theme 'monokai -1)

;; 快速进入缓冲区，并可以按q退出
(require 'popwin)
(popwin-mode t)

(provide 'init-package)
