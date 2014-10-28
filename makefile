FILES = .bash_profile .vimrc .gitconfig
INSTALLED = $(patsubst %,~/%,$(FILES))

install : $(INSTALLED)

~/% : %
	[ ! -e $@ ] || [ -h $@ ] || mv -f $@ $@.bak
	ln -sf $(PWD)/$< $@
