# Makefile for sih2025 github.com/impossibleclone/sih2025

APP_NAME := wipe_tool
CMD_DIR := ./cmd/wipe
BUILD_DIR := ./build

.PHONY: all build run clean

all: build

# Build binary into build/
build:
	@mkdir -p $(BUILD_DIR)
	go build -o $(BUILD_DIR)/$(APP_NAME) $(CMD_DIR)

# Run from build/
run: build
	$(BUILD_DIR)/$(APP_NAME)

# Clean build artifacts
clean:
	rm -rf $(BUILD_DIR)
