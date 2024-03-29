## This is the screendir 3SS

current: target
-include target.mk

-include makestuff/perl.def

######################################################################

vim_session: 
	bash -cl "vmt screens.list notes.txt"
	
screen_session: screens.update
	$(MAKE) $(vscreens)

Sources += Makefile notes.txt top.mk

## mcmaster.filemerge: mcmaster.md
Ignore += mcmaster
mcmaster:
	(ls ~/Dropbox/courses/mcmaster > /dev/null) \
	&& ln -s ~/Dropbox/courses/mcmaster $@

######################################################################

Ignore += covidCA
covidCA: dir = /home/dushoff/screens/research/Canada
covidCA:
	$(linkdirname)

######################################################################

### Makestuff

Ignore += makestuff
msrepo = https://github.com/dushoff
Makefile: makestuff/Makefile
makestuff/Makefile:
	git clone $(msrepo)/makestuff
	ls $@

### Includes

-include makestuff/os.mk

## -include makestuff/wrapR.mk

-include makestuff/listdir.mk
-include makestuff/screendir.mk
-include makestuff/mkfiles.mk

-include makestuff/git.mk
-include makestuff/visual.mk
