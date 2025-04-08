#!/bin/bash

# --------------------------------------------------
# 引数の数をバリデーションします
# --------------------------------------------------
function validate_args() {
	if [ $# != 2 ]; then
		echo "require 2 args: input args=$#"
		# exit 1
	else
		echo "ok args: input args=$#"
	fi
}

validate_args "hoge"        # > require 2 args: input args=1
validate_args "hoge" "piyo" # > ok args: input args=2

function validate_args2() {
	# 以下のように書くことで引数が未設定の場合はエラーとすることもできる
	arg1=${1:?}
	arg2=${2:?}
	echo "arg1=${arg1}, arg2=${arg2}"
}

# 引数が1だとエラーとなる
# validate_args2 "hoge1"
validate_args2 "hoge1" "hoge2" # > arg1=hoge1, arg2=hoge2
# --------------------------------------------------

# --------------------------------------------------
# デフォルト引数
# --------------------------------------------------
function default_args() {
	arg1=${1:-hoge}
	arg2=${2:-piyo}
	echo "default_args: arg1=$arg1, arg2=$arg2"
}
default_args "aa" # > default_args: arg1=aa, arg2=piyo
# --------------------------------------------------

# --------------------------------------------------
# $@ と $*
# --------------------------------------------------
# これらはともにすべての引数を表すが、"" で囲ったときの挙動が異なります
function outputarg() {
	echo "args.length: $#"
	echo "arg 1: $1"
	echo "arg 2: $2"
	echo -e "\n"
}

# $@ の場合は、引数の区切りがそのままの配列として扱われます
echo "[\$@] args"
outputarg "$@"
# > [$@] args
# > args.length: 2
# > arg 1: hoge
# > arg 2: foo bar

# $* の場合は、引数が一つの文字列として扱われます
echo "[\$*] args"
outputarg "$*"
# > [$*] args
# > args.length: 1
# > arg 1: hoge foo bar
# > arg 2:
# --------------------------------------------------

# --------------------------------------------------
# 引数のshift
# --------------------------------------------------
function shiftarg() {
	echo "arg1=$1"
	shift
	echo "arg2=$*"
}

shiftarg "hoge" "piyo" "sss"
# > arg1=hoge
# > arg2=piyo sss
# --------------------------------------------------
