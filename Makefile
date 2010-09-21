
#OOC_FLAGS=-v -g +-w -sourcepath=source -DNO_STDIO_REDIRECT +-mwindows -lmingw32 -lSDLmain -lSDL -lopengl32 -lglu32 -lglew32 -nolibcache $(shell echo $$OOC_FLAGS)
OOC_FLAGS=-v -g +-w -sourcepath=source $(shell echo $$OOC_FLAGS)

OOC?=rock

all:
	${OOC} ${OOC_FLAGS} icmadness

clean:
	rm -rf rock_tmp/ .libs/ *.x
