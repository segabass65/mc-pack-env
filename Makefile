PROJECT_FILE ?= project.toml
NAME = $(shell tomlq -r .project.name '$(PROJECT_FILE)')
VERSION = $(shell tomlq -r .project.version '$(PROJECT_FILE)')
PACKS_DIR = $(shell tomlq -r '.project."packs-dir"' '$(PROJECT_FILE)')
SRC_DIR = $(shell tomlq -r '.project."src-dir"' '$(PROJECT_FILE)')


package:
	@minizip -o -f '$(PACKS_DIR)/$(NAME)-$(VERSION).zip' '$(SRC_DIR)'
