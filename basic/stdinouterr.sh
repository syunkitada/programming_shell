#!/bin/bash

# リダイレクトなどで利用されるファイルディスクリプタ(FD)は3種類ある
# FD=0 標準入力
# FD=1 標準出力
# FD=2 標準エラー出力

# リダイレクトの記号
# >, >>, <
# n>&m とすると、ファイルディスクリプタ n を m にリダイレクトします。
# 2>&1 とすると、標準エラー出力は、標準出力にマージされる

# 標準出力を/tmp/test_redirect_outにリダイレクトします
echo "hoge" 1>/tmp/test_redirect_out
# 1は省略可能で、以下のように書いてもよい
echo "hoge" >/tmp/test_redirect_out

# 標準エラー出力を/tmp/test_redirect_errにリダイレクトします
ls /hoge 2>/tmp/test_redirect_err

# 標準出力を/tmp/test_redirect_out2に、標準エラー出力を/tmp/test_redirect_err2にリダイレクトします
ls /tmp /hoge 1>/tmp/test_redirect_out2 2>/tmp/test_redirect_err2

# 標準出力を/tmp/test_redirect_outwitherrに、標準エラー出力を標準出力にリダイレクトします
# すなわち、標準出力と標準エラー出力の両方を/tmp/test_redirect_outwitherrにリダイレクトします
# リダイレクトの順番は、[command] 1>[file] 2>&1 の順番でないといけません
ls /tmp /hoge 1>/tmp/test_redirect_outwitherr 2>&1

# 標準出力と標準エラー出力の両方を/dev/nullにリダイレクトします（捨てる）
ls /tmp /hoge 1>/dev/null 2>&1

# &>[file] とすることでも標準出力と標準エラー出力をリダイレクトできます
ls /tmp /hoge &>/dev/null

# teeで標準出力と標準エラー出力をマージして、パイプでteeに渡します
ls /tmp /hoge 2>&1 | tee /tmp/test_tee

# show results
cat /tmp/test_redirect_out
cat /tmp/test_redirect_err

cat /tmp/test_redirect_out2
cat /tmp/test_redirect_err2
