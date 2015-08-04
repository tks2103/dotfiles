# Add pathogen installation
# Add solarized installation

FILES = .bash_profile .vimrc .gitconfig
INSTALLED = $(patsubst %,~/%,$(FILES))

install : build_msg $(INSTALLED)

.PHONY: build_msg
build_msg:
	@printf "Thangs\n"

~/% : %
	[ ! -e $@ ] || [ -h $@ ] || mv -f $@ $@.bak
	ln -sf $(PWD)/$< $@
