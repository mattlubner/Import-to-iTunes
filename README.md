Import to iTunes
================

Useful Mac OS X Service which imports _new_ media into iTunes, w/o duplicating already-imported media.


## Installation
1. [Download the Zip archive](https://github.com/mattlubner/Import-to-iTunes/raw/master/Import%20to%20iTunes.zip)
2. Uncompress the archive
3. Move the `Import to iTunes.workflow` bundle to the folder `~/Library/Services/`


## Usage
Right-click on any file/folder and select "Services > Import to iTunes"


## Caveats
- This service skips importing files already in the active iTunes library. It does not currently prevent importing of duplicate files.
- The de-duplicating script (linked below) currently only imports files with one of the following file extensions:
	- *.mov
	- *.mp4
	- *.m4v
	- *.mpg
	- *.mpeg
	- *.m2v
	- *.mp2
	- *.ite
	- *.aac
	- *.m4a
	- *.m4b
	- *.m4p
	- *.mp3
	- *.caf
	- *.aiff
	- *.aif
	- *.aifc
	- *.au
	- *.sd2
	- *.wav
	- *.snd
	- *.amr
	- *.3ga


## See Also
- [Gist](https://gist.github.com/mattlubner/9746041) of the iTunes media de-duplicating shell script
