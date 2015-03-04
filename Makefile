EXPL     = $(CURDIR)/explicaciones
PRAC     = $(CURDIR)/practicas
SUBJECTS = iso so

all: install

# Install rules
install: install-explicaciones install-practicas
	echo "Prácticas y explicaciones compiladas correctamente en el directorio pdf/"

install-explicaciones:
	@for s in $(SUBJECTS) ; do $(MAKE) -C $(EXPL)/$$s/ install ; done

install-practicas:
	@for s in $(SUBJECTS) ; do $(MAKE) -C $(PRAC)/$$s/ install ; done

# Clean rules
clean: clean-explicaciones clean-practicas

clean-explicaciones:
	@for s in $(SUBJECTS) ; do $(MAKE) -C $(EXPL)/$$s/ clean ; done

clean-practicas:
	@for s in $(SUBJECTS) ; do $(MAKE) -C $(PRAC)/$$s/ clean ; done

# Distclean rules
distclean: distclean-explicaciones distclean-practicas

distclean-explicaciones:
	@for s in $(SUBJECTS) ; do $(MAKE) -C $(EXPL)/$$s/ distclean ; done

distclean-practicas:
	@for s in $(SUBJECTS) ; do $(MAKE) -C $(PRAC)/$$s/ distclean ; done
