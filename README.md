# Postscript Calendar

This Postscript file prints the calendar of one year, specified in the Postscript file,
on a sheet of paper.
It does all the date calculations for Easter and other public holidays.
The calendar can be customized to show birthdays, school vacations, and other day marks.

The Postscript file can be viewed by most PDF viewers such as [Okular](https://okular.kde.org/) or [Evince](https://wiki.gnome.org/Apps/Evince) or a Postscript viewer such as [GV](https://www.gnu.org/software/gv/), which is also how it can be debugged.

The shell script `makepdf.sh` can be used to convert the Postscript file to a PDF file
or a PNG file using [Ghostscript](https://www.ghostscript.com/).

As most printers understand straight Postscript, the Postscript source is the executable.

![Example calendar sheet](calendar_2021r.png)

## Motivation

The calendar was created to have a simple planning sheet for the year.
I've been using it for this purpose since the early 90s.

## Dependencies

To render the Postscript file to PDF or PNG using `makepdf.sh`,
[Ghostscript](https://www.ghostscript.com/) is required. Type `quit` at the end to exit the interpreter.
[ImageMagick](https://www.imagemagick.org/) can be used to rotate the PNG:
```
convert -rotate 90 calendar_2021.png calendar_2021r.png
```
