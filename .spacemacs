;; If non-nil and `dotspacemacs-activate-smartparens-mode' is also non-nil,
;; `smartparens-strict-mode' will be enabled in programming modes.
;; (default nil)
dotspacemacs-smartparens-strict-mode nil

;; If non-nil smartparens-mode will be enabled in programming modes.
;; (default t)
dotspacemacs-activate-smartparens-mode t

;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
;; over any automatically added closing parenthesis, bracket, quote, etc...
;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
dotspacemacs-smart-closing-parenthesis nil

;; Select a scope to highlight delimiters. Possible values are `any',
;; `current', `all' or `nil'. Default is `all' (highlight any scope and
;; emphasis the current one). (default 'all)
dotspacemacs-highlight-delimiters 'all

;; If non-nil, start an Emacs server if one is not already running.
;; (default nil)
dotspacemacs-enable-server nil

;; Set the emacs server socket location.
;; If nil, uses whatever the Emacs default is, otherwise a directory path
;; like \"~/.emacs.d/server\". It has no effect if
;; `dotspacemacs-enable-server' is nil.
;; (default nil)
dotspacemacs-server-socket-dir nil

;; If non-nil, advise quit functions to keep server open when quitting.
;; (default nil)
dotspacemacs-persistent-server nil

;; List of search tool executable names. Spacemacs uses the first installed
;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
;; (default '("rg" "ag" "pt" "ack" "grep"))
dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

;; Format specification for setting the frame title.
;; %a - the `abbreviated-file-name', or `buffer-name'
;; %t - `projectile-project-name'
;; %I - `invocation-name'
;; %S - `system-name'
;; %U - contents of $USER
;; %b - buffer name
;; %f - visited file name
;; %F - frame name
;; %s - process status
;; %p - percent of buffer above top of window, or Top, Bot or All
;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
;; %m - mode name
;; %n - Narrow if appropriate
;; %z - mnemonics of buffer, terminal, and keyboard coding systems
;; %Z - like %z, but including the end-of-line format
;; If nil then Spacemacs uses default `frame-title-format' to avoid
;; performance issues, instead of calculating the frame title by
;; `spacemacs/title-prepare' all the time.
;; (default "%I@%S")
dotspacemacs-frame-title-format "%I@%S"

;; Format specification for setting the icon title format
;; (default nil - same as frame-title-format)
dotspacemacs-icon-title-format nil

;; Show trailing whitespace (default t)
dotspacemacs-show-trailing-whitespace t

;; Delete whitespace while saving buffer. Possible values are `all'
;; to aggressively delete empty line and long sequences of whitespace,
;; `trailing' to delete only the whitespace at end of lines, `changed' to
;; delete only whitespace for changed lines or `nil' to disable cleanup.
;; (default nil)
dotspacemacs-whitespace-cleanup nil

;; If non-nil activate `clean-aindent-mode' which tries to correct
;; virtual indentation of simple modes. This can interfere with mode specific
;; indent handling like has been reported for `go-mode'.
;; If it does deactivate it here.
;; (default t)
dotspacemacs-use-clean-aindent-mode t

;; Accept SPC as y for prompts if non-nil. (default nil)
dotspacemacs-use-SPC-as-y nil

;; If non-nil shift your number row to match the entered keyboard layout
;; (only in insert state). Currently supported keyboard layouts are:
;; `qwerty-us', `qwertz-de' and `querty-ca-fr'.
;; New layouts can be added in `spacemacs-editing' layer.
;; (default nil)
dotspacemacs-swap-number-row nil

;; Either nil or a number of seconds. If non-nil zone out after the specified
;; number of seconds. (default nil)
dotspacemacs-zone-out-when-idle nil

;; Run `spacemacs/prettify-org-buffer' when
;; visiting README.org files of Spacemacs.
;; (default nil)
dotspacemacs-pretty-docs nil

;; If nil the home buffer shows the full path of agenda items
;; and todos. If non-nil only the file name is shown.
dotspacemacs-home-shorten-agenda-source nil

;; If non-nil then byte-compile some of Spacemacs files.
dotspacemacs-byte-compile nil)
;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs-base

   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused

   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t

   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(markdown
     sql
     go
     yaml
     python
     typescript
     html
     javascript
     markdown
     unicode-fonts
     solidity
     (node :variables node-add-modules-path t)
     (lsp :variables
          lsp-rust-server 'rust-analyzer
          ;; lsp-ui-doc-enable nil
          ;; lsp-rust-analyzer-server-display-inlay-hints nil
          ;;  lsp-eldoc-render-all t
          ;; lsp-rust-analyzer-cargo-watch-enable t
          ;; lsp-rust-analyzer-cargo-watch-command "clippy" ;; could be "clippy"

          ;; lsp-rust-analyzer-display-chaining-hints t
          ;; lsp-rust-analyzer-display-closure-return-type-hints t
          ;; lsp-rust-analyzer-display-parameter-hints t
          ;; lsp-rust-analyzer-display-reborrow-hints t
          ;; lsp-ui-peek-always-show t
          ;; lsp-ui-sideline-show-hover t

          )
     (rust :variables
           rust-format-on-save t
           rust-backend 'lsp
           ;; rust-format-show-buffer t
           )
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     ;; auto-completion
     ;; better-defaults
     emacs-lisp
     ;; git
     ;; helm
     ivy
     ;; markdown
     multiple-cursors
     ;; org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     ;; syntax-checking
     ;; version-control
     treemacs)


   ;; List of additional packages that will be installed without being wrapped
   ;; in a layer (generally the packages are installed only and should still be
   ;; loaded using load/require/use-package in the user-config section below in
   ;; this file). If you need some configuration for these packages, then
   ;; consider creating a layer. You can also put the configuration in
   ;; `dotspacemacs/user-config'. To use a local version of a package, use the
   ;; `:location' property: '(your-package :location "~/path/to/your-package/")
   ;; Also include the dependencies as they will not be resolved automatically.
   dotspacemacs-additional-packages '(all-the-icons python-black nginx-mode default-text-scale)

   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()

   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()

   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil then enable support for the portable dumper. You'll need
   ;; to compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper nil

   ;; Name of executable file pointing to emacs 27+. This executable must be
   ;; in your PATH.
   ;; (default "emacs")
   dotspacemacs-emacs-pdumper-executable-file "emacs"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=$HOME/.emacs.d/.cache/dumps/spacemacs-27.1.pdmp
   ;; (default (format "spacemacs-%s.pdmp" emacs-version))
   dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t

   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; Set `read-process-output-max' when startup finishes.
   ;; This defines how much data is read from a foreign process.
   ;; Setting this >= 1 MB should increase performance for lsp servers
   ;; in emacs 27.
   ;; (default (* 1024 1024))
   dotspacemacs-read-process-output-max (* 1024 1024)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. Spacelpa is currently in
   ;; experimental state please use only for testing purposes.
   ;; (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default t)
   dotspacemacs-verify-spacelpa-archives t

   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil

   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version

   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'emacs

   ;; If non-nil show the version string in the Spacemacs buffer. It will
   ;; appear as (spacemacs version)@(emacs version)
   ;; (default t)
   dotspacemacs-startup-buffer-show-version t

   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official

   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `recents-by-project' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   ;; The exceptional case is `recents-by-project', where list-type must be a
   ;; pair of numbers, e.g. `(recents-by-project . (7 .  5))', where the first
   ;; number is the project limit and the second the limit on the recent files
   ;; within a project.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Show numbers before the startup list lines. (default t)
   dotspacemacs-show-startup-list-numbers t

   ;; The minimum delay in seconds between number key presses. (default 0.4)
   dotspacemacs-startup-buffer-multi-digit-delay 0.4

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; If non-nil, *scratch* buffer will be persistent. Things you write down in
   ;; *scratch* buffer will be saved and restored automatically.
   dotspacemacs-scratch-buffer-persistent nil

   ;; If non-nil, `kill-buffer' on *scratch* buffer
   ;; will bury it instead of killing.
   dotspacemacs-scratch-buffer-unkillable nil

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light)

   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(doom :separator wave :separator-scale 1.5)

   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t

   ;; Default font or prioritized list of fonts. The `:size' can be specified as
   ;; a non-negative integer (pixel size), or a floating-point (point size).
   ;; Point size is recommended, because it's device independent. (default 10.0)
   dotspacemacs-default-font '("Fira Mono for Powerline"
                               :size 11
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)

   ;; The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"

   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"

   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"

   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"

   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","

   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m" for terminal mode, "<M-return>" for GUI mode).
   ;; Thus M-RET should work as leader key in both GUI and terminal modes.
   ;; C-M-m also should work in terminal mode, but not in GUI mode.
   dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
   dotspacemacs-enable-paste-transient-state nil

   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4

   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom

   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil

   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t

   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil

   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
   ;; borderless fullscreen. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols t

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Show the scroll bar while scrolling. The auto hide time can be configured
   ;; by setting this variable to a number. (default t)
   dotspacemacs-scroll-bar-while-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but only visual lines are counted. For example, folded lines will not be
   ;; counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   dotspacemacs-line-numbers nil

   ;; Code folding method. Possible values are `evil', `origami' and `vimish'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   e;; -*- mode: emacs-lisp; lexical-binding: t -*-
   ;; This file is loaded by Spacemacs at startup.
   ;; It must be stored in your home directory.

   (defun dotspacemacs/layers ()
     "Layer configuration:
This function should only modify configuration layer settings."
     (setq-default
      ;; Base distribution to use. This is a layer contained in the directory
      ;; `+distribution'. For now available distributions are `spacemacs-base'
      ;; or `spacemacs'. (default 'spacemacs)
      dotspacemacs-distribution 'spacemacs-base

      ;; Lazy installation of layers (i.e. layers are installed only when a file
      ;; with a supported type is opened). Possible values are `all', `unused'
      ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
      ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
      ;; lazy install any layer that support lazy installation even the layers
      ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
      ;; installation feature and you have to explicitly list a layer in the
      ;; variable `dotspacemacs-configuration-layers' to install it.
      ;; (default 'unused)
      dotspacemacs-enable-lazy-installation 'unused

      ;; If non-nil then Spacemacs will ask for confirmation before installing
      ;; a layer lazily. (default t)
      dotspacemacs-ask-for-lazy-installation t

      ;; List of additional paths where to look for configuration layers.
      ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
      dotspacemacs-configuration-layer-path '()

      ;; List of configuration layers to load.
      dotspacemacs-configuration-layers
      '(markdown
        sql
        go
        yaml
        python
        typescript
        html
        javascript
        markdown
        unicode-fonts
        solidity
        (node :variables node-add-modules-path t)
        (lsp :variables
             lsp-rust-server 'rust-analyzer
             ;; lsp-ui-doc-enable nil
             ;; lsp-rust-analyzer-server-display-inlay-hints nil
             ;;  lsp-eldoc-render-all t
             ;; lsp-rust-analyzer-cargo-watch-enable t
             ;; lsp-rust-analyzer-cargo-watch-command "clippy" ;; could be "clippy"

             ;; lsp-rust-analyzer-display-chaining-hints t
             ;; lsp-rust-analyzer-display-closure-return-type-hints t
             ;; lsp-rust-analyzer-display-parameter-hints t
             ;; lsp-rust-analyzer-display-reborrow-hints t
             ;; lsp-ui-peek-always-show t
             ;; lsp-ui-sideline-show-hover t

             )
        (rust :variables
              rust-format-on-save t
              rust-backend 'lsp
              ;; rust-format-show-buffer t
              )
        ;; ----------------------------------------------------------------
        ;; Example of useful layers you may want to use right away.
        ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
        ;; `M-m f e R' (Emacs style) to install them.
        ;; ----------------------------------------------------------------
        ;; auto-completion
        ;; better-defaults
        emacs-lisp
        ;; git
        ;; helm
        ivy
        ;; markdown
        multiple-cursors
        ;; org
        ;; (shell :variables
        ;;        shell-default-height 30
        ;;        shell-default-position 'bottom)
        ;; spell-checking
        ;; syntax-checking
        ;; version-control
        treemacs)


      ;; List of additional packages that will be installed without being wrapped
      ;; in a layer (generally the packages are installed only and should still be
      ;; loaded using load/require/use-package in the user-config section below in
      ;; this file). If you need some configuration for these packages, then
      ;; consider creating a layer. You can also put the configuration in
      ;; `dotspacemacs/user-config'. To use a local version of a package, use the
      ;; `:location' property: '(your-package :location "~/path/to/your-package/")
      ;; Also include the dependencies as they will not be resolved automatically.
      dotspacemacs-additional-packages '(all-the-icons python-black nginx-mode default-text-scale)

      ;; A list of packages that cannot be updated.
      dotspacemacs-frozen-packages '()

      ;; A list of packages that will not be installed and loaded.
      dotspacemacs-excluded-packages '()

      ;; Defines the behaviour of Spacemacs when installing packages.
      ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
      ;; `used-only' installs only explicitly used packages and deletes any unused
      ;; packages as well as their unused dependencies. `used-but-keep-unused'
      ;; installs only the used packages but won't delete unused ones. `all'
      ;; installs *all* packages supported by Spacemacs and never uninstalls them.
      ;; (default is `used-only')
      dotspacemacs-install-packages 'used-only))

   (defun dotspacemacs/init ()
     "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
     ;; This setq-default sexp is an exhaustive list of all the supported
     ;; spacemacs settings.
     (setq-default
      ;; If non-nil then enable support for the portable dumper. You'll need
      ;; to compile Emacs 27 from source following the instructions in file
      ;; EXPERIMENTAL.org at to root of the git repository.
      ;; (default nil)
      dotspacemacs-enable-emacs-pdumper nil

      ;; Name of executable file pointing to emacs 27+. This executable must be
      ;; in your PATH.
      ;; (default "emacs")
      dotspacemacs-emacs-pdumper-executable-file "emacs"

      ;; Name of the Spacemacs dump file. This is the file will be created by the
      ;; portable dumper in the cache directory under dumps sub-directory.
      ;; To load it when starting Emacs add the parameter `--dump-file'
      ;; when invoking Emacs 27.1 executable on the command line, for instance:
      ;;   ./emacs --dump-file=$HOME/.emacs.d/.cache/dumps/spacemacs-27.1.pdmp
      ;; (default (format "spacemacs-%s.pdmp" emacs-version))
      dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

      ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
      ;; possible. Set it to nil if you have no way to use HTTPS in your
      ;; environment, otherwise it is strongly recommended to let it set to t.
      ;; This variable has no effect if Emacs is launched with the parameter
      ;; `--insecure' which forces the value of this variable to nil.
      ;; (default t)
      dotspacemacs-elpa-https t

      ;; Maximum allowed time in seconds to contact an ELPA repository.
      ;; (default 5)
      dotspacemacs-elpa-timeout 5

      ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
      ;; This is an advanced option and should not be changed unless you suspect
      ;; performance issues due to garbage collection operations.
      ;; (default '(100000000 0.1))
      dotspacemacs-gc-cons '(100000000 0.1)

      ;; Set `read-process-output-max' when startup finishes.
      ;; This defines how much data is read from a foreign process.
      ;; Setting this >= 1 MB should increase performance for lsp servers
      ;; in emacs 27.
      ;; (default (* 1024 1024))
      dotspacemacs-read-process-output-max (* 1024 1024)

      ;; If non-nil then Spacelpa repository is the primary source to install
      ;; a locked version of packages. If nil then Spacemacs will install the
      ;; latest version of packages from MELPA. Spacelpa is currently in
      ;; experimental state please use only for testing purposes.
      ;; (default nil)
      dotspacemacs-use-spacelpa nil

      ;; If non-nil then verify the signature for downloaded Spacelpa archives.
      ;; (default t)
      dotspacemacs-verify-spacelpa-archives t

      ;; If non-nil then spacemacs will check for updates at startup
      ;; when the current branch is not `develop'. Note that checking for
      ;; new versions works via git commands, thus it calls GitHub services
      ;; whenever you start Emacs. (default nil)
      dotspacemacs-check-for-update nil

      ;; If non-nil, a form that evaluates to a package directory. For example, to
      ;; use different package directories for different Emacs versions, set this
      ;; to `emacs-version'. (default 'emacs-version)
      dotspacemacs-elpa-subdirectory 'emacs-version

      ;; One of `vim', `emacs' or `hybrid'.
      ;; `hybrid' is like `vim' except that `insert state' is replaced by the
      ;; `hybrid state' with `emacs' key bindings. The value can also be a list
      ;; with `:variables' keyword (similar to layers). Check the editing styles
      ;; section of the documentation for details on available variables.
      ;; (default 'vim)
      dotspacemacs-editing-style 'emacs

      ;; If non-nil show the version string in the Spacemacs buffer. It will
      ;; appear as (spacemacs version)@(emacs version)
      ;; (default t)
      dotspacemacs-startup-buffer-show-version t

      ;; Specify the startup banner. Default value is `official', it displays
      ;; the official spacemacs logo. An integer value is the index of text
      ;; banner, `random' chooses a random text banner in `core/banners'
      ;; directory. A string value must be a path to an image format supported
      ;; by your Emacs build.
      ;; If the value is nil then no banner is displayed. (default 'official)
      dotspacemacs-startup-banner 'official

      ;; List of items to show in startup buffer or an association list of
      ;; the form `(list-type . list-size)`. If nil then it is disabled.
      ;; Possible values for list-type are:
      ;; `recents' `recents-by-project' `bookmarks' `projects' `agenda' `todos'.
      ;; List sizes may be nil, in which case
      ;; `spacemacs-buffer-startup-lists-length' takes effect.
      ;; The exceptional case is `recents-by-project', where list-type must be a
      ;; pair of numbers, e.g. `(recents-by-project . (7 .  5))', where the first
      ;; number is the project limit and the second the limit on the recent files
      ;; within a project.
      dotspacemacs-startup-lists '((recents . 5)
                                   (projects . 7))

      ;; True if the home buffer should respond to resize events. (default t)
      dotspacemacs-startup-buffer-responsive t

      ;; Show numbers before the startup list lines. (default t)
      dotspacemacs-show-startup-list-numbers t

      ;; The minimum delay in seconds between number key presses. (default 0.4)
      dotspacemacs-startup-buffer-multi-digit-delay 0.4

      ;; Default major mode for a new empty buffer. Possible values are mode
      ;; names such as `text-mode'; and `nil' to use Fundamental mode.
      ;; (default `text-mode')
      dotspacemacs-new-empty-buffer-major-mode 'text-mode

      ;; Default major mode of the scratch buffer (default `text-mode')
      dotspacemacs-scratch-mode 'text-mode

      ;; If non-nil, *scratch* buffer will be persistent. Things you write down in
      ;; *scratch* buffer will be saved and restored automatically.
      dotspacemacs-scratch-buffer-persistent nil

      ;; If non-nil, `kill-buffer' on *scratch* buffer
      ;; will bury it instead of killing.
      dotspacemacs-scratch-buffer-unkillable nil

      ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
      ;; (default nil)
      dotspacemacs-initial-scratch-message nil

      ;; List of themes, the first of the list is loaded when spacemacs starts.
      ;; Press `SPC T n' to cycle to the next theme in the list (works great
      ;; with 2 themes variants, one dark and one light)
      dotspacemacs-themes '(spacemacs-dark
                            spacemacs-light)

      ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
      ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
      ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
      ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
      ;; refer to the DOCUMENTATION.org for more info on how to create your own
      ;; spaceline theme. Value can be a symbol or list with additional properties.
      ;; (default '(spacemacs :separator wave :separator-scale 1.5))
      dotspacemacs-mode-line-theme '(doom :separator wave :separator-scale 1.5)

      ;; If non-nil the cursor color matches the state color in GUI Emacs.
      ;; (default t)
      dotspacemacs-colorize-cursor-according-to-state t

      ;; Default font or prioritized list of fonts. The `:size' can be specified as
      ;; a non-negative integer (pixel size), or a floating-point (point size).
      ;; Point size is recommended, because it's device independent. (default 10.0)
      dotspacemacs-default-font '("Fira Mono for Powerline"
                                  :size 11
                                  :weight normal
                                  :width normal
                                  :powerline-scale 1.1)

      ;; The leader key (default "SPC")
      dotspacemacs-leader-key "SPC"

      ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
      ;; (default "SPC")
      dotspacemacs-emacs-command-key "SPC"

      ;; The key used for Vim Ex commands (default ":")
      dotspacemacs-ex-command-key ":"

      ;; The leader key accessible in `emacs state' and `insert state'
      ;; (default "M-m")
      dotspacemacs-emacs-leader-key "M-m"

      ;; Major mode leader key is a shortcut key which is the equivalent of
      ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
      dotspacemacs-major-mode-leader-key ","

      ;; Major mode leader key accessible in `emacs state' and `insert state'.
      ;; (default "C-M-m" for terminal mode, "<M-return>" for GUI mode).
      ;; Thus M-RET should work as leader key in both GUI and terminal modes.
      ;; C-M-m also should work in terminal mode, but not in GUI mode.
      dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

      ;; These variables control whether separate commands are bound in the GUI to
      ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
      ;; Setting it to a non-nil value, allows for separate commands under `C-i'
      ;; and TAB or `C-m' and `RET'.
      ;; In the terminal, these pairs are generally indistinguishable, so this only
      ;; works in the GUI. (default nil)
      dotspacemacs-distinguish-gui-tab nil

      ;; Name of the default layout (default "Default")
      dotspacemacs-default-layout-name "Default"

      ;; If non-nil the default layout name is displayed in the mode-line.
      ;; (default nil)
      dotspacemacs-display-default-layout nil

      ;; If non-nil then the last auto saved layouts are resumed automatically upon
      ;; start. (default nil)
      dotspacemacs-auto-resume-layouts nil

      ;; If non-nil, auto-generate layout name when creating new layouts. Only has
      ;; effect when using the "jump to layout by number" commands. (default nil)
      dotspacemacs-auto-generate-layout-names nil

      ;; Size (in MB) above which spacemacs will prompt to open the large file
      ;; literally to avoid performance issues. Opening a file literally means that
      ;; no major mode or minor modes are active. (default is 1)
      dotspacemacs-large-file-size 1

      ;; Location where to auto-save files. Possible values are `original' to
      ;; auto-save the file in-place, `cache' to auto-save the file to another
      ;; file stored in the cache directory and `nil' to disable auto-saving.
      ;; (default 'cache)
      dotspacemacs-auto-save-file-location 'cache

      ;; Maximum number of rollback slots to keep in the cache. (default 5)
      dotspacemacs-max-rollback-slots 5

      ;; If non-nil, the paste transient-state is enabled. While enabled, after you
      ;; paste something, pressing `C-j' and `C-k' several times cycles through the
      ;; elements in the `kill-ring'. (default nil)
      dotspacemacs-enable-paste-transient-state nil

      ;; Which-key delay in seconds. The which-key buffer is the popup listing
      ;; the commands bound to the current keystroke sequence. (default 0.4)
      dotspacemacs-which-key-delay 0.4

      ;; Which-key frame position. Possible values are `right', `bottom' and
      ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
      ;; right; if there is insufficient space it displays it at the bottom.
      ;; (default 'bottom)
      dotspacemacs-which-key-position 'bottom

      ;; Control where `switch-to-buffer' displays the buffer. If nil,
      ;; `switch-to-buffer' displays the buffer in the current window even if
      ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
      ;; displays the buffer in a same-purpose window even if the buffer can be
      ;; displayed in the current window. (default nil)
      dotspacemacs-switch-to-buffer-prefers-purpose nil

      ;; If non-nil a progress bar is displayed when spacemacs is loading. This
      ;; may increase the boot time on some systems and emacs builds, set it to
      ;; nil to boost the loading time. (default t)
      dotspacemacs-loading-progress-bar t

      ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
      ;; (Emacs 24.4+ only)
      dotspacemacs-fullscreen-at-startup nil

      ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
      ;; Use to disable fullscreen animations in OSX. (default nil)
      dotspacemacs-fullscreen-use-non-native nil

      ;; If non-nil the frame is maximized when Emacs starts up.
      ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
      ;; (default nil) (Emacs 24.4+ only)
      dotspacemacs-maximized-at-startup nil

      ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
      ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
      ;; borderless fullscreen. (default nil)
      dotspacemacs-undecorated-at-startup nil

      ;; A value from the range (0..100), in increasing opacity, which describes
      ;; the transparency level of a frame when it's active or selected.
      ;; Transparency can be toggled through `toggle-transparency'. (default 90)
      dotspacemacs-active-transparency 90

      ;; A value from the range (0..100), in increasing opacity, which describes
      ;; the transparency level of a frame when it's inactive or deselected.
      ;; Transparency can be toggled through `toggle-transparency'. (default 90)
      dotspacemacs-inactive-transparency 90

      ;; If non-nil show the titles of transient states. (default t)
      dotspacemacs-show-transient-state-title t

      ;; If non-nil show the color guide hint for transient state keys. (default t)
      dotspacemacs-show-transient-state-color-guide t

      ;; If non-nil unicode symbols are displayed in the mode line.
      ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
      ;; the value to quoted `display-graphic-p'. (default t)
      dotspacemacs-mode-line-unicode-symbols t

      ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
      ;; scrolling overrides the default behavior of Emacs which recenters point
      ;; when it reaches the top or bottom of the screen. (default t)
      dotspacemacs-smooth-scrolling t

      ;; Show the scroll bar while scrolling. The auto hide time can be configured
      ;; by setting this variable to a number. (default t)
      dotspacemacs-scroll-bar-while-scrolling t

      ;; Control line numbers activation.
      ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
      ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
      ;; numbers are relative. If set to `visual', line numbers are also relative,
      ;; but only visual lines are counted. For example, folded lines will not be
      ;; counted and wrapped lines are counted as multiple lines.
      ;; This variable can also be set to a property list for finer control:
      ;; '(:relative nil
      ;;   :visual nil
      ;;   :disabled-for-modes dired-mode
      ;;                       doc-view-mode
      ;;                       markdown-mode
      ;;                       org-mode
      ;;                       pdf-view-mode
      ;;                       text-mode
      ;;   :size-limit-kb 1000)
      ;; When used in a plist, `visual' takes precedence over `relative'.
      ;; (default nil)
      dotspacemacs-line-numbers nil

      ;; Code folding method. Possible values are `evil', `origami' and `vimish'.
      ;; (default 'evil)
      dotspacemacs-folding-method 'evil
      e;; -*- mode: emacs-lisp; lexical-binding: t -*-
      ;; This file is loaded by Spacemacs at startup.
      ;; It must be stored in your home directory.

      (defun dotspacemacs/layers ()
        "Layer configuration:
This function should only modify configuration layer settings."
        (setq-default
         ;; Base distribution to use. This is a layer contained in the directory
         ;; `+distribution'. For now available distributions are `spacemacs-base'
         ;; or `spacemacs'. (default 'spacemacs)
         dotspacemacs-distribution 'spacemacs-base

         ;; Lazy installation of layers (i.e. layers are installed only when a file
         ;; with a supported type is opened). Possible values are `all', `unused'
         ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
         ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
         ;; lazy install any layer that support lazy installation even the layers
         ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
         ;; installation feature and you have to explicitly list a layer in the
         ;; variable `dotspacemacs-configuration-layers' to install it.
         ;; (default 'unused)
         dotspacemacs-enable-lazy-installation 'unused

         ;; If non-nil then Spacemacs will ask for confirmation before installing
         ;; a layer lazily. (default t)
         dotspacemacs-ask-for-lazy-installation t

         ;; List of additional paths where to look for configuration layers.
         ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
         dotspacemacs-configuration-layer-path '()

         ;; List of configuration layers to load.
         dotspacemacs-configuration-layers
         '(markdown
           sql
           go
           yaml
           python
           typescript
           html
           javascript
           markdown
           unicode-fonts
           solidity
           (node :variables node-add-modules-path t)
           (lsp :variables
                lsp-rust-server 'rust-analyzer
                ;; lsp-ui-doc-enable nil
                ;; lsp-rust-analyzer-server-display-inlay-hints nil
                ;;  lsp-eldoc-render-all t
                ;; lsp-rust-analyzer-cargo-watch-enable t
                ;; lsp-rust-analyzer-cargo-watch-command "clippy" ;; could be "clippy"

                ;; lsp-rust-analyzer-display-chaining-hints t
                ;; lsp-rust-analyzer-display-closure-return-type-hints t
                ;; lsp-rust-analyzer-display-parameter-hints t
                ;; lsp-rust-analyzer-display-reborrow-hints t
                ;; lsp-ui-peek-always-show t
                ;; lsp-ui-sideline-show-hover t

                )
           (rust :variables
                 rust-format-on-save t
                 rust-backend 'lsp
                 ;; rust-format-show-buffer t
                 )
           ;; ----------------------------------------------------------------
           ;; Example of useful layers you may want to use right away.
           ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
           ;; `M-m f e R' (Emacs style) to install them.
           ;; ----------------------------------------------------------------
           ;; auto-completion
           ;; better-defaults
           emacs-lisp
           ;; git
           ;; helm
           ivy
           ;; markdown
           multiple-cursors
           ;; org
           ;; (shell :variables
           ;;        shell-default-height 30
           ;;        shell-default-position 'bottom)
           ;; spell-checking
           ;; syntax-checking
           ;; version-control
           treemacs)


         ;; List of additional packages that will be installed without being wrapped
         ;; in a layer (generally the packages are installed only and should still be
         ;; loaded using load/require/use-package in the user-config section below in
         ;; this file). If you need some configuration for these packages, then
         ;; consider creating a layer. You can also put the configuration in
         ;; `dotspacemacs/user-config'. To use a local version of a package, use the
         ;; `:location' property: '(your-package :location "~/path/to/your-package/")
         ;; Also include the dependencies as they will not be resolved automatically.
         dotspacemacs-additional-packages '(all-the-icons python-black nginx-mode default-text-scale)

         ;; A list of packages that cannot be updated.
         dotspacemacs-frozen-packages '()

         ;; A list of packages that will not be installed and loaded.
         dotspacemacs-excluded-packages '()

         ;; Defines the behaviour of Spacemacs when installing packages.
         ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
         ;; `used-only' installs only explicitly used packages and deletes any unused
         ;; packages as well as their unused dependencies. `used-but-keep-unused'
         ;; installs only the used packages but won't delete unused ones. `all'
         ;; installs *all* packages supported by Spacemacs and never uninstalls them.
         ;; (default is `used-only')
         dotspacemacs-install-packages 'used-only))

      (defun dotspacemacs/init ()
        "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
        ;; This setq-default sexp is an exhaustive list of all the supported
        ;; spacemacs settings.
        (setq-default
         ;; If non-nil then enable support for the portable dumper. You'll need
         ;; to compile Emacs 27 from source following the instructions in file
         ;; EXPERIMENTAL.org at to root of the git repository.
         ;; (default nil)
         dotspacemacs-enable-emacs-pdumper nil

         ;; Name of executable file pointing to emacs 27+. This executable must be
         ;; in your PATH.
         ;; (default "emacs")
         dotspacemacs-emacs-pdumper-executable-file "emacs"

         ;; Name of the Spacemacs dump file. This is the file will be created by the
         ;; portable dumper in the cache directory under dumps sub-directory.
         ;; To load it when starting Emacs add the parameter `--dump-file'
         ;; when invoking Emacs 27.1 executable on the command line, for instance:
         ;;   ./emacs --dump-file=$HOME/.emacs.d/.cache/dumps/spacemacs-27.1.pdmp
         ;; (default (format "spacemacs-%s.pdmp" emacs-version))
         dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

         ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
         ;; possible. Set it to nil if you have no way to use HTTPS in your
         ;; environment, otherwise it is strongly recommended to let it set to t.
         ;; This variable has no effect if Emacs is launched with the parameter
         ;; `--insecure' which forces the value of this variable to nil.
         ;; (default t)
         dotspacemacs-elpa-https t

         ;; Maximum allowed time in seconds to contact an ELPA repository.
         ;; (default 5)
         dotspacemacs-elpa-timeout 5

         ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
         ;; This is an advanced option and should not be changed unless you suspect
         ;; performance issues due to garbage collection operations.
         ;; (default '(100000000 0.1))
         dotspacemacs-gc-cons '(100000000 0.1)

         ;; Set `read-process-output-max' when startup finishes.
         ;; This defines how much data is read from a foreign process.
         ;; Setting this >= 1 MB should increase performance for lsp servers
         ;; in emacs 27.
         ;; (default (* 1024 1024))
         dotspacemacs-read-process-output-max (* 1024 1024)

         ;; If non-nil then Spacelpa repository is the primary source to install
         ;; a locked version of packages. If nil then Spacemacs will install the
         ;; latest version of packages from MELPA. Spacelpa is currently in
         ;; experimental state please use only for testing purposes.
         ;; (default nil)
         dotspacemacs-use-spacelpa nil

         ;; If non-nil then verify the signature for downloaded Spacelpa archives.
         ;; (default t)
         dotspacemacs-verify-spacelpa-archives t

         ;; If non-nil then spacemacs will check for updates at startup
         ;; when the current branch is not `develop'. Note that checking for
         ;; new versions works via git commands, thus it calls GitHub services
         ;; whenever you start Emacs. (default nil)
         dotspacemacs-check-for-update nil

         ;; If non-nil, a form that evaluates to a package directory. For example, to
         ;; use different package directories for different Emacs versions, set this
         ;; to `emacs-version'. (default 'emacs-version)
         dotspacemacs-elpa-subdirectory 'emacs-version

         ;; One of `vim', `emacs' or `hybrid'.
         ;; `hybrid' is like `vim' except that `insert state' is replaced by the
         ;; `hybrid state' with `emacs' key bindings. The value can also be a list
         ;; with `:variables' keyword (similar to layers). Check the editing styles
         ;; section of the documentation for details on available variables.
         ;; (default 'vim)
         dotspacemacs-editing-style 'emacs

         ;; If non-nil show the version string in the Spacemacs buffer. It will
         ;; appear as (spacemacs version)@(emacs version)
         ;; (default t)
         dotspacemacs-startup-buffer-show-version t

         ;; Specify the startup banner. Default value is `official', it displays
         ;; the official spacemacs logo. An integer value is the index of text
         ;; banner, `random' chooses a random text banner in `core/banners'
         ;; directory. A string value must be a path to an image format supported
         ;; by your Emacs build.
         ;; If the value is nil then no banner is displayed. (default 'official)
         dotspacemacs-startup-banner 'official

         ;; List of items to show in startup buffer or an association list of
         ;; the form `(list-type . list-size)`. If nil then it is disabled.
         ;; Possible values for list-type are:
         ;; `recents' `recents-by-project' `bookmarks' `projects' `agenda' `todos'.
         ;; List sizes may be nil, in which case
         ;; `spacemacs-buffer-startup-lists-length' takes effect.
         ;; The exceptional case is `recents-by-project', where list-type must be a
         ;; pair of numbers, e.g. `(recents-by-project . (7 .  5))', where the first
         ;; number is the project limit and the second the limit on the recent files
         ;; within a project.
         dotspacemacs-startup-lists '((recents . 5)
                                      (projects . 7))

         ;; True if the home buffer should respond to resize events. (default t)
         dotspacemacs-startup-buffer-responsive t

         ;; Show numbers before the startup list lines. (default t)
         dotspacemacs-show-startup-list-numbers t

         ;; The minimum delay in seconds between number key presses. (default 0.4)
         dotspacemacs-startup-buffer-multi-digit-delay 0.4

         ;; Default major mode for a new empty buffer. Possible values are mode
         ;; names such as `text-mode'; and `nil' to use Fundamental mode.
         ;; (default `text-mode')
         dotspacemacs-new-empty-buffer-major-mode 'text-mode

         ;; Default major mode of the scratch buffer (default `text-mode')
         dotspacemacs-scratch-mode 'text-mode

         ;; If non-nil, *scratch* buffer will be persistent. Things you write down in
         ;; *scratch* buffer will be saved and restored automatically.
         dotspacemacs-scratch-buffer-persistent nil

         ;; If non-nil, `kill-buffer' on *scratch* buffer
         ;; will bury it instead of killing.
         dotspacemacs-scratch-buffer-unkillable nil

         ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
         ;; (default nil)
         dotspacemacs-initial-scratch-message nil

         ;; List of themes, the first of the list is loaded when spacemacs starts.
         ;; Press `SPC T n' to cycle to the next theme in the list (works great
         ;; with 2 themes variants, one dark and one light)
         dotspacemacs-themes '(spacemacs-dark
                               spacemacs-light)

         ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
         ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
         ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
         ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
         ;; refer to the DOCUMENTATION.org for more info on how to create your own
         ;; spaceline theme. Value can be a symbol or list with additional properties.
         ;; (default '(spacemacs :separator wave :separator-scale 1.5))
         dotspacemacs-mode-line-theme '(doom :separator wave :separator-scale 1.5)

         ;; If non-nil the cursor color matches the state color in GUI Emacs.
         ;; (default t)
         dotspacemacs-colorize-cursor-according-to-state t

         ;; Default font or prioritized list of fonts. The `:size' can be specified as
         ;; a non-negative integer (pixel size), or a floating-point (point size).
         ;; Point size is recommended, because it's device independent. (default 10.0)
         dotspacemacs-default-font '("Fira Mono for Powerline"
                                     :size 11
                                     :weight normal
                                     :width normal
                                     :powerline-scale 1.1)

         ;; The leader key (default "SPC")
         dotspacemacs-leader-key "SPC"

         ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
         ;; (default "SPC")
         dotspacemacs-emacs-command-key "SPC"

         ;; The key used for Vim Ex commands (default ":")
         dotspacemacs-ex-command-key ":"

         ;; The leader key accessible in `emacs state' and `insert state'
         ;; (default "M-m")
         dotspacemacs-emacs-leader-key "M-m"

         ;; Major mode leader key is a shortcut key which is the equivalent of
         ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
         dotspacemacs-major-mode-leader-key ","

         ;; Major mode leader key accessible in `emacs state' and `insert state'.
         ;; (default "C-M-m" for terminal mode, "<M-return>" for GUI mode).
         ;; Thus M-RET should work as leader key in both GUI and terminal modes.
         ;; C-M-m also should work in terminal mode, but not in GUI mode.
         dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

         ;; These variables control whether separate commands are bound in the GUI to
         ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
         ;; Setting it to a non-nil value, allows for separate commands under `C-i'
         ;; and TAB or `C-m' and `RET'.
         ;; In the terminal, these pairs are generally indistinguishable, so this only
         ;; works in the GUI. (default nil)
         dotspacemacs-distinguish-gui-tab nil

         ;; Name of the default layout (default "Default")
         dotspacemacs-default-layout-name "Default"

         ;; If non-nil the default layout name is displayed in the mode-line.
         ;; (default nil)
         dotspacemacs-display-default-layout nil

         ;; If non-nil then the last auto saved layouts are resumed automatically upon
         ;; start. (default nil)
         dotspacemacs-auto-resume-layouts nil

         ;; If non-nil, auto-generate layout name when creating new layouts. Only has
         ;; effect when using the "jump to layout by number" commands. (default nil)
         dotspacemacs-auto-generate-layout-names nil

         ;; Size (in MB) above which spacemacs will prompt to open the large file
         ;; literally to avoid performance issues. Opening a file literally means that
         ;; no major mode or minor modes are active. (default is 1)
         dotspacemacs-large-file-size 1

         ;; Location where to auto-save files. Possible values are `original' to
         ;; auto-save the file in-place, `cache' to auto-save the file to another
         ;; file stored in the cache directory and `nil' to disable auto-saving.
         ;; (default 'cache)
         dotspacemacs-auto-save-file-location 'cache

         ;; Maximum number of rollback slots to keep in the cache. (default 5)
         dotspacemacs-max-rollback-slots 5

         ;; If non-nil, the paste transient-state is enabled. While enabled, after you
         ;; paste something, pressing `C-j' and `C-k' several times cycles through the
         ;; elements in the `kill-ring'. (default nil)
         dotspacemacs-enable-paste-transient-state nil

         ;; Which-key delay in seconds. The which-key buffer is the popup listing
         ;; the commands bound to the current keystroke sequence. (default 0.4)
         dotspacemacs-which-key-delay 0.4

         ;; Which-key frame position. Possible values are `right', `bottom' and
         ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
         ;; right; if there is insufficient space it displays it at the bottom.
         ;; (default 'bottom)
         dotspacemacs-which-key-position 'bottom

         ;; Control where `switch-to-buffer' displays the buffer. If nil,
         ;; `switch-to-buffer' displays the buffer in the current window even if
         ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
         ;; displays the buffer in a same-purpose window even if the buffer can be
         ;; displayed in the current window. (default nil)
         dotspacemacs-switch-to-buffer-prefers-purpose nil

         ;; If non-nil a progress bar is displayed when spacemacs is loading. This
         ;; may increase the boot time on some systems and emacs builds, set it to
         ;; nil to boost the loading time. (default t)
         dotspacemacs-loading-progress-bar t

         ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
         ;; (Emacs 24.4+ only)
         dotspacemacs-fullscreen-at-startup nil

         ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
         ;; Use to disable fullscreen animations in OSX. (default nil)
         dotspacemacs-fullscreen-use-non-native nil

         ;; If non-nil the frame is maximized when Emacs starts up.
         ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
         ;; (default nil) (Emacs 24.4+ only)
         dotspacemacs-maximized-at-startup nil

         ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
         ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
         ;; borderless fullscreen. (default nil)
         dotspacemacs-undecorated-at-startup nil

         ;; A value from the range (0..100), in increasing opacity, which describes
         ;; the transparency level of a frame when it's active or selected.
         ;; Transparency can be toggled through `toggle-transparency'. (default 90)
         dotspacemacs-active-transparency 90

         ;; A value from the range (0..100), in increasing opacity, which describes
         ;; the transparency level of a frame when it's inactive or deselected.
         ;; Transparency can be toggled through `toggle-transparency'. (default 90)
         dotspacemacs-inactive-transparency 90

         ;; If non-nil show the titles of transient states. (default t)
         dotspacemacs-show-transient-state-title t

         ;; If non-nil show the color guide hint for transient state keys. (default t)
         dotspacemacs-show-transient-state-color-guide t

         ;; If non-nil unicode symbols are displayed in the mode line.
         ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
         ;; the value to quoted `display-graphic-p'. (default t)
         dotspacemacs-mode-line-unicode-symbols t

         ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
         ;; scrolling overrides the default behavior of Emacs which recenters point
         ;; when it reaches the top or bottom of the screen. (default t)
         dotspacemacs-smooth-scrolling t

         ;; Show the scroll bar while scrolling. The auto hide time can be configured
         ;; by setting this variable to a number. (default t)
         dotspacemacs-scroll-bar-while-scrolling t

         ;; Control line numbers activation.
         ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
         ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
         ;; numbers are relative. If set to `visual', line numbers are also relative,
         ;; but only visual lines are counted. For example, folded lines will not be
         ;; counted and wrapped lines are counted as multiple lines.
         ;; This variable can also be set to a property list for finer control:
         ;; '(:relative nil
         ;;   :visual nil
         ;;   :disabled-for-modes dired-mode
         ;;                       doc-view-mode
         ;;                       markdown-mode
         ;;                       org-mode
         ;;                       pdf-view-mode
         ;;                       text-mode
         ;;   :size-limit-kb 1000)
         ;; When used in a plist, `visual' takes precedence over `relative'.
         ;; (default nil)
         dotspacemacs-line-numbers nil

         ;; Code folding method. Possible values are `evil', `origami' and `vimish'.
         ;; (default 'evil)
         dotspacemacs-folding-method 'evil
         e;; -*- mode: emacs-lisp; lexical-binding: t -*-
         ;; This file is loaded by Spacemacs at startup.
         ;; It must be stored in your home directory.

         (defun dotspacemacs/layers ()
           "Layer configuration:
This function should only modify configuration layer settings."
           (setq-default
            ;; Base distribution to use. This is a layer contained in the directory
            ;; `+distribution'. For now available distributions are `spacemacs-base'
            ;; or `spacemacs'. (default 'spacemacs)
            dotspacemacs-distribution 'spacemacs-base

            ;; Lazy installation of layers (i.e. layers are installed only when a file
            ;; with a supported type is opened). Possible values are `all', `unused'
            ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
            ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
            ;; lazy install any layer that support lazy installation even the layers
            ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
            ;; installation feature and you have to explicitly list a layer in the
            ;; variable `dotspacemacs-configuration-layers' to install it.
            ;; (default 'unused)
            dotspacemacs-enable-lazy-installation 'unused

            ;; If non-nil then Spacemacs will ask for confirmation before installing
            ;; a layer lazily. (default t)
            dotspacemacs-ask-for-lazy-installation t

            ;; List of additional paths where to look for configuration layers.
            ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
            dotspacemacs-configuration-layer-path '()

            ;; List of configuration layers to load.
            dotspacemacs-configuration-layers
            '(markdown
              sql
              go
              yaml
              python
              typescript
              html
              javascript
              markdown
              unicode-fonts
              solidity
              (node :variables node-add-modules-path t)
              (lsp :variables
                   lsp-rust-server 'rust-analyzer
                   ;; lsp-ui-doc-enable nil
                   ;; lsp-rust-analyzer-server-display-inlay-hints nil
                   ;;  lsp-eldoc-render-all t
                   ;; lsp-rust-analyzer-cargo-watch-enable t
                   ;; lsp-rust-analyzer-cargo-watch-command "clippy" ;; could be "clippy"

                   ;; lsp-rust-analyzer-display-chaining-hints t
                   ;; lsp-rust-analyzer-display-closure-return-type-hints t
                   ;; lsp-rust-analyzer-display-parameter-hints t
                   ;; lsp-rust-analyzer-display-reborrow-hints t
                   ;; lsp-ui-peek-always-show t
                   ;; lsp-ui-sideline-show-hover t

                   )
              (rust :variables
                    rust-format-on-save t
                    rust-backend 'lsp
                    ;; rust-format-show-buffer t
                    )
              ;; ----------------------------------------------------------------
              ;; Example of useful layers you may want to use right away.
              ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
              ;; `M-m f e R' (Emacs style) to install them.
              ;; ----------------------------------------------------------------
              ;; auto-completion
              ;; better-defaults
              emacs-lisp
              ;; git
              ;; helm
              ivy
              ;; markdown
              multiple-cursors
              ;; org
              ;; (shell :variables
              ;;        shell-default-height 30
              ;;        shell-default-position 'bottom)
              ;; spell-checking
              ;; syntax-checking
              ;; version-control
              treemacs)


            ;; List of additional packages that will be installed without being wrapped
            ;; in a layer (generally the packages are installed only and should still be
            ;; loaded using load/require/use-package in the user-config section below in
            ;; this file). If you need some configuration for these packages, then
            ;; consider creating a layer. You can also put the configuration in
            ;; `dotspacemacs/user-config'. To use a local version of a package, use the
            ;; `:location' property: '(your-package :location "~/path/to/your-package/")
            ;; Also include the dependencies as they will not be resolved automatically.
            dotspacemacs-additional-packages '(all-the-icons python-black nginx-mode default-text-scale)

            ;; A list of packages that cannot be updated.
            dotspacemacs-frozen-packages '()

            ;; A list of packages that will not be installed and loaded.
            dotspacemacs-excluded-packages '()

            ;; Defines the behaviour of Spacemacs when installing packages.
            ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
            ;; `used-only' installs only explicitly used packages and deletes any unused
            ;; packages as well as their unused dependencies. `used-but-keep-unused'
            ;; installs only the used packages but won't delete unused ones. `all'
            ;; installs *all* packages supported by Spacemacs and never uninstalls them.
            ;; (default is `used-only')
            dotspacemacs-install-packages 'used-only))

         (defun dotspacemacs/init ()
           "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
           ;; This setq-default sexp is an exhaustive list of all the supported
           ;; spacemacs settings.
           (setq-default
            ;; If non-nil then enable support for the portable dumper. You'll need
            ;; to compile Emacs 27 from source following the instructions in file
            ;; EXPERIMENTAL.org at to root of the git repository.
            ;; (default nil)
            dotspacemacs-enable-emacs-pdumper nil

            ;; Name of executable file pointing to emacs 27+. This executable must be
            ;; in your PATH.
            ;; (default "emacs")
            dotspacemacs-emacs-pdumper-executable-file "emacs"

            ;; Name of the Spacemacs dump file. This is the file will be created by the
            ;; portable dumper in the cache directory under dumps sub-directory.
            ;; To load it when starting Emacs add the parameter `--dump-file'
            ;; when invoking Emacs 27.1 executable on the command line, for instance:
            ;;   ./emacs --dump-file=$HOME/.emacs.d/.cache/dumps/spacemacs-27.1.pdmp
            ;; (default (format "spacemacs-%s.pdmp" emacs-version))
            dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

            ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
            ;; possible. Set it to nil if you have no way to use HTTPS in your
            ;; environment, otherwise it is strongly recommended to let it set to t.
            ;; This variable has no effect if Emacs is launched with the parameter
            ;; `--insecure' which forces the value of this variable to nil.
            ;; (default t)
            dotspacemacs-elpa-https t

            ;; Maximum allowed time in seconds to contact an ELPA repository.
            ;; (default 5)
            dotspacemacs-elpa-timeout 5

            ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
            ;; This is an advanced option and should not be changed unless you suspect
            ;; performance issues due to garbage collection operations.
            ;; (default '(100000000 0.1))
            dotspacemacs-gc-cons '(100000000 0.1)

            ;; Set `read-process-output-max' when startup finishes.
            ;; This defines how much data is read from a foreign process.
            ;; Setting this >= 1 MB should increase performance for lsp servers
            ;; in emacs 27.
            ;; (default (* 1024 1024))
            dotspacemacs-read-process-output-max (* 1024 1024)

            ;; If non-nil then Spacelpa repository is the primary source to install
            ;; a locked version of packages. If nil then Spacemacs will install the
            ;; latest version of packages from MELPA. Spacelpa is currently in
            ;; experimental state please use only for testing purposes.
            ;; (default nil)
            dotspacemacs-use-spacelpa nil

            ;; If non-nil then verify the signature for downloaded Spacelpa archives.
            ;; (default t)
            dotspacemacs-verify-spacelpa-archives t

            ;; If non-nil then spacemacs will check for updates at startup
            ;; when the current branch is not `develop'. Note that checking for
            ;; new versions works via git commands, thus it calls GitHub services
            ;; whenever you start Emacs. (default nil)
            dotspacemacs-check-for-update nil

            ;; If non-nil, a form that evaluates to a package directory. For example, to
            ;; use different package directories for different Emacs versions, set this
            ;; to `emacs-version'. (default 'emacs-version)
            dotspacemacs-elpa-subdirectory 'emacs-version

            ;; One of `vim', `emacs' or `hybrid'.
            ;; `hybrid' is like `vim' except that `insert state' is replaced by the
            ;; `hybrid state' with `emacs' key bindings. The value can also be a list
            ;; with `:variables' keyword (similar to layers). Check the editing styles
            ;; section of the documentation for details on available variables.
            ;; (default 'vim)
            dotspacemacs-editing-style 'emacs

            ;; If non-nil show the version string in the Spacemacs buffer. It will
            ;; appear as (spacemacs version)@(emacs version)
            ;; (default t)
            dotspacemacs-startup-buffer-show-version t

            ;; Specify the startup banner. Default value is `official', it displays
            ;; the official spacemacs logo. An integer value is the index of text
            ;; banner, `random' chooses a random text banner in `core/banners'
            ;; directory. A string value must be a path to an image format supported
            ;; by your Emacs build.
            ;; If the value is nil then no banner is displayed. (default 'official)
            dotspacemacs-startup-banner 'official

            ;; List of items to show in startup buffer or an association list of
            ;; the form `(list-type . list-size)`. If nil then it is disabled.
            ;; Possible values for list-type are:
            ;; `recents' `recents-by-project' `bookmarks' `projects' `agenda' `todos'.
            ;; List sizes may be nil, in which case
            ;; `spacemacs-buffer-startup-lists-length' takes effect.
            ;; The exceptional case is `recents-by-project', where list-type must be a
            ;; pair of numbers, e.g. `(recents-by-project . (7 .  5))', where the first
            ;; number is the project limit and the second the limit on the recent files
            ;; within a project.
            dotspacemacs-startup-lists '((recents . 5)
                                         (projects . 7))

            ;; True if the home buffer should respond to resize events. (default t)
            dotspacemacs-startup-buffer-responsive t

            ;; Show numbers before the startup list lines. (default t)
            dotspacemacs-show-startup-list-numbers t

            ;; The minimum delay in seconds between number key presses. (default 0.4)
            dotspacemacs-startup-buffer-multi-digit-delay 0.4

            ;; Default major mode for a new empty buffer. Possible values are mode
            ;; names such as `text-mode'; and `nil' to use Fundamental mode.
            ;; (default `text-mode')
            dotspacemacs-new-empty-buffer-major-mode 'text-mode

            ;; Default major mode of the scratch buffer (default `text-mode')
            dotspacemacs-scratch-mode 'text-mode

            ;; If non-nil, *scratch* buffer will be persistent. Things you write down in
            ;; *scratch* buffer will be saved and restored automatically.
            dotspacemacs-scratch-buffer-persistent nil

            ;; If non-nil, `kill-buffer' on *scratch* buffer
            ;; will bury it instead of killing.
            dotspacemacs-scratch-buffer-unkillable nil

            ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
            ;; (default nil)
            dotspacemacs-initial-scratch-message nil

            ;; List of themes, the first of the list is loaded when spacemacs starts.
            ;; Press `SPC T n' to cycle to the next theme in the list (works great
            ;; with 2 themes variants, one dark and one light)
            dotspacemacs-themes '(spacemacs-dark
                                  spacemacs-light)

            ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
            ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
            ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
            ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
            ;; refer to the DOCUMENTATION.org for more info on how to create your own
            ;; spaceline theme. Value can be a symbol or list with additional properties.
            ;; (default '(spacemacs :separator wave :separator-scale 1.5))
            dotspacemacs-mode-line-theme '(doom :separator wave :separator-scale 1.5)

            ;; If non-nil the cursor color matches the state color in GUI Emacs.
            ;; (default t)
            dotspacemacs-colorize-cursor-according-to-state t

            ;; Default font or prioritized list of fonts. The `:size' can be specified as
            ;; a non-negative integer (pixel size), or a floating-point (point size).
            ;; Point size is recommended, because it's device independent. (default 10.0)
            dotspacemacs-default-font '("Fira Mono for Powerline"
                                        :size 11
                                        :weight normal
                                        :width normal
                                        :powerline-scale 1.1)

            ;; The leader key (default "SPC")
            dotspacemacs-leader-key "SPC"

            ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
            ;; (default "SPC")
            dotspacemacs-emacs-command-key "SPC"

            ;; The key used for Vim Ex commands (default ":")
            dotspacemacs-ex-command-key ":"

            ;; The leader key accessible in `emacs state' and `insert state'
            ;; (default "M-m")
            dotspacemacs-emacs-leader-key "M-m"

            ;; Major mode leader key is a shortcut key which is the equivalent of
            ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
            dotspacemacs-major-mode-leader-key ","

            ;; Major mode leader key accessible in `emacs state' and `insert state'.
            ;; (default "C-M-m" for terminal mode, "<M-return>" for GUI mode).
            ;; Thus M-RET should work as leader key in both GUI and terminal modes.
            ;; C-M-m also should work in terminal mode, but not in GUI mode.
            dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

            ;; These variables control whether separate commands are bound in the GUI to
            ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
            ;; Setting it to a non-nil value, allows for separate commands under `C-i'
            ;; and TAB or `C-m' and `RET'.
            ;; In the terminal, these pairs are generally indistinguishable, so this only
            ;; works in the GUI. (default nil)
            dotspacemacs-distinguish-gui-tab nil

            ;; Name of the default layout (default "Default")
            dotspacemacs-default-layout-name "Default"

            ;; If non-nil the default layout name is displayed in the mode-line.
            ;; (default nil)
            dotspacemacs-display-default-layout nil

            ;; If non-nil then the last auto saved layouts are resumed automatically upon
            ;; start. (default nil)
            dotspacemacs-auto-resume-layouts nil

            ;; If non-nil, auto-generate layout name when creating new layouts. Only has
            ;; effect when using the "jump to layout by number" commands. (default nil)
            dotspacemacs-auto-generate-layout-names nil

            ;; Size (in MB) above which spacemacs will prompt to open the large file
            ;; literally to avoid performance issues. Opening a file literally means that
            ;; no major mode or minor modes are active. (default is 1)
            dotspacemacs-large-file-size 1

            ;; Location where to auto-save files. Possible values are `original' to
            ;; auto-save the file in-place, `cache' to auto-save the file to another
            ;; file stored in the cache directory and `nil' to disable auto-saving.
            ;; (default 'cache)
            dotspacemacs-auto-save-file-location 'cache

            ;; Maximum number of rollback slots to keep in the cache. (default 5)
            dotspacemacs-max-rollback-slots 5

            ;; If non-nil, the paste transient-state is enabled. While enabled, after you
            ;; paste something, pressing `C-j' and `C-k' several times cycles through the
            ;; elements in the `kill-ring'. (default nil)
            dotspacemacs-enable-paste-transient-state nil

            ;; Which-key delay in seconds. The which-key buffer is the popup listing
            ;; the commands bound to the current keystroke sequence. (default 0.4)
            dotspacemacs-which-key-delay 0.4

            ;; Which-key frame position. Possible values are `right', `bottom' and
            ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
            ;; right; if there is insufficient space it displays it at the bottom.
            ;; (default 'bottom)
            dotspacemacs-which-key-position 'bottom

            ;; Control where `switch-to-buffer' displays the buffer. If nil,
            ;; `switch-to-buffer' displays the buffer in the current window even if
            ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
            ;; displays the buffer in a same-purpose window even if the buffer can be
            ;; displayed in the current window. (default nil)
            dotspacemacs-switch-to-buffer-prefers-purpose nil

            ;; If non-nil a progress bar is displayed when spacemacs is loading. This
            ;; may increase the boot time on some systems and emacs builds, set it to
            ;; nil to boost the loading time. (default t)
            dotspacemacs-loading-progress-bar t

            ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
            ;; (Emacs 24.4+ only)
            dotspacemacs-fullscreen-at-startup nil

            ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
            ;; Use to disable fullscreen animations in OSX. (default nil)
            dotspacemacs-fullscreen-use-non-native nil

            ;; If non-nil the frame is maximized when Emacs starts up.
            ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
            ;; (default nil) (Emacs 24.4+ only)
            dotspacemacs-maximized-at-startup nil

            ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
            ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
            ;; borderless fullscreen. (default nil)
            dotspacemacs-undecorated-at-startup nil

            ;; A value from the range (0..100), in increasing opacity, which describes
            ;; the transparency level of a frame when it's active or selected.
            ;; Transparency can be toggled through `toggle-transparency'. (default 90)
            dotspacemacs-active-transparency 90

            ;; A value from the range (0..100), in increasing opacity, which describes
            ;; the transparency level of a frame when it's inactive or deselected.
            ;; Transparency can be toggled through `toggle-transparency'. (default 90)
            dotspacemacs-inactive-transparency 90

            ;; If non-nil show the titles of transient states. (default t)
            dotspacemacs-show-transient-state-title t

            ;; If non-nil show the color guide hint for transient state keys. (default t)
            dotspacemacs-show-transient-state-color-guide t

            ;; If non-nil unicode symbols are displayed in the mode line.
            ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
            ;; the value to quoted `display-graphic-p'. (default t)
            dotspacemacs-mode-line-unicode-symbols t

            ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
            ;; scrolling overrides the default behavior of Emacs which recenters point
            ;; when it reaches the top or bottom of the screen. (default t)
            dotspacemacs-smooth-scrolling t

            ;; Show the scroll bar while scrolling. The auto hide time can be configured
            ;; by setting this variable to a number. (default t)
            dotspacemacs-scroll-bar-while-scrolling t

            ;; Control line numbers activation.
            ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
            ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
            ;; numbers are relative. If set to `visual', line numbers are also relative,
            ;; but only visual lines are counted. For example, folded lines will not be
            ;; counted and wrapped lines are counted as multiple lines.
            ;; This variable can also be set to a property list for finer control:
            ;; '(:relative nil
            ;;   :visual nil
            ;;   :disabled-for-modes dired-mode
            ;;                       doc-view-mode
            ;;                       markdown-mode
            ;;                       org-mode
            ;;                       pdf-view-mode
            ;;                       text-mode
            ;;   :size-limit-kb 1000)
            ;; When used in a plist, `visual' takes precedence over `relative'.
            ;; (default nil)
            dotspacemacs-line-numbers nil

            ;; Code folding method. Possible values are `evil', `origami' and `vimish'.
            ;; (default 'evil)
            dotspacemacs-folding-method 'evil
            e;; -*- mode: emacs-lisp; lexical-binding: t -*-
            ;; This file is loaded by Spacemacs at startup.
            ;; It must be stored in your home directory.

            (defun dotspacemacs/layers ()
              "Layer configuration:
This function should only modify configuration layer settings."
              (setq-default
               ;; Base distribution to use. This is a layer contained in the directory
               ;; `+distribution'. For now available distributions are `spacemacs-base'
               ;; or `spacemacs'. (default 'spacemacs)
               dotspacemacs-distribution 'spacemacs-base

               ;; Lazy installation of layers (i.e. layers are installed only when a file
               ;; with a supported type is opened). Possible values are `all', `unused'
               ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
               ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
               ;; lazy install any layer that support lazy installation even the layers
               ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
               ;; installation feature and you have to explicitly list a layer in the
               ;; variable `dotspacemacs-configuration-layers' to install it.
               ;; (default 'unused)
               dotspacemacs-enable-lazy-installation 'unused

               ;; If non-nil then Spacemacs will ask for confirmation before installing
               ;; a layer lazily. (default t)
               dotspacemacs-ask-for-lazy-installation t

               ;; List of additional paths where to look for configuration layers.
               ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
               dotspacemacs-configuration-layer-path '()

               ;; List of configuration layers to load.
               dotspacemacs-configuration-layers
               '(markdown
                 sql
                 go
                 yaml
                 python
                 typescript
                 html
                 javascript
                 markdown
                 unicode-fonts
                 solidity
                 (node :variables node-add-modules-path t)
                 (lsp :variables
                      lsp-rust-server 'rust-analyzer
                      ;; lsp-ui-doc-enable nil
                      ;; lsp-rust-analyzer-server-display-inlay-hints nil
                      ;;  lsp-eldoc-render-all t
                      ;; lsp-rust-analyzer-cargo-watch-enable t
                      ;; lsp-rust-analyzer-cargo-watch-command "clippy" ;; could be "clippy"

                      ;; lsp-rust-analyzer-display-chaining-hints t
                      ;; lsp-rust-analyzer-display-closure-return-type-hints t
                      ;; lsp-rust-analyzer-display-parameter-hints t
                      ;; lsp-rust-analyzer-display-reborrow-hints t
                      ;; lsp-ui-peek-always-show t
                      ;; lsp-ui-sideline-show-hover t

                      )
                 (rust :variables
                       rust-format-on-save t
                       rust-backend 'lsp
                       ;; rust-format-show-buffer t
                       )
                 ;; ----------------------------------------------------------------
                 ;; Example of useful layers you may want to use right away.
                 ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
                 ;; `M-m f e R' (Emacs style) to install them.
                 ;; ----------------------------------------------------------------
                 ;; auto-completion
                 ;; better-defaults
                 emacs-lisp
                 ;; git
                 ;; helm
                 ivy
                 ;; markdown
                 multiple-cursors
                 ;; org
                 ;; (shell :variables
                 ;;        shell-default-height 30
                 ;;        shell-default-position 'bottom)
                 ;; spell-checking
                 ;; syntax-checking
                 ;; version-control
                 treemacs)


               ;; List of additional packages that will be installed without being wrapped
               ;; in a layer (generally the packages are installed only and should still be
               ;; loaded using load/require/use-package in the user-config section below in
               ;; this file). If you need some configuration for these packages, then
               ;; consider creating a layer. You can also put the configuration in
               ;; `dotspacemacs/user-config'. To use a local version of a package, use the
               ;; `:location' property: '(your-package :location "~/path/to/your-package/")
               ;; Also include the dependencies as they will not be resolved automatically.
               dotspacemacs-additional-packages '(all-the-icons python-black nginx-mode default-text-scale)

               ;; A list of packages that cannot be updated.
               dotspacemacs-frozen-packages '()

               ;; A list of packages that will not be installed and loaded.
               dotspacemacs-excluded-packages '()

               ;; Defines the behaviour of Spacemacs when installing packages.
               ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
               ;; `used-only' installs only explicitly used packages and deletes any unused
               ;; packages as well as their unused dependencies. `used-but-keep-unused'
               ;; installs only the used packages but won't delete unused ones. `all'
               ;; installs *all* packages supported by Spacemacs and never uninstalls them.
               ;; (default is `used-only')
               dotspacemacs-install-packages 'used-only))

            (defun dotspacemacs/init ()
              "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
              ;; This setq-default sexp is an exhaustive list of all the supported
              ;; spacemacs settings.
              (setq-default
               ;; If non-nil then enable support for the portable dumper. You'll need
               ;; to compile Emacs 27 from source following the instructions in file
               ;; EXPERIMENTAL.org at to root of the git repository.
               ;; (default nil)
               dotspacemacs-enable-emacs-pdumper nil

               ;; Name of executable file pointing to emacs 27+. This executable must be
               ;; in your PATH.
               ;; (default "emacs")
               dotspacemacs-emacs-pdumper-executable-file "emacs"

               ;; Name of the Spacemacs dump file. This is the file will be created by the
               ;; portable dumper in the cache directory under dumps sub-directory.
               ;; To load it when starting Emacs add the parameter `--dump-file'
               ;; when invoking Emacs 27.1 executable on the command line, for instance:
               ;;   ./emacs --dump-file=$HOME/.emacs.d/.cache/dumps/spacemacs-27.1.pdmp
               ;; (default (format "spacemacs-%s.pdmp" emacs-version))
               dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

               ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
               ;; possible. Set it to nil if you have no way to use HTTPS in your
               ;; environment, otherwise it is strongly recommended to let it set to t.
               ;; This variable has no effect if Emacs is launched with the parameter
               ;; `--insecure' which forces the value of this variable to nil.
               ;; (default t)
               dotspacemacs-elpa-https t

               ;; Maximum allowed time in seconds to contact an ELPA repository.
               ;; (default 5)
               dotspacemacs-elpa-timeout 5

               ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
               ;; This is an advanced option and should not be changed unless you suspect
               ;; performance issues due to garbage collection operations.
               ;; (default '(100000000 0.1))
               dotspacemacs-gc-cons '(100000000 0.1)

               ;; Set `read-process-output-max' when startup finishes.
               ;; This defines how much data is read from a foreign process.
               ;; Setting this >= 1 MB should increase performance for lsp servers
               ;; in emacs 27.
               ;; (default (* 1024 1024))
               dotspacemacs-read-process-output-max (* 1024 1024)

               ;; If non-nil then Spacelpa repository is the primary source to install
               ;; a locked version of packages. If nil then Spacemacs will install the
               ;; latest version of packages from MELPA. Spacelpa is currently in
               ;; experimental state please use only for testing purposes.
               ;; (default nil)
               dotspacemacs-use-spacelpa nil

               ;; If non-nil then verify the signature for downloaded Spacelpa archives.
               ;; (default t)
               dotspacemacs-verify-spacelpa-archives t

               ;; If non-nil then spacemacs will check for updates at startup
               ;; when the current branch is not `develop'. Note that checking for
               ;; new versions works via git commands, thus it calls GitHub services
               ;; whenever you start Emacs. (default nil)
               dotspacemacs-check-for-update nil

               ;; If non-nil, a form that evaluates to a package directory. For example, to
               ;; use different package directories for different Emacs versions, set this
               ;; to `emacs-version'. (default 'emacs-version)
               dotspacemacs-elpa-subdirectory 'emacs-version

               ;; One of `vim', `emacs' or `hybrid'.
               ;; `hybrid' is like `vim' except that `insert state' is replaced by the
               ;; `hybrid state' with `emacs' key bindings. The value can also be a list
               ;; with `:variables' keyword (similar to layers). Check the editing styles
               ;; section of the documentation for details on available variables.
               ;; (default 'vim)
               dotspacemacs-editing-style 'emacs

               ;; If non-nil show the version string in the Spacemacs buffer. It will
               ;; appear as (spacemacs version)@(emacs version)
               ;; (default t)
               dotspacemacs-startup-buffer-show-version t

               ;; Specify the startup banner. Default value is `official', it displays
               ;; the official spacemacs logo. An integer value is the index of text
               ;; banner, `random' chooses a random text banner in `core/banners'
               ;; directory. A string value must be a path to an image format supported
               ;; by your Emacs build.
               ;; If the value is nil then no banner is displayed. (default 'official)
               dotspacemacs-startup-banner 'official

               ;; List of items to show in startup buffer or an association list of
               ;; the form `(list-type . list-size)`. If nil then it is disabled.
               ;; Possible values for list-type are:
               ;; `recents' `recents-by-project' `bookmarks' `projects' `agenda' `todos'.
               ;; List sizes may be nil, in which case
               ;; `spacemacs-buffer-startup-lists-length' takes effect.
               ;; The exceptional case is `recents-by-project', where list-type must be a
               ;; pair of numbers, e.g. `(recents-by-project . (7 .  5))', where the first
               ;; number is the project limit and the second the limit on the recent files
               ;; within a project.
               dotspacemacs-startup-lists '((recents . 5)
                                            (projects . 7))

               ;; True if the home buffer should respond to resize events. (default t)
               dotspacemacs-startup-buffer-responsive t

               ;; Show numbers before the startup list lines. (default t)
               dotspacemacs-show-startup-list-numbers t

               ;; The minimum delay in seconds between number key presses. (default 0.4)
               dotspacemacs-startup-buffer-multi-digit-delay 0.4

               ;; Default major mode for a new empty buffer. Possible values are mode
               ;; names such as `text-mode'; and `nil' to use Fundamental mode.
               ;; (default `text-mode')
               dotspacemacs-new-empty-buffer-major-mode 'text-mode

               ;; Default major mode of the scratch buffer (default `text-mode')
               dotspacemacs-scratch-mode 'text-mode

               ;; If non-nil, *scratch* buffer will be persistent. Things you write down in
               ;; *scratch* buffer will be saved and restored automatically.
               dotspacemacs-scratch-buffer-persistent nil

               ;; If non-nil, `kill-buffer' on *scratch* buffer
               ;; will bury it instead of killing.
               dotspacemacs-scratch-buffer-unkillable nil

               ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
               ;; (default nil)
               dotspacemacs-initial-scratch-message nil

               ;; List of themes, the first of the list is loaded when spacemacs starts.
               ;; Press `SPC T n' to cycle to the next theme in the list (works great
               ;; with 2 themes variants, one dark and one light)
               dotspacemacs-themes '(spacemacs-dark
                                     spacemacs-light)

               ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
               ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
               ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
               ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
               ;; refer to the DOCUMENTATION.org for more info on how to create your own
               ;; spaceline theme. Value can be a symbol or list with additional properties.
               ;; (default '(spacemacs :separator wave :separator-scale 1.5))
               dotspacemacs-mode-line-theme '(doom :separator wave :separator-scale 1.5)

               ;; If non-nil the cursor color matches the state color in GUI Emacs.
               ;; (default t)
               dotspacemacs-colorize-cursor-according-to-state t

               ;; Default font or prioritized list of fonts. The `:size' can be specified as
               ;; a non-negative integer (pixel size), or a floating-point (point size).
               ;; Point size is recommended, because it's device independent. (default 10.0)
               dotspacemacs-default-font '("Fira Mono for Powerline"
                                           :size 11
                                           :weight normal
                                           :width normal
                                           :powerline-scale 1.1)

               ;; The leader key (default "SPC")
               dotspacemacs-leader-key "SPC"

               ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
               ;; (default "SPC")
               dotspacemacs-emacs-command-key "SPC"

               ;; The key used for Vim Ex commands (default ":")
               dotspacemacs-ex-command-key ":"

               ;; The leader key accessible in `emacs state' and `insert state'
               ;; (default "M-m")
               dotspacemacs-emacs-leader-key "M-m"

               ;; Major mode leader key is a shortcut key which is the equivalent of
               ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
               dotspacemacs-major-mode-leader-key ","

               ;; Major mode leader key accessible in `emacs state' and `insert state'.
               ;; (default "C-M-m" for terminal mode, "<M-return>" for GUI mode).
               ;; Thus M-RET should work as leader key in both GUI and terminal modes.
               ;; C-M-m also should work in terminal mode, but not in GUI mode.
               dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

               ;; These variables control whether separate commands are bound in the GUI to
               ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
               ;; Setting it to a non-nil value, allows for separate commands under `C-i'
               ;; and TAB or `C-m' and `RET'.
               ;; In the terminal, these pairs are generally indistinguishable, so this only
               ;; works in the GUI. (default nil)
               dotspacemacs-distinguish-gui-tab nil

               ;; Name of the default layout (default "Default")
               dotspacemacs-default-layout-name "Default"

               ;; If non-nil the default layout name is displayed in the mode-line.
               ;; (default nil)
               dotspacemacs-display-default-layout nil

               ;; If non-nil then the last auto saved layouts are resumed automatically upon
               ;; start. (default nil)
               dotspacemacs-auto-resume-layouts nil

               ;; If non-nil, auto-generate layout name when creating new layouts. Only has
               ;; effect when using the "jump to layout by number" commands. (default nil)
               dotspacemacs-auto-generate-layout-names nil

               ;; Size (in MB) above which spacemacs will prompt to open the large file
               ;; literally to avoid performance issues. Opening a file literally means that
               ;; no major mode or minor modes are active. (default is 1)
               dotspacemacs-large-file-size 1

               ;; Location where to auto-save files. Possible values are `original' to
               ;; auto-save the file in-place, `cache' to auto-save the file to another
               ;; file stored in the cache directory and `nil' to disable auto-saving.
               ;; (default 'cache)
               dotspacemacs-auto-save-file-location 'cache

               ;; Maximum number of rollback slots to keep in the cache. (default 5)
               dotspacemacs-max-rollback-slots 5

               ;; If non-nil, the paste transient-state is enabled. While enabled, after you
               ;; paste something, pressing `C-j' and `C-k' several times cycles through the
               ;; elements in the `kill-ring'. (default nil)
               dotspacemacs-enable-paste-transient-state nil

               ;; Which-key delay in seconds. The which-key buffer is the popup listing
               ;; the commands bound to the current keystroke sequence. (default 0.4)
               dotspacemacs-which-key-delay 0.4

               ;; Which-key frame position. Possible values are `right', `bottom' and
               ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
               ;; right; if there is insufficient space it displays it at the bottom.
               ;; (default 'bottom)
               dotspacemacs-which-key-position 'bottom

               ;; Control where `switch-to-buffer' displays the buffer. If nil,
               ;; `switch-to-buffer' displays the buffer in the current window even if
               ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
               ;; displays the buffer in a same-purpose window even if the buffer can be
               ;; displayed in the current window. (default nil)
               dotspacemacs-switch-to-buffer-prefers-purpose nil

               ;; If non-nil a progress bar is displayed when spacemacs is loading. This
               ;; may increase the boot time on some systems and emacs builds, set it to
               ;; nil to boost the loading time. (default t)
               dotspacemacs-loading-progress-bar t

               ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
               ;; (Emacs 24.4+ only)
               dotspacemacs-fullscreen-at-startup nil

               ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
               ;; Use to disable fullscreen animations in OSX. (default nil)
               dotspacemacs-fullscreen-use-non-native nil

               ;; If non-nil the frame is maximized when Emacs starts up.
               ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
               ;; (default nil) (Emacs 24.4+ only)
               dotspacemacs-maximized-at-startup nil

               ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
               ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
               ;; borderless fullscreen. (default nil)
               dotspacemacs-undecorated-at-startup nil

               ;; A value from the range (0..100), in increasing opacity, which describes
               ;; the transparency level of a frame when it's active or selected.
               ;; Transparency can be toggled through `toggle-transparency'. (default 90)
               dotspacemacs-active-transparency 90

               ;; A value from the range (0..100), in increasing opacity, which describes
               ;; the transparency level of a frame when it's inactive or deselected.
               ;; Transparency can be toggled through `toggle-transparency'. (default 90)
               dotspacemacs-inactive-transparency 90

               ;; If non-nil show the titles of transient states. (default t)
               dotspacemacs-show-transient-state-title t

               ;; If non-nil show the color guide hint for transient state keys. (default t)
               dotspacemacs-show-transient-state-color-guide t

               ;; If non-nil unicode symbols are displayed in the mode line.
               ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
               ;; the value to quoted `display-graphic-p'. (default t)
               dotspacemacs-mode-line-unicode-symbols t

               ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
               ;; scrolling overrides the default behavior of Emacs which recenters point
               ;; when it reaches the top or bottom of the screen. (default t)
               dotspacemacs-smooth-scrolling t

               ;; Show the scroll bar while scrolling. The auto hide time can be configured
               ;; by setting this variable to a number. (default t)
               dotspacemacs-scroll-bar-while-scrolling t

               ;; Control line numbers activation.
               ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
               ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
               ;; numbers are relative. If set to `visual', line numbers are also relative,
               ;; but only visual lines are counted. For example, folded lines will not be
               ;; counted and wrapped lines are counted as multiple lines.
               ;; This variable can also be set to a property list for finer control:
               ;; '(:relative nil
               ;;   :visual nil
               ;;   :disabled-for-modes dired-mode
               ;;                       doc-view-mode
               ;;                       markdown-mode
               ;;                       org-mode
               ;;                       pdf-view-mode
               ;;                       text-mode
               ;;   :size-limit-kb 1000)
               ;; When used in a plist, `visual' takes precedence over `relative'.
               ;; (default nil)
               dotspacemacs-line-numbers nil

               ;; Code folding method. Possible values are `evil', `origami' and `vimish'.
               ;; (default 'evil)
               dotspacemacs-folding-method 'evil
               e;; -*- mode: emacs-lisp; lexical-binding: t -*-
               ;; This file is loaded by Spacemacs at startup.
               ;; It must be stored in your home directory.

               (defun dotspacemacs/layers ()
                 "Layer configuration:
This function should only modify configuration layer settings."
                 (setq-default
                  ;; Base distribution to use. This is a layer contained in the directory
                  ;; `+distribution'. For now available distributions are `spacemacs-base'
                  ;; or `spacemacs'. (default 'spacemacs)
                  dotspacemacs-distribution 'spacemacs-base

                  ;; Lazy installation of layers (i.e. layers are installed only when a file
                  ;; with a supported type is opened). Possible values are `all', `unused'
                  ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
                  ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
                  ;; lazy install any layer that support lazy installation even the layers
                  ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
                  ;; installation feature and you have to explicitly list a layer in the
                  ;; variable `dotspacemacs-configuration-layers' to install it.
                  ;; (default 'unused)
                  dotspacemacs-enable-lazy-installation 'unused

                  ;; If non-nil then Spacemacs will ask for confirmation before installing
                  ;; a layer lazily. (default t)
                  dotspacemacs-ask-for-lazy-installation t

                  ;; List of additional paths where to look for configuration layers.
                  ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
                  dotspacemacs-configuration-layer-path '()

                  ;; List of configuration layers to load.
                  dotspacemacs-configuration-layers
                  '(markdown
                    sql
                    go
                    yaml
                    python
                    typescript
                    html
                    javascript
                    markdown
                    unicode-fonts
                    solidity
                    (node :variables node-add-modules-path t)
                    (lsp :variables
                         lsp-rust-server 'rust-analyzer
                         ;; lsp-ui-doc-enable nil
                         ;; lsp-rust-analyzer-server-display-inlay-hints nil
                         ;;  lsp-eldoc-render-all t
                         ;; lsp-rust-analyzer-cargo-watch-enable t
                         ;; lsp-rust-analyzer-cargo-watch-command "clippy" ;; could be "clippy"

                         ;; lsp-rust-analyzer-display-chaining-hints t
                         ;; lsp-rust-analyzer-display-closure-return-type-hints t
                         ;; lsp-rust-analyzer-display-parameter-hints t
                         ;; lsp-rust-analyzer-display-reborrow-hints t
                         ;; lsp-ui-peek-always-show t
                         ;; lsp-ui-sideline-show-hover t

                         )
                    (rust :variables
                          rust-format-on-save t
                          rust-backend 'lsp
                          ;; rust-format-show-buffer t
                          )
                    ;; ----------------------------------------------------------------
                    ;; Example of useful layers you may want to use right away.
                    ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
                    ;; `M-m f e R' (Emacs style) to install them.
                    ;; ----------------------------------------------------------------
                    ;; auto-completion
                    ;; better-defaults
                    emacs-lisp
                    ;; git
                    ;; helm
                    ivy
                    ;; markdown
                    multiple-cursors
                    ;; org
                    ;; (shell :variables
                    ;;        shell-default-height 30
                    ;;        shell-default-position 'bottom)
                    ;; spell-checking
                    ;; syntax-checking
                    ;; version-control
                    treemacs)


                  ;; List of additional packages that will be installed without being wrapped
                  ;; in a layer (generally the packages are installed only and should still be
                  ;; loaded using load/require/use-package in the user-config section below in
                  ;; this file). If you need some configuration for these packages, then
                  ;; consider creating a layer. You can also put the configuration in
                  ;; `dotspacemacs/user-config'. To use a local version of a package, use the
                  ;; `:location' property: '(your-package :location "~/path/to/your-package/")
                  ;; Also include the dependencies as they will not be resolved automatically.
                  dotspacemacs-additional-packages '(all-the-icons python-black nginx-mode default-text-scale)

                  ;; A list of packages that cannot be updated.
                  dotspacemacs-frozen-packages '()

                  ;; A list of packages that will not be installed and loaded.
                  dotspacemacs-excluded-packages '()

                  ;; Defines the behaviour of Spacemacs when installing packages.
                  ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
                  ;; `used-only' installs only explicitly used packages and deletes any unused
                  ;; packages as well as their unused dependencies. `used-but-keep-unused'
                  ;; installs only the used packages but won't delete unused ones. `all'
                  ;; installs *all* packages supported by Spacemacs and never uninstalls them.
                  ;; (default is `used-only')
                  dotspacemacs-install-packages 'used-only))

               (defun dotspacemacs/init ()
                 "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
                 ;; This setq-default sexp is an exhaustive list of all the supported
                 ;; spacemacs settings.
                 (setq-default
                  ;; If non-nil then enable support for the portable dumper. You'll need
                  ;; to compile Emacs 27 from source following the instructions in file
                  ;; EXPERIMENTAL.org at to root of the git repository.
                  ;; (default nil)
                  dotspacemacs-enable-emacs-pdumper nil

                  ;; Name of executable file pointing to emacs 27+. This executable must be
                  ;; in your PATH.
                  ;; (default "emacs")
                  dotspacemacs-emacs-pdumper-executable-file "emacs"

                  ;; Name of the Spacemacs dump file. This is the file will be created by the
                  ;; portable dumper in the cache directory under dumps sub-directory.
                  ;; To load it when starting Emacs add the parameter `--dump-file'
                  ;; when invoking Emacs 27.1 executable on the command line, for instance:
                  ;;   ./emacs --dump-file=$HOME/.emacs.d/.cache/dumps/spacemacs-27.1.pdmp
                  ;; (default (format "spacemacs-%s.pdmp" emacs-version))
                  dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

                  ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
                  ;; possible. Set it to nil if you have no way to use HTTPS in your
                  ;; environment, otherwise it is strongly recommended to let it set to t.
                  ;; This variable has no effect if Emacs is launched with the parameter
                  ;; `--insecure' which forces the value of this variable to nil.
                  ;; (default t)
                  dotspacemacs-elpa-https t

                  ;; Maximum allowed time in seconds to contact an ELPA repository.
                  ;; (default 5)
                  dotspacemacs-elpa-timeout 5

                  ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
                  ;; This is an advanced option and should not be changed unless you suspect
                  ;; performance issues due to garbage collection operations.
                  ;; (default '(100000000 0.1))
                  dotspacemacs-gc-cons '(100000000 0.1)

                  ;; Set `read-process-output-max' when startup finishes.
                  ;; This defines how much data is read from a foreign process.
                  ;; Setting this >= 1 MB should increase performance for lsp servers
                  ;; in emacs 27.
                  ;; (default (* 1024 1024))
                  dotspacemacs-read-process-output-max (* 1024 1024)

                  ;; If non-nil then Spacelpa repository is the primary source to install
                  ;; a locked version of packages. If nil then Spacemacs will install the
                  ;; latest version of packages from MELPA. Spacelpa is currently in
                  ;; experimental state please use only for testing purposes.
                  ;; (default nil)
                  dotspacemacs-use-spacelpa nil

                  ;; If non-nil then verify the signature for downloaded Spacelpa archives.
                  ;; (default t)
                  dotspacemacs-verify-spacelpa-archives t

                  ;; If non-nil then spacemacs will check for updates at startup
                  ;; when the current branch is not `develop'. Note that checking for
                  ;; new versions works via git commands, thus it calls GitHub services
                  ;; whenever you start Emacs. (default nil)
                  dotspacemacs-check-for-update nil

                  ;; If non-nil, a form that evaluates to a package directory. For example, to
                  ;; use different package directories for different Emacs versions, set this
                  ;; to `emacs-version'. (default 'emacs-version)
                  dotspacemacs-elpa-subdirectory 'emacs-version

                  ;; One of `vim', `emacs' or `hybrid'.
                  ;; `hybrid' is like `vim' except that `insert state' is replaced by the
                  ;; `hybrid state' with `emacs' key bindings. The value can also be a list
                  ;; with `:variables' keyword (similar to layers). Check the editing styles
                  ;; section of the documentation for details on available variables.
                  ;; (default 'vim)
                  dotspacemacs-editing-style 'emacs

                  ;; If non-nil show the version string in the Spacemacs buffer. It will
                  ;; appear as (spacemacs version)@(emacs version)
                  ;; (default t)
                  dotspacemacs-startup-buffer-show-version t

                  ;; Specify the startup banner. Default value is `official', it displays
                  ;; the official spacemacs logo. An integer value is the index of text
                  ;; banner, `random' chooses a random text banner in `core/banners'
                  ;; directory. A string value must be a path to an image format supported
                  ;; by your Emacs build.
                  ;; If the value is nil then no banner is displayed. (default 'official)
                  dotspacemacs-startup-banner 'official

                  ;; List of items to show in startup buffer or an association list of
                  ;; the form `(list-type . list-size)`. If nil then it is disabled.
                  ;; Possible values for list-type are:
                  ;; `recents' `recents-by-project' `bookmarks' `projects' `agenda' `todos'.
                  ;; List sizes may be nil, in which case
                  ;; `spacemacs-buffer-startup-lists-length' takes effect.
                  ;; The exceptional case is `recents-by-project', where list-type must be a
                  ;; pair of numbers, e.g. `(recents-by-project . (7 .  5))', where the first
                  ;; number is the project limit and the second the limit on the recent files
                  ;; within a project.
                  dotspacemacs-startup-lists '((recents . 5)
                                               (projects . 7))

                  ;; True if the home buffer should respond to resize events. (default t)
                  dotspacemacs-startup-buffer-responsive t

                  ;; Show numbers before the startup list lines. (default t)
                  dotspacemacs-show-startup-list-numbers t

                  ;; The minimum delay in seconds between number key presses. (default 0.4)
                  dotspacemacs-startup-buffer-multi-digit-delay 0.4

                  ;; Default major mode for a new empty buffer. Possible values are mode
                  ;; names such as `text-mode'; and `nil' to use Fundamental mode.
                  ;; (default `text-mode')
                  dotspacemacs-new-empty-buffer-major-mode 'text-mode

                  ;; Default major mode of the scratch buffer (default `text-mode')
                  dotspacemacs-scratch-mode 'text-mode

                  ;; If non-nil, *scratch* buffer will be persistent. Things you write down in
                  ;; *scratch* buffer will be saved and restored automatically.
                  dotspacemacs-scratch-buffer-persistent nil

                  ;; If non-nil, `kill-buffer' on *scratch* buffer
                  ;; will bury it instead of killing.
                  dotspacemacs-scratch-buffer-unkillable nil

                  ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
                  ;; (default nil)
                  dotspacemacs-initial-scratch-message nil

                  ;; List of themes, the first of the list is loaded when spacemacs starts.
                  ;; Press `SPC T n' to cycle to the next theme in the list (works great
                  ;; with 2 themes variants, one dark and one light)
                  dotspacemacs-themes '(spacemacs-dark
                                        spacemacs-light)

                  ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
                  ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
                  ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
                  ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
                  ;; refer to the DOCUMENTATION.org for more info on how to create your own
                  ;; spaceline theme. Value can be a symbol or list with additional properties.
                  ;; (default '(spacemacs :separator wave :separator-scale 1.5))
                  dotspacemacs-mode-line-theme '(doom :separator wave :separator-scale 1.5)

                  ;; If non-nil the cursor color matches the state color in GUI Emacs.
                  ;; (default t)
                  dotspacemacs-colorize-cursor-according-to-state t

                  ;; Default font or prioritized list of fonts. The `:size' can be specified as
                  ;; a non-negative integer (pixel size), or a floating-point (point size).
                  ;; Point size is recommended, because it's device independent. (default 10.0)
                  dotspacemacs-default-font '("Fira Mono for Powerline"
                                              :size 11
                                              :weight normal
                                              :width normal
                                              :powerline-scale 1.1)

                  ;; The leader key (default "SPC")
                  dotspacemacs-leader-key "SPC"

                  ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
                  ;; (default "SPC")
                  dotspacemacs-emacs-command-key "SPC"

                  ;; The key used for Vim Ex commands (default ":")
                  dotspacemacs-ex-command-key ":"

                  ;; The leader key accessible in `emacs state' and `insert state'
                  ;; (default "M-m")
                  dotspacemacs-emacs-leader-key "M-m"

                  ;; Major mode leader key is a shortcut key which is the equivalent of
                  ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
                  dotspacemacs-major-mode-leader-key ","

                  ;; Major mode leader key accessible in `emacs state' and `insert state'.
                  ;; (default "C-M-m" for terminal mode, "<M-return>" for GUI mode).
                  ;; Thus M-RET should work as leader key in both GUI and terminal modes.
                  ;; C-M-m also should work in terminal mode, but not in GUI mode.
                  dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

                  ;; These variables control whether separate commands are bound in the GUI to
                  ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
                  ;; Setting it to a non-nil value, allows for separate commands under `C-i'
                  ;; and TAB or `C-m' and `RET'.
                  ;; In the terminal, these pairs are generally indistinguishable, so this only
                  ;; works in the GUI. (default nil)
                  dotspacemacs-distinguish-gui-tab nil

                  ;; Name of the default layout (default "Default")
                  dotspacemacs-default-layout-name "Default"

                  ;; If non-nil the default layout name is displayed in the mode-line.
                  ;; (default nil)
                  dotspacemacs-display-default-layout nil

                  ;; If non-nil then the last auto saved layouts are resumed automatically upon
                  ;; start. (default nil)
                  dotspacemacs-auto-resume-layouts nil

                  ;; If non-nil, auto-generate layout name when creating new layouts. Only has
                  ;; effect when using the "jump to layout by number" commands. (default nil)
                  dotspacemacs-auto-generate-layout-names nil

                  ;; Size (in MB) above which spacemacs will prompt to open the large file
                  ;; literally to avoid performance issues. Opening a file literally means that
                  ;; no major mode or minor modes are active. (default is 1)
                  dotspacemacs-large-file-size 1

                  ;; Location where to auto-save files. Possible values are `original' to
                  ;; auto-save the file in-place, `cache' to auto-save the file to another
                  ;; file stored in the cache directory and `nil' to disable auto-saving.
                  ;; (default 'cache)
                  dotspacemacs-auto-save-file-location 'cache

                  ;; Maximum number of rollback slots to keep in the cache. (default 5)
                  dotspacemacs-max-rollback-slots 5

                  ;; If non-nil, the paste transient-state is enabled. While enabled, after you
                  ;; paste something, pressing `C-j' and `C-k' several times cycles through the
                  ;; elements in the `kill-ring'. (default nil)
                  dotspacemacs-enable-paste-transient-state nil

                  ;; Which-key delay in seconds. The which-key buffer is the popup listing
                  ;; the commands bound to the current keystroke sequence. (default 0.4)
                  dotspacemacs-which-key-delay 0.4

                  ;; Which-key frame position. Possible values are `right', `bottom' and
                  ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
                  ;; right; if there is insufficient space it displays it at the bottom.
                  ;; (default 'bottom)
                  dotspacemacs-which-key-position 'bottom

                  ;; Control where `switch-to-buffer' displays the buffer. If nil,
                  ;; `switch-to-buffer' displays the buffer in the current window even if
                  ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
                  ;; displays the buffer in a same-purpose window even if the buffer can be
                  ;; displayed in the current window. (default nil)
                  dotspacemacs-switch-to-buffer-prefers-purpose nil

                  ;; If non-nil a progress bar is displayed when spacemacs is loading. This
                  ;; may increase the boot time on some systems and emacs builds, set it to
                  ;; nil to boost the loading time. (default t)
                  dotspacemacs-loading-progress-bar t

                  ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
                  ;; (Emacs 24.4+ only)
                  dotspacemacs-fullscreen-at-startup nil

                  ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
                  ;; Use to disable fullscreen animations in OSX. (default nil)
                  dotspacemacs-fullscreen-use-non-native nil

                  ;; If non-nil the frame is maximized when Emacs starts up.
                  ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
                  ;; (default nil) (Emacs 24.4+ only)
                  dotspacemacs-maximized-at-startup nil

                  ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
                  ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
                  ;; borderless fullscreen. (default nil)
                  dotspacemacs-undecorated-at-startup nil

                  ;; A value from the range (0..100), in increasing opacity, which describes
                  ;; the transparency level of a frame when it's active or selected.
                  ;; Transparency can be toggled through `toggle-transparency'. (default 90)
                  dotspacemacs-active-transparency 90

                  ;; A value from the range (0..100), in increasing opacity, which describes
                  ;; the transparency level of a frame when it's inactive or deselected.
                  ;; Transparency can be toggled through `toggle-transparency'. (default 90)
                  dotspacemacs-inactive-transparency 90

                  ;; If non-nil show the titles of transient states. (default t)
                  dotspacemacs-show-transient-state-title t

                  ;; If non-nil show the color guide hint for transient state keys. (default t)
                  dotspacemacs-show-transient-state-color-guide t

                  ;; If non-nil unicode symbols are displayed in the mode line.
                  ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
                  ;; the value to quoted `display-graphic-p'. (default t)
                  dotspacemacs-mode-line-unicode-symbols t

                  ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
                  ;; scrolling overrides the default behavior of Emacs which recenters point
                  ;; when it reaches the top or bottom of the screen. (default t)
                  dotspacemacs-smooth-scrolling t

                  ;; Show the scroll bar while scrolling. The auto hide time can be configured
                  ;; by setting this variable to a number. (default t)
                  dotspacemacs-scroll-bar-while-scrolling t

                  ;; Control line numbers activation.
                  ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
                  ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
                  ;; numbers are relative. If set to `visual', line numbers are also relative,
                  ;; but only visual lines are counted. For example, folded lines will not be
                  ;; counted and wrapped lines are counted as multiple lines.
                  ;; This variable can also be set to a property list for finer control:
                  ;; '(:relative nil
                  ;;   :visual nil
                  ;;   :disabled-for-modes dired-mode
                  ;;                       doc-view-mode
                  ;;                       markdown-mode
                  ;;                       org-mode
                  ;;                       pdf-view-mode
                  ;;                       text-mode
                  ;;   :size-limit-kb 1000)
                  ;; When used in a plist, `visual' takes precedence over `relative'.
                  ;; (default nil)
                  dotspacemacs-line-numbers nil

                  ;; Code folding method. Possible values are `evil', `origami' and `vimish'.
                  ;; (default 'evil)
                  dotspacemacs-folding-method 'evil

                  (defun dotspacemacs/user-env ()
                    "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
                    (spacemacs/load-spacemacs-env))

                  (defun dotspacemacs/user-init ()
                    "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first.")


                  (defun dotspacemacs/user-load ()
                    "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump.")


                  (defun dotspacemacs/user-config ()
                    "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."

                    (use-package python-black
                      :demand t
                      :after python
                      :hook (python-mode . python-black-on-save-mode))


                    ;; (use-package rustic)

                    (setq powerline-default-separator 'arrow)
                    (setq ns-use-srgb-colorspace nil)
                    (global-set-key (kbd "C-x k") 'kill-this-buffer)
                    (global-set-key [f8] 'flycheck-next-error)
                    (global-set-key (kbd "M-<f8>") 'flycheck-previous-error)
                    (global-set-key (kbd "M-v") 'backward-word)
                    (global-set-key [f12] 'xref-find-definitions)
                    (global-set-key [f11] 'xref-find-references)
                    (global-set-key (kbd "C-=") 'text-scale-increase)
                    (global-set-key (kbd "C--") 'text-scale-decrease)
                    ;; (global-set-key [f5] 'lsp-rust-analyzer-inlay-hints-mode)

                    ;; run counsel-rg in the current directory. [default-directory] is basically
                    ;; the directory of the current buffer.
                    (defun klauria-counsel-rg ()
                      (interactive)
                      (counsel-rg nil default-directory))

                    (global-set-key (kbd "M-s M-s") 'klauria-counsel-rg)

                    (defun klauria-accept-corrected ()
                      (interactive)
                      (let
                          ((test_module_name
                            (car
                             (split-string
                              (file-name-nondirectory (buffer-file-name))
                              "\.rs"))))
                        (print test_module_name)
                        ;; TODO: pass in "--lib" instead when inside the src dir
                        (shell-command (format "env UPDATE_EXPECT=1 cargo test --test %s" test_module_name)))
                      )

                    (defun klauria-accept-corrected-all ()
                      (interactive)
                      (shell-command "env UPDATE_EXPECT=1 cargo test"))

                    (defun klauria-toggle-flycheck-errors ()
                      (interactive)
                      (let ((flycheck-window
                             (get-buffer-window (get-buffer flycheck-error-list-buffer))))
                        (if flycheck-window
                            (delete-window flycheck-window)
                          (flycheck-list-errors))))
                    (global-set-key [f9] 'flycheck-list-errors)

                    (defun toggle-ui-imenu ()
                      (interactive)
                      (if (get-buffer lsp-ui-imenu-buffer-name)
                          (kill-buffer lsp-ui-imenu-buffer-name)
                        (lsp-ui-imenu)))

                    (with-eval-after-load 'company
                      (define-key company-active-map (kbd "<tab>") 'company-complete-selection))

                    (setq-default
                     ;; web-mode
                     web-mode-markup-indent-offset 2
                     web-mode-css-indent-offset 2
                     web-mode-code-indent-offset 2
                     web-mode-attr-indent-offset 2
                     web-mode-script-padding 2
                     )

                    (defun klauria-set-web-mode-values ()
                      (setq
                       ;; web-mode
                       web-mode-markup-indent-offset 2
                       web-mode-css-indent-offset 2
                       web-mode-code-indent-offset 2
                       web-mode-attr-indent-offset 2
                       web-mode-script-padding 2
                       ))

                    (defun klauria-prev-window ()
                      (interactive)
                      (other-window -1))
                    (global-set-key (kbd "C-x p")  'klauria-prev-window)

                    (add-hook 'web-mode-hook 'prettier-js-mode)
                    (add-hook 'typescript-mode-hook 'prettier-js-mode)
                    (add-hook 'web-mode-hook 'klauria-set-web-mode-values)

                    (setenv "RIPGREP_CONFIG_PATH" "/Users/kshitijlauria/.ripgreprc")

                    ;; These change text scale across all frames.
                    (global-set-key (kbd "<C-wheel-up>")  'default-text-scale-increase)
                    (global-set-key  (kbd "<C-wheel-down>") 'default-text-scale-decrease)

                    (global-set-key (kbd "<C-M-wheel-up>")  'text-scale-increase)
                    (global-set-key  (kbd "<C-M-wheel-down>") 'text-scale-decrease)

                    ;; Delete trailing whitespace in certain modes
                    ;; https://stackoverflow.com/questions/19174302/emacs-only-delete-trailing-whitespace-while-saving-in-programming-mode

                    ;; I removed this because it made saving slow.
                    ;; (add-hook 'before-save-hook 'klauria-delete-trailing-whitespace)

                    ;; (defun klauria-delete-trailing-whitespace ()
                    ;;   (when (derived-mode-p 'markdown-mode)
                    ;;     (delete-trailing-whitespace)))

                    ;; (setq lsp-disabled-clients (list 'rls))
                    ;; (setq lsp-rust-server 'rust-analyzer)
                    ;;  '(lsp-rust-analyzer-server-command '("rustup run nightly rust-analyzer"))

                    (server-start)

                    ;; Below, customize ivy-initial-inputs-alist to set counsel-M-x to "", to get rid of the initial ^.
                    )


                  ;; Do not write anything past this comment. This is where Emacs will
                  ;; auto-generate custom variable definitions.
                  (defun dotspacemacs/emacs-custom-settings ()
                    "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
                    (custom-set-variables
                     ;; custom-set-variables was added by Custom.
                     ;; If you edit it by hand, you could mess it up, so be careful.
                     ;; Your init file should contain only one such instance.
                     ;; If there is more than one, they won't work right.
                     '(ivy-initial-inputs-alist
                       '((counsel-minor . "^+")
                         (counsel-package . "^+")
                         (counsel-org-capture . "^")
                         (counsel-M-x . "")
                         (counsel-describe-symbol . "^")
                         (org-refile . "^")
                         (org-agenda-refile . "^")
                         (org-capture-refile . "^")
                         (Man-completion-table . "^")
                         (woman . "^")))
                     '(package-selected-packages
                       '(company-emoji emoji-cheat-sheet-plus valign vmd-mode ace-jump-helm-line ace-link aggressive-indent auto-highlight-symbol centered-cursor-mode clean-aindent-mode column-enforce-mode define-word devdocs dired-quick-sort drag-stuff dumb-jump editorconfig eval-sexp-fu evil-anzu anzu evil-args evil-cleverparens evil-collection annalist evil-escape evil-exchange evil-goggles evil-iedit-state evil-indent-plus evil-lion evil-lisp-state evil-matchit evil-nerd-commenter evil-numbers evil-surround evil-textobj-line evil-tutor evil-unimpaired evil-visual-mark-mode evil-visualstar expand-region eyebrowse fancy-battery flx-ido golden-ratio google-translate helm-ag helm-descbinds helm-mode-manager helm-org helm-projectile helm-purpose helm-swoop helm-themes helm-xref helm wfnames helm-core hide-comnt highlight-indentation highlight-numbers parent-mode highlight-parentheses hl-todo compat hungry-delete indent-guide info+ link-hint lorem-ipsum multi-line shut-up open-junk-file org-superstar paradox password-generator popwin rainbow-delimiters request restart-emacs smartparens space-doc spaceline powerline spacemacs-purpose-popwin spacemacs-whitespace-cleanup string-edit-at-point string-inflection symbol-overlay symon term-cursor toc-org treemacs-persp persp-mode undo-tree queue uuidgen vi-tilde-fringe vim-powerline volatile-highlights window-purpose imenu-list winum writeroom-mode visual-fill-column ws-butler yasnippet-snippets yapfify yaml-mode which-key wgrep web-mode web-beautify use-package unicode-fonts typescript-mode treemacs-projectile treemacs-icons-dired toml-mode tagedit sql-indent sphinx-doc solidity-flycheck smex slim-mode scss-mode sass-mode rust-mode ron-mode quickrun python-black pytest pylookup pyenv-mode pydoc py-isort pug-mode prettier-js poetry pippel pipenv pip-requirements pcre2el overseer npm-mode nose nodejs-repl nginx-mode nameless mmm-mode markdown-toc macrostep lsp-ui lsp-treemacs lsp-python-ms lsp-pyright lsp-origami lsp-ivy livid-mode live-py-mode json-reformat json-navigator json-mode js2-refactor js-doc ivy-yasnippet ivy-xref ivy-hydra ivy-avy inspector importmagic impatient-mode hybrid-mode holy-mode help-fns+ helm-make godoctor go-tag go-rename go-impl go-guru go-gen-test go-fill-struct go-eldoc gh-md fuzzy flycheck-rust flycheck-pos-tip flycheck-package flycheck-elsa flx evil-mc emr emmet-mode elisp-slime-nav elisp-def dotenv-mode diminish default-text-scale cython-mode counsel-css company-web company-go company-anaconda code-cells cargo blacken bind-map auto-yasnippet auto-compile async all-the-icons add-node-modules-path ac-ispell)))
                    (custom-set-faces
                     ;; custom-set-faces was added by Custom.
                     ;; If you edit it by hand, you could mess it up, so be careful.
                     ;; Your init file should contain only one such instance.
                     ;; If there is more than one, they won't work right.
                     )
                    )
