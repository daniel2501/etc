;; This is an operating system configuration generated
;; by the graphical installer.
;;
;; Once installation is complete, you can learn and modify
;; this file to tweak the system configuration, and pass it
;; to the 'guix system reconfigure' command to effect your
;; changes.


;; Indicate which modules to import to access the variables
;; used in this configuration.
(use-modules (gnu) (nongnu packages linux))
(use-service-modules cups desktop admin networking ssh xorg)
(use-package-modules shells)

;;(define %guix-0-services
;;          (modify-services %base-services
;;            (dhcp-client-service-type
;;             config =>
;;              (dhcp-client-configuration
;;	       (inherit config)
;;               (interfaces '("wlp0s20f3"))))
;;            (wpa-supplicant-service-type
;;             config =>
;;              (wpa-supplicant-configuration
;;               (inherit config)
;;               (interface "wlp0s20f3")
;;               (config-file "/etc/wpa_supplicant/wpa_supplicant.conf")))
;;  ))

(operating-system
  (kernel linux)
  (firmware (list linux-firmware))
  (locale "en_US.utf8")
  (timezone "America/New_York")
  (keyboard-layout (keyboard-layout "us"))
  (host-name "guix-0")

  ;; The list of user accounts ('root' is implicit).
  (users (cons* (user-account
                  (name "daniel")
                  (comment "Daniel Benedict")
                  (group "users")
                  (home-directory "/home/daniel")
                  (shell (file-append fish "/bin/fish"))
                  (supplementary-groups '("wheel" "netdev" "audio" "video" "lp")))
                %base-user-accounts))

  ;; Packages installed system-wide.  Users can also install packages
  ;; under their own account: use 'guix search KEYWORD' to search
  ;; for packages and 'guix install PACKAGE' to install a package.
  (packages (append (list (specification->package "wpa-supplicant")
                          (specification->package "git")
                          (specification->package "vim")
                          (specification->package "fish")
                          (specification->package "gcc-toolchain")
			  (specification->package "gcc-toolchain")
		          (specification->package "glibc")
		          (specification->package "perl")
		          (specification->package "libtool")
		       	  (specification->package "libvterm")
                          (specification->package "emacs-vterm")
                          (specification->package "cmake")
                          (specification->package "make")
                          (specification->package "blueman")
                          (specification->package "bluez")
                          (specification->package "brightnessctl")
                          (specification->package "emacs")
                          (specification->package "curl")
                          (specification->package "vim")
                          (specification->package "fd")
                          (specification->package "findutils")
                          (specification->package "ripgrep")
                          (specification->package "git")
                          (specification->package "tar"))
                    %base-packages))

  ;; Below is the list of system services.  To search for available
  ;; services, run 'guix system search KEYWORD' in a terminal.
  (services
   (append (list 
                ;; (service dhcp-client-service-type
		;;  (dhcp-client-configuration
                ;;   (interfaces '("wlp0s20f3"))))
                ;; (service ntp-service-type)
                 (service cups-service-type)
                 (service openssh-service-type)
                 (service bluetooth-service-type)
                ;; (service wpa-supplicant-service-type
                ;;  (wpa-supplicant-configuration
                ;;   (interface "wlp0s20f3")
                ;;   (config-file "/etc/wpa_supplicant/wpa_supplicant.conf")))
		 )
           ;; This is the default list of services we
           ;; are appending to.
           (modify-services %desktop-services
            (delete gdm-service-type)))
   )

  (bootloader (bootloader-configuration
                (bootloader grub-efi-bootloader)
                (targets (list "/boot/efi"))
                (keyboard-layout keyboard-layout)))

  ;; The list of file systems that get "mounted".  The unique
  ;; file system identifiers there ("UUIDs") can be obtained
  ;; by running 'blkid' in a terminal.
  (file-systems (cons* (file-system
                         (mount-point "/")
                         (device (uuid
                                  "1fe7d7a5-d70b-4e58-8c06-da7857102534"
                                  'ext4))
                         (type "ext4"))
                       (file-system
                         (mount-point "/boot/efi")
                         (device (uuid "940C-1337"
                                       'fat32))
                         (type "vfat")) %base-file-systems)))
