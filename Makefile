PROJECT_FILE ?= project.toml
NAME = $(shell tomlq -r .project.name '$(PROJECT_FILE)')
VERSION = $(shell tomlq -r .project.version '$(PROJECT_FILE)')

LICENSE_FILE = $(shell \
	tomlq -r '.project."license-files"[0]' '$(PROJECT_FILE)' \
)

PACKAGES_DIR = $(shell tomlq -r '.project."packages-dir"' '$(PROJECT_FILE)')
SRC_DIR = $(shell tomlq -r '.project."src-dir"' '$(PROJECT_FILE)')


package:
	ouch c \
		'$(SRC_DIR)'/* \
		'$(LICENSE_FILE)' \
		'$(PACKAGES_DIR)/$(NAME)-$(VERSION).zip'
