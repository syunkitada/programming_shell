#!/bin/bash

# $@ と $* はともにすべての引数を表すが、"" で囲ったときの挙動が異なります

function outputarg() {
	echo "args.length: $#"
	echo "arg 1: $1"
	echo "arg 2: $2"
	echo -e "\n"
}

# $@ の場合は、引数の区切りがそのままの配列として扱われます
echo "[\$@] args"
outputarg "$@"
# [$@] args
# args.length: 2
# arg 1: hoge
# arg 2: foo bar

# $* の場合は、引数が一つの文字列として扱われます
echo "[\$*] args"
outputarg "$*"
# [$*] args
# args.length: 1
# arg 1: hoge foo bar
# arg 2:
