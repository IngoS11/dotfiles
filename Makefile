SHELL = /bin/bash
DOTFILES_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
OS := $(shell bin/is-supported bin/is-macos macos linux)
PATH := $(DOTFILES_DIR)/bin:$(PATH)
export XDG_CONFIG_HOME = $(HOME)/.config
export STOW_DIR = $(DOTFILES_DIR)
export ACCEPT_EULA=Y

.PONY: test

all: $(OS)

macos: core-macos

core-macos: brew brew-packages git

git: brew
	brew install git git-extras

brew:
	is-executable brew || curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | bash

brew-packages: brew
	brew bundle --file=$(DOTFILES_DIR)/install/Brewfile || true
	
