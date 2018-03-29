(require 'package)

(defvar required-packages '(diminish use-package))

(defvar scratch-file
  (expand-file-name "scratch.el" user-emacs-directory))

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(setq use-package-always-ensure t)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))

(package-initialize)

(dolist (required-package required-packages)
  (unless (package-installed-p required-package)
    (package-refresh-contents)
    (package-install required-package)))

(if (file-exists-p custom-file) (load custom-file))

(org-babel-load-file "~/.emacs.d/emacs.org")

(if (file-exists-p scratch-file) (load scratch-file))
