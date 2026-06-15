PROJECT_FILE ?= project.toml
NAME = $(shell tomlq -r .project.name '$(PROJECT_FILE)')
VERSION = $(shell tomlq -r .project.version '$(PROJECT_FILE)')
PACKAGES_DIR = $(shell tomlq -r '.project."packages-dir"' '$(PROJECT_FILE)')
SRC_DIR = $(shell tomlq -r '.project."src-dir"' '$(PROJECT_FILE)')


package:
	@minizip -o -f '$(PACKAGES_DIR)/$(NAME)-$(VERSION).zip' '$(SRC_DIR)'
