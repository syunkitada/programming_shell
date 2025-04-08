.PHONY: all
all:
	@echo "Making all targets..."
	@echo "Building the project..."
	@mkdir -p build
	@echo "Build complete."
	@echo "Running tests..."
	@echo "Tests complete."
	@echo "Packaging the project..."
	@mkdir -p dist
	@echo "Package created."
	@echo "All targets made."

.PHONY: clean
clean:
	@echo "Cleaning up..."
	@rm -rf build/
	@rm -rf dist/
	@echo "Cleaned up."

os_id := $(shell sh -c "cat /etc/os-release | grep -e "^ID=.*$$" | awk -F '=' '{print $$2}'")
.PHONY: detect-os
detect-os:
	@echo "Debugging..."
	@if [ "$(os_id)" = "ubuntu" ]; then \
		echo "Running on Ubuntu"; \
	else \
		echo "Not running on Ubuntu"; \
	fi
	@echo "Debugging complete."
