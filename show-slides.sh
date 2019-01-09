#!/bin/bash

notebook_path="$1"
slides_path=${notebook_path%.ipynb}.slides.html

trap "rm \"$slides_path\"" EXIT

jupyter nbconvert "$1" --to slides --post serve
