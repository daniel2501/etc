;; This "home-environment" file can be passed to 'guix home reconfigure'
;; to reproduce the content of your profile.  This is "symbolic": it only
;; specifies package names.  To reproduce the exact same profile, you also
;; need to capture the channels being used, as returned by "guix describe".
;; See the "Replicating Guix" section in the manual.


(use-modules (gnu home)
             (gnu packages)
             (gnu packages wm)
             (gnu packages gcc)
             (gnu services)
             (guix gexp)
             (gnu home services)
             (gnu home services shells)
             ;; (gnu home services sway)
             (gnu home services dotfiles))

(home-environment
  ;; Below is the list of packages that will show up in your
  ;; Home profile, under ~/.guix-home/profile.
  (packages (specifications->packages (list "elogind"
					                        "alacritty"
					                        "gcc-toolchain"
					                        "glibc"
					                        "perl"
					                        "libtool"
					                        "libvterm"
                                            "emacs-vterm"
                                            "cmake"
                                            "make"
                                            "brightnessctl"
                                            "emacs"
                                            "emacs-ac-ispell"
                                            "ispell"
                                            "font-google-noto-emoji"
                                            "font-google-noto"
                                            "font-gnu-unifont"
                                            "font-gnu-freefont"
                                            "emacs-nerd-icons"
                                            "fontconfig"
                                            "curl"
                                            "fish"
                                            "foot"
                                            "sway"
                                            "swayfx"
                                            "swaybg"
                                            "swayidle"
                                            "swaylock"
                                            "swaynotificationcenter"
                                            "dmenu"
                                            "vim"
                                            "fd"
                                            "findutils"
                                            "ripgrep"
                                            "git"
                                            "tar"
                                            "bluez"
                                            "ncurses"
                                            "blueman"
                                            "eza"
                                            "nasm"
                                            "alsa-utils"
                                            "emacs-nasm-mode"
                                            "rust"
                                            "rust-cargo"
                                            "rust-rustup-toolchain"
                                            "rust-home"
                                            "rust-alsa"
                                            "rust-alsa-sys"
                                            "alsa-lib"
                                            "unclutter"
                                            "pkg-config"
                                            "rust-pkg-config"
                                            "qutebrowser")))
  ;; Below is the list of Home services.  To search for available
  ;; services, run 'guix home search KEYWORD' in a terminal.
  (services
   (list
    ;; (service home-bash-service-type
    ;;          (home-bash-configuration
    ;;           (bashrc (list (local-file
    ;;                          "/home/daniel/.bashrc"
    ;;                          "bashrc")))
    ;;           ))
    ;; (service home-fish-service-type)
    (service home-dotfiles-service-type
             (home-dotfiles-configuration
               (directories '("/home/daniel/.dotfiles"))
               ))
    )))
