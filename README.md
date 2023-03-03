# Liturgie des heures − psaumes
Psalmodie du séminaire de Paris pour les psaumes de la liturgie des heures.

Ce projet à pour but d'afficher dans l'[application du Père Philoux](https://play.google.com/store/apps/details?id=eu.philoux.lh) la psalmodie des psaumes tels qu'ils sont chantés au séminaire de Paris.

## Usage

La psalmodie de chaque psaume est notée dans un fichier [Lilypond](https://lilypond.org/).
Le nom du fichier doit correspondre à celui du psaume dans l'application `Liturgie`.
La conversion des partitions en fichiers .svg se fait de la façon suivante :

- Pour un seul psaume : `make psaume94`
- Pour tous les psaumes : `make all`

Pour les intégrer dans l'application `Liturgie`, copier le contenu de `build` dans le dossier `psaumes/psalmodie/seminaire-Paris` de l'application.

## Notation de la psalmodie

*Rmq.* J'ai fait le choix d'utiliser les noms de note français.

- [Anti-sèche pour les armures](https://i.pinimg.com/originals/87/b0/93/87b09352c80a7b1d86c1f70f74112797.png)
- [Documentation de Lilypond](https://lilypond.org/doc/v2.22/Documentation/learning/index)
  - [Hauteur des notes](https://lilypond.org/doc/v2.22/Documentation/learning/pitches-and-key-signatures)
