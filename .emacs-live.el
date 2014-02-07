;; ignore colour-pack but still load all other default live packs
(live-ignore-packs '(stable/colour-pack))

(live-add-packs '(~/.live-packs/solarized-pack))

;; add my own pack which sets most of the bindings-pack with a few exclusions
(live-append-packs '(~/.live-packs/cig-pack))

;; make emacs-live use the dev packs (still in testing)
;;(live-use-dev-packs)
