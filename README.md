Import to iTunes
================

Handy little service for Mac OS X to import selected files (or folders) into iTunes without importing duplicates. Especially useful for manually managing iTunes media files stored on a NAS or other external device.


## Installation
1. [Download the Zip archive](https://github.com/mattlubner/Import-to-iTunes/raw/master/Import%20to%20iTunes.zip)
2. Double-click the Zip archive to uncompress it
3. Double-click `Import to iTunes.workflow` and choose "Install"


## Usage
1. From a Finder window, select one or more files or folders
2. Right-click on the selection and choose **Services > Import to iTunes**
	- Alternatively, choose **Finder > Services > Import to iTunes**
3. Sit back and wait! :) Automator will notify you once the process is complete
4. All selected media files are now present in your iTunes library (sans duplications)


## Caveats
- Only tested on Mac OS X Mavericks 10.9.2
- Doesn't prevent importing duplicate _files_
- Works exclusively with the _active_ iTunes library
- Can take a few minutes to find and exclude already-imported media with larger iTunes libraries
	- For instance, it takes about a minute to process a selection of ~200 files against a library with ~5000 items
- The selection-filtering script only imports these file types:
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
- [Shell script to exclude already-imported iTunes media from a file selection](https://gist.github.com/mattlubner/9746041)
