;; Stuart Sierra
;; http://thinkrelevance.com/blog/2013/06/04/clojure-workflow-reloaded
;; https://github.com/stuartsierra/reloaded
(defun nrepl-refresh ()
  (interactive)
  (set-buffer "*nrepl*")
  (goto-char (point-max))
  (insert "(clojure.tools.namespace.repl/refresh)")
  (nrepl-return))

(defun nrepl-reset ()
  (interactive)
  (set-buffer "*nrepl*")
  (goto-char (point-max))
  (insert "(user/reset)")
  (nrepl-return))

;; Custom font, trick from https://github.com/overtone/emacs-live/issues/25

(add-to-list 'default-frame-alist '(font . "PragmataPro 10"))

;; enable strict mode for smartparens (ala paredit)
;;(smartparens-strict-mode t)
