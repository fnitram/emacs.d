
;=================================================
; FICHIER DE CONFIGURATION DE EMACS
;=================================================

;CONFIGURATION DES COULEURS D'AFFICHAGE

(set-face-foreground 'default "black")  ;;couleur de la police par défault
;;(set-face-background 'default "white smoke") ;;couleur du fond par défault
;;(set-face-background 'default "white") ;;couleur du fond par défault
(set-cursor-color "Blue") ;;couleur du curseur
(set-mouse-color "yellow") ;;couleur de la souris
(set-face-foreground 'highlight "red") ;;couleur de la police pour la complétion
(set-face-background 'highlight "green") ;;couleur du fond pour la complétion
(set-face-foreground 'region "blue") ;;couleur de la police de la région sélectionnée
(set-face-background 'region "orange") ;;couleur du fond de la région sélectionnée
(blink-cursor-mode 1) ;;activation/désactivation du curseur clignotant


;------------------------------------------------- 
(global-linum-mode 1)

; CONFIGURATION DU DÉMARRAGE

(setq inhibit-startup-screen 1) ;;désactivation de l'écran de démarage
(setq initial-scratch-message "") ;;définit le message d'acceuil


; CONFIGURATION DE L'AFFICHAGE

(set-face-attribute 'default nil :height 120) ;;définit la taille de la police
(menu-bar-mode t) ;;affichage du menu
(tool-bar-mode 0) ;;affichage de la barre d'outil
;; (scroll-bar-mode `right) ;;affichage de la barre de scroll
(display-time) ;;affichage de l'heure
(setq display-time-24hr-format t) ;;règlage de l'heure au format 24hr
(column-number-mode t) ;;affiche le numéro de colonne
(setq global-font-lock-mode t) ;;coloration syntaxique
(setq visible-bell nil) ;;désactive les messages d'alerte visuelles
(show-paren-mode) ;;affiche la parenthèse correspondante
(global-linum-mode 1) ;;affichage des numéros de lignes sur le coté
(setq frame-title-format '(buffer-file-name "Emacs: %b (%f)" "Emacs: %b"));; place le nom du buffer actif dans le titre de la fenêtre
(setq indent-tabs-mode t) ;; indntation
(setq tab-width 4) 


;=================================================
; COLOR-THEME
;=================================================
(add-to-list 'load-path
              "~/.emacs.d/plugins")
(require 'color-theme)
(color-theme-calm-forest) 


;=================================================
; CHARGEMENT DES SNIPPETS
;=================================================
(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)
(add-to-list 'yas/root-directory "~/.emacs.d/snippets")
;(yas/initialize)

;=================================================
; CHARGEMENT DES TAGS
;=================================================
(setq tags-table-list
           '("~/test/php5.4/TAGS"))

;=================================================
; MODE POUR PHP
;=================================================
(add-to-list 'load-path "~/.emacs.d/mode/php-mode")
(require 'php-mode)
(autoload 'php-mode "php-mode" "Major mode for editing php code." t)
(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.tpl$" . php-mode))

;=================================================
; ZEN CODING
;=================================================
(add-to-list 'load-path "~/.emacs.d/mode/emmet-mode")
(require 'emmet-mode)
