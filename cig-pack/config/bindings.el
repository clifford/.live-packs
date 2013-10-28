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

;; expand region
(global-set-key (kbd "C-=") 'er/expand-region)

;; shortcuts to inc/dec font size
(define-key global-map (kbd "C-+") 'text-scale-increase)
(define-key global-map (kbd "C--") 'text-scale-decrease)
