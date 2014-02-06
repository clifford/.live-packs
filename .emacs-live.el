(live-use-packs '(live/foundation-pack
                 ;live/colour-pack ;disabled for solarized to work properly
                 live/clojure-pack
                 live/lang-pack
                 live/power-pack))

(live-add-packs '(~/.live-packs/solarized-pack))

;; add my own pack which sets most of the bindings-pack with a few exclusions
(live-append-packs '(~/.live-packs/cig-pack))

;; make emacs-live use the dev packs (still in testing)
(live-use-dev-packs)
