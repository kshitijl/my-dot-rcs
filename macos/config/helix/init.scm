(require-builtin steel/random as rand::)
(require (prefix-in helix. "helix/commands.scm"))
(require (prefix-in helix.static. "helix/static.scm"))
(require (prefix-in helix.editor. "helix/editor.scm"))

(require "helix/configuration.scm")
(define-lsp "steel-language-server" (command "steel-language-server") (args '()))
(define-language "scheme"
                 (language-servers '("steel-language-server")))

;; Picking one from the possible themes
; (define possible-themes '("ayu_mirage" "tokyonight_storm" "catppuccin_macchiato"))
; (define possible-themes (helix.editor.themes->list))

(define possible-themes '("modus_operandi_tritanopia" "ayu_mirage" "tokyonight_storm" "catppuccin_macchiato" "modus_operandi_tinted" "solarized_light" "flatwhite" "github_light" "github_light_high_contrast" "modus_operandi" "gruvbox_light_hard" "papercolor-light" "seoul256-light-hard" "hex_toxic" "hex_steel" "seoul256-dark-hard" "dracula_at_night" "starlight" "snazzy" "sidra" "pop-dark" "fleet_dark" "github_dark" "new_moon" "nightfox" "bogster" "horizon-dark" "ashen"))

(define (select-random lst)
  (let ([index (rand::rng->gen-range 0 (length lst))]) (list-ref lst index)))

(define (randomly-pick-theme)
  ;; Randomly select the theme from the possible themes list
  (let ([theme (select-random possible-themes)])
    (helix.echo theme)
    (helix.theme theme)))

