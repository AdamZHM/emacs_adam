(require 'org-install)
(require 'ob-tangle)
(org-babel-load-file (expand-file-name "adam.org" user-emacs-directory))


;; 关闭工具栏，tool-bar-mode 即为一个 Minor Mode
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
;; 关闭缩进 (第二天中被去除)
;; (electric-indent-mode -1)
;;加入最近打开过文件的选项让我们更快捷的在图形界面的菜单中打开最近编辑过的文件。
;;(require 'package)
;;(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;;(add-to-list 'package-archives '("org" . "https://orgmode.org/elpa/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;;(add-to-list 'package-archives '(“marmalade” . “http://marmalade-repo.org/packages/”) t)

;;(add-to-list 'package-archives '(“elpa” . “http://tromey.com/elpa/”) t)
;;(package-initialize)

;;quote 的意思是不要执行后面的内容


;; install theme
;;(add-to-list 'my/packages 'monokai-theme)

;;(setq enable-recursive-minibuffers t)


;;config for swiper

;; install the nodejs first in system(ubuntu)
;;(require 'nodejs-repl)

