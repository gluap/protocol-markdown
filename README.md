# Vereinsdokumente

klonen mit `git clone --recurse-submodules` um auch das pandoc-template zu bekommen.

Um die PDFs zu bauen, ist texlive-latex und pandoc erforderlich. Wenn diese
installiert sind, können die PDFs mit ``make`` erzeugt werden.

# Github action zum PDF bau:
Bei Submits baut die github action automatisch die PDFs und die PDFs können
[hier](https://github.com/openbikesensor/verein-dokumente/releases) abgerufen
werden. Wenn PDFs "releasebar" sind, kann das Betaflag des Releases in
der GitHub GUI entfernt werden und die aktuellen PDFs tauchen als neustes
Release auf.