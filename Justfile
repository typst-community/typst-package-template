root := justfile_directory()

export TYPST_ROOT := root

[private]
default:
	@just --list --unsorted

# generate manual
doc:
	typst compile docs/manual.typ docs/manual.pdf

# run test suite
test *args:
	typst-test run {{ args }}

# update test cases
update *args:
	typst-test update {{ args }}

# package the library into the specified destination folder
package target:
  ./scripts/package "{{target}}"

# install the library with the "@local" prefix
install: (package "@local")

# install the library with the "@preview" prefix (for pre-release testing)
install-preview: (package "@preview")

# run ci suite
ci: test doc
