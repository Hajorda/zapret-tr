#!/bin/bash

# Homebrew yollarını ekle (sudo ile çalıştırıldığında path kaybolabiliyor)
export PATH="/usr/local/bin:/opt/homebrew/bin:$PATH"

# Renk tanımlamaları
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
NC='\033[0m' # No Color

# Ekranı temizle
clear

# Başlık
cat << 'EOF'
[38;5;203m [39m[38;5;203m [39m[38;5;204m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;163m [39m[38;5;163m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m_[39m[38;5;164m [39m[38;5;164m.[39m[38;5;164m_[39m[38;5;164m [39m[38;5;164m [39m[38;5;164m_[39m[38;5;128m [39m[38;5;128m,[39m[38;5;129m [39m[38;5;129m_[39m[38;5;129m [39m[38;5;129m.[39m[38;5;129m_[39m[38;5;129m[39m
[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;163m [39m[38;5;163m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m([39m[38;5;164m_[39m[38;5;164m [39m[38;5;164m'[39m[38;5;164m [39m[38;5;164m([39m[38;5;128m [39m[38;5;128m`[39m[38;5;129m [39m[38;5;129m [39m[38;5;129m)[39m[38;5;129m_[39m[38;5;129m [39m[38;5;129m [39m[38;5;129m.[39m[38;5;129m_[39m[38;5;129m_[39m[38;5;93m)[39m[38;5;93m[39m
[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;163m [39m[38;5;163m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m([39m[38;5;164m [39m[38;5;164m([39m[38;5;164m [39m[38;5;164m [39m[38;5;128m([39m[38;5;128m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m)[39m[38;5;129m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m`[39m[38;5;129m)[39m[38;5;93m [39m[38;5;93m [39m[38;5;93m)[39m[38;5;93m [39m[38;5;93m_[39m[38;5;93m)[39m[38;5;93m[39m
[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;163m [39m[38;5;163m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m([39m[38;5;164m_[39m[38;5;164m_[39m[38;5;128m [39m[38;5;128m([39m[38;5;129m_[39m[38;5;129m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m([39m[38;5;129m_[39m[38;5;129m [39m[38;5;129m.[39m[38;5;129m [39m[38;5;93m_[39m[38;5;93m)[39m[38;5;93m [39m[38;5;93m_[39m[38;5;93m)[39m[38;5;93m [39m[38;5;93m,[39m[38;5;93m_[39m[38;5;93m_[39m[38;5;99m)[39m[38;5;63m[39m
[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;163m [39m[38;5;163m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;128m [39m[38;5;128m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m`[39m[38;5;129m~[39m[38;5;129m~[39m[38;5;129m`[39m[38;5;129m\[39m[38;5;129m [39m[38;5;129m'[39m[38;5;93m [39m[38;5;93m.[39m[38;5;93m [39m[38;5;93m/[39m[38;5;93m`[39m[38;5;93m~[39m[38;5;93m~[39m[38;5;93m`[39m[38;5;93m[39m
[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;163m [39m[38;5;163m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;128m [39m[38;5;128m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m,[39m[38;5;129m:[39m[38;5;129m:[39m[38;5;129m:[39m[38;5;93m [39m[38;5;93m;[39m[38;5;93m [39m[38;5;93m [39m[38;5;93m [39m[38;5;93m;[39m[38;5;93m [39m[38;5;93m:[39m[38;5;93m:[39m[38;5;99m:[39m[38;5;63m,[39m[38;5;63m[39m
[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;163m [39m[38;5;163m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;128m [39m[38;5;128m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m'[39m[38;5;129m:[39m[38;5;93m:[39m[38;5;93m:[39m[38;5;93m:[39m[38;5;93m:[39m[38;5;93m:[39m[38;5;93m:[39m[38;5;93m:[39m[38;5;93m:[39m[38;5;93m:[39m[38;5;99m:[39m[38;5;63m:[39m[38;5;63m:[39m[38;5;63m:[39m[38;5;63m:[39m[38;5;63m'[39m[38;5;63m[39m
[38;5;163m [39m[38;5;163m_[39m[38;5;164m_[39m[38;5;164m_[39m[38;5;164m_[39m[38;5;164m_[39m[38;5;164m_[39m[38;5;164m_[39m[38;5;164m_[39m[38;5;164m_[39m[38;5;164m_[39m[38;5;164m_[39m[38;5;128m_[39m[38;5;128m_[39m[38;5;129m_[39m[38;5;129m_[39m[38;5;129m_[39m[38;5;129m_[39m[38;5;129m_[39m[38;5;129m_[39m[38;5;129mj[39m[38;5;129mg[39m[38;5;129ms[39m[38;5;93m_[39m[38;5;93m_[39m[38;5;93m_[39m[38;5;93m_[39m[38;5;93m_[39m[38;5;93m_[39m[38;5;93m/[39m[38;5;93m_[39m[38;5;93m [39m[38;5;99m_[39m[38;5;63m_[39m[38;5;63m [39m[38;5;63m\[39m[38;5;63m_[39m[38;5;63m_[39m[38;5;63m_[39m[38;5;63m_[39m[38;5;63m_[39m[38;5;63m_[39m[38;5;63m_[39m[38;5;63m_[39m[38;5;69m_[39m[38;5;33m_[39m[38;5;33m_[39m[38;5;33m_[39m[38;5;33m_[39m[38;5;33m_[39m[38;5;33m_[39m[38;5;33m_[39m[38;5;33m_[39m[38;5;33m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;38m[39m
[38;5;164m|[39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;164m [39m[38;5;128m [39m[38;5;128m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m [39m[38;5;93m [39m[38;5;93m [39m[38;5;93m [39m[38;5;93m [39m[38;5;93m [39m[38;5;93m [39m[38;5;93m [39m[38;5;93m [39m[38;5;93m [39m[38;5;99m [39m[38;5;63m [39m[38;5;63m [39m[38;5;63m [39m[38;5;63m [39m[38;5;63m [39m[38;5;63m [39m[38;5;63m [39m[38;5;63m [39m[38;5;63m [39m[38;5;63m [39m[38;5;63m [39m[38;5;69m [39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;39m [39m[38;5;39m [39m[38;5;39m [39m[38;5;39m [39m[38;5;39m [39m[38;5;39m [39m[38;5;39m [39m[38;5;39m [39m[38;5;39m [39m[38;5;38m [39m[38;5;38m [39m[38;5;44m [39m[38;5;44m|[39m[38;5;44m[39m
[38;5;164m|[39m[38;5;164m [39m[38;5;164m [39m[38;5;164m_[39m[38;5;164m_[39m[38;5;164m_[39m[38;5;128m_[39m[38;5;128m_[39m[38;5;129m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m_[39m[38;5;129m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m_[39m[38;5;93m_[39m[38;5;93m_[39m[38;5;93m_[39m[38;5;93m [39m[38;5;93m [39m[38;5;93m_[39m[38;5;93m_[39m[38;5;93m_[39m[38;5;93m_[39m[38;5;99m [39m[38;5;63m [39m[38;5;63m_[39m[38;5;63m_[39m[38;5;63m_[39m[38;5;63m_[39m[38;5;63m_[39m[38;5;63m [39m[38;5;63m_[39m[38;5;63m_[39m[38;5;63m_[39m[38;5;63m_[39m[38;5;69m_[39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;39m [39m[38;5;39m [39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m [39m[38;5;39m_[39m[38;5;38m_[39m[38;5;38m_[39m[38;5;44m_[39m[38;5;44m [39m[38;5;44m [39m[38;5;44m [39m[38;5;44m|[39m[38;5;44m[39m
[38;5;164m|[39m[38;5;164m [39m[38;5;164m|[39m[38;5;128m_[39m[38;5;128m_[39m[38;5;129m [39m[38;5;129m [39m[38;5;129m/[39m[38;5;129m [39m[38;5;129m [39m[38;5;129m/[39m[38;5;129m [39m[38;5;129m\[39m[38;5;129m [39m[38;5;93m [39m[38;5;93m|[39m[38;5;93m [39m[38;5;93m [39m[38;5;93m_[39m[38;5;93m [39m[38;5;93m\[39m[38;5;93m|[39m[38;5;93m [39m[38;5;99m [39m[38;5;63m_[39m[38;5;63m [39m[38;5;63m\[39m[38;5;63m|[39m[38;5;63m [39m[38;5;63m_[39m[38;5;63m_[39m[38;5;63m_[39m[38;5;63m_[39m[38;5;63m|[39m[38;5;63m_[39m[38;5;69m [39m[38;5;33m [39m[38;5;33m [39m[38;5;33m_[39m[38;5;33m|[39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;39m [39m[38;5;39m [39m[38;5;39m [39m[38;5;39m [39m[38;5;39m|[39m[38;5;39m_[39m[38;5;39m [39m[38;5;39m [39m[38;5;39m [39m[38;5;38m_[39m[38;5;38m|[39m[38;5;44m [39m[38;5;44m [39m[38;5;44m_[39m[38;5;44m [39m[38;5;44m\[39m[38;5;44m [39m[38;5;44m [39m[38;5;44m|[39m[38;5;44m[39m
[38;5;128m|[39m[38;5;128m [39m[38;5;129m [39m[38;5;129m [39m[38;5;129m/[39m[38;5;129m [39m[38;5;129m/[39m[38;5;129m [39m[38;5;129m [39m[38;5;129m/[39m[38;5;129m [39m[38;5;93m_[39m[38;5;93m [39m[38;5;93m\[39m[38;5;93m [39m[38;5;93m|[39m[38;5;93m [39m[38;5;93m|[39m[38;5;93m_[39m[38;5;93m)[39m[38;5;99m [39m[38;5;63m|[39m[38;5;63m [39m[38;5;63m|[39m[38;5;63m_[39m[38;5;63m)[39m[38;5;63m [39m[38;5;63m|[39m[38;5;63m [39m[38;5;63m [39m[38;5;63m_[39m[38;5;63m|[39m[38;5;69m [39m[38;5;33m [39m[38;5;33m [39m[38;5;33m|[39m[38;5;33m [39m[38;5;33m|[39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m [39m[38;5;39m [39m[38;5;39m [39m[38;5;39m [39m[38;5;38m|[39m[38;5;38m [39m[38;5;44m|[39m[38;5;44m [39m[38;5;44m|[39m[38;5;44m [39m[38;5;44m|[39m[38;5;44m_[39m[38;5;44m)[39m[38;5;44m [39m[38;5;44m|[39m[38;5;44m [39m[38;5;43m|[39m[38;5;49m[39m
[38;5;129m|[39m[38;5;129m [39m[38;5;129m [39m[38;5;129m/[39m[38;5;129m [39m[38;5;129m/[39m[38;5;129m_[39m[38;5;129m [39m[38;5;93m/[39m[38;5;93m [39m[38;5;93m_[39m[38;5;93m_[39m[38;5;93m_[39m[38;5;93m [39m[38;5;93m\[39m[38;5;93m|[39m[38;5;93m [39m[38;5;99m [39m[38;5;63m_[39m[38;5;63m_[39m[38;5;63m/[39m[38;5;63m|[39m[38;5;63m [39m[38;5;63m [39m[38;5;63m_[39m[38;5;63m [39m[38;5;63m<[39m[38;5;63m|[39m[38;5;63m [39m[38;5;69m|[39m[38;5;33m_[39m[38;5;33m_[39m[38;5;33m_[39m[38;5;33m [39m[38;5;33m [39m[38;5;33m|[39m[38;5;33m [39m[38;5;33m|[39m[38;5;33m [39m[38;5;39m [39m[38;5;39m [39m[38;5;39m|[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m|[39m[38;5;38m [39m[38;5;38m [39m[38;5;44m [39m[38;5;44m|[39m[38;5;44m [39m[38;5;44m|[39m[38;5;44m [39m[38;5;44m|[39m[38;5;44m [39m[38;5;44m [39m[38;5;44m_[39m[38;5;44m [39m[38;5;43m<[39m[38;5;49m [39m[38;5;49m [39m[38;5;49m|[39m[38;5;49m[39m
[38;5;129m|[39m[38;5;129m [39m[38;5;129m/[39m[38;5;129m_[39m[38;5;129m_[39m[38;5;93m_[39m[38;5;93m_[39m[38;5;93m/[39m[38;5;93m_[39m[38;5;93m/[39m[38;5;93m [39m[38;5;93m [39m[38;5;93m [39m[38;5;93m\[39m[38;5;99m_[39m[38;5;63m\[39m[38;5;63m_[39m[38;5;63m|[39m[38;5;63m [39m[38;5;63m [39m[38;5;63m [39m[38;5;63m|[39m[38;5;63m_[39m[38;5;63m|[39m[38;5;63m [39m[38;5;63m\[39m[38;5;69m_[39m[38;5;33m\[39m[38;5;33m_[39m[38;5;33m_[39m[38;5;33m_[39m[38;5;33m_[39m[38;5;33m_[39m[38;5;33m|[39m[38;5;33m [39m[38;5;33m|[39m[38;5;39m_[39m[38;5;39m|[39m[38;5;39m [39m[38;5;39m [39m[38;5;39m [39m[38;5;39m [39m[38;5;39m [39m[38;5;39m [39m[38;5;39m [39m[38;5;38m [39m[38;5;38m [39m[38;5;44m [39m[38;5;44m [39m[38;5;44m [39m[38;5;44m [39m[38;5;44m|[39m[38;5;44m_[39m[38;5;44m|[39m[38;5;44m [39m[38;5;44m|[39m[38;5;44m_[39m[38;5;43m|[39m[38;5;49m [39m[38;5;49m\[39m[38;5;49m_[39m[38;5;49m\[39m[38;5;49m [39m[38;5;49m|[39m[38;5;49m[39m
[38;5;129m|[39m[38;5;129m [39m[38;5;93m [39m[38;5;93m [39m[38;5;93m [39m[38;5;93m [39m[38;5;93m [39m[38;5;93m [39m[38;5;93m [39m[38;5;93m [39m[38;5;93m [39m[38;5;99m [39m[38;5;63m [39m[38;5;63m [39m[38;5;63m [39m[38;5;63m [39m[38;5;63m [39m[38;5;63m [39m[38;5;63m [39m[38;5;63m [39m[38;5;63m [39m[38;5;63m [39m[38;5;63m [39m[38;5;69m [39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;33m [39m[38;5;39m [39m[38;5;39m [39m[38;5;39m [39m[38;5;39m [39m[38;5;39m [39m[38;5;39m [39m[38;5;39m [39m[38;5;39m [39m[38;5;39m [39m[38;5;38m [39m[38;5;38m [39m[38;5;44m [39m[38;5;44m [39m[38;5;44m [39m[38;5;44m [39m[38;5;44m [39m[38;5;44m [39m[38;5;44m [39m[38;5;44m [39m[38;5;44m [39m[38;5;44m [39m[38;5;43m [39m[38;5;49m [39m[38;5;49m [39m[38;5;49m [39m[38;5;49m [39m[38;5;49m [39m[38;5;49m [39m[38;5;49m [39m[38;5;49m [39m[38;5;49m|[39m[38;5;49m[39m
[38;5;93m|[39m[38;5;93m_[39m[38;5;93m_[39m[38;5;93m_[39m[38;5;93m_[39m[38;5;93m_[39m[38;5;93m_[39m[38;5;93m_[39m[38;5;99m_[39m[38;5;63m_[39m[38;5;63m_[39m[38;5;63m_[39m[38;5;63m_[39m[38;5;63m_[39m[38;5;63m_[39m[38;5;63m_[39m[38;5;63m_[39m[38;5;63m_[39m[38;5;63m_[39m[38;5;63m_[39m[38;5;69m_[39m[38;5;33m_[39m[38;5;33m_[39m[38;5;33m_[39m[38;5;33m_[39m[38;5;33m_[39m[38;5;33m_[39m[38;5;33m_[39m[38;5;33m_[39m[38;5;33m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;38m_[39m[38;5;38m_[39m[38;5;44m_[39m[38;5;44m_[39m[38;5;44m_[39m[38;5;44m_[39m[38;5;44m_[39m[38;5;44m_[39m[38;5;44m_[39m[38;5;44m_[39m[38;5;44m_[39m[38;5;44m_[39m[38;5;43m_[39m[38;5;49m_[39m[38;5;49m_[39m[38;5;49m_[39m[38;5;49m_[39m[38;5;49m_[39m[38;5;49m_[39m[38;5;49m_[39m[38;5;49m_[39m[38;5;49m_[39m[38;5;49m_[39m[38;5;48m_[39m[38;5;48m|[39m[38;5;48m[39m

EOF

echo ""
echo -e "${YELLOW}Bu script, macOS sistemlerde Türkiye'deki DPI (Derin Paket İnceleme)"
echo "engellemelerini aşmak için 'tpws' aracını yapılandırır."
echo "GoodbyeDPI-Turkey ayarları (Superonline, TurkTelekom vb. için)"
echo -e "ile uyumlu çalışacak şekilde tasarlanmıştır.${NC}"
echo ""

# Bulunulan dizini dinamik olarak al
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TPWS_EXEC="$DIR/tpws/tpws"

# Hata Kontrolleri: Root izni
if [ "$EUID" -ne 0 ]; then
  echo -e "${RED}[HATA] tpws şeffaf modda çalışabilmek için root yetkilerine ihtiyaç duyar.${NC}"
  echo -e "${YELLOW}Lütfen script'i 'sudo' ile çalıştırın: sudo $DIR/macos_turkey_config.sh${NC}"
  exit 1
fi

# Hata Kontrolleri: Dosya varlığı
if [ ! -f "$TPWS_EXEC" ]; then
  echo -e "${RED}[HATA] 'tpws' çalıştırılabilir dosyası bulunamadı!${NC}"
  echo -e "${YELLOW}Lütfen kurulumun (make mac) doğru yapıldığından emin olun.${NC}"
  echo -e "Aranan dizin: $TPWS_EXEC"
  exit 1
fi

echo -e "${CYAN}Hangi işlemi yapmak istersiniz?${NC}"
echo -e "${YELLOW}--- GEÇİCİ ÇALIŞTIRMA (Terminal açık kaldığı sürece çalışır) ---${NC}"
echo -e "${GREEN}1)${NC} Varsayılan Ayar (-5 parametresi eşdeğeri)"
echo -e "${GREEN}2)${NC} Alternatif 2 (Disorder - bazı ISP'lerde daha iyi çalışır)"
echo -e "${GREEN}3)${NC} Alternatif 3 (TLS Pad - Sadece SNI ayrıştırması)"
echo -e "${YELLOW}--- ARKAPLAN SERVİSİ (Mac her açıldığında otomatik çalışır) ---${NC}"
echo -e "${GREEN}4)${NC} Arkaplan Servisini KUR ve BAŞLAT"
echo -e "${RED}5)${NC} Arkaplan Servisini DURDUR ve SİL"
echo -e "${CYAN}--------------------------------------------------------------${NC}"
echo -e "${RED}6)${NC} Çıkış"
echo ""

read -p "$(echo -e ${CYAN}"Seçiminiz (1/2/3/4/5/6): "${NC})" choice

if [ "$choice" == "6" ]; then
    echo -e "${YELLOW}Çıkış yapılıyor. İyi günler!${NC}"
    exit 0
fi

if [[ ! "$choice" =~ ^[1-5]$ ]]; then
    echo -e "${RED}[HATA] Geçersiz seçim! Lütfen menüden 1-6 arası bir rakam seçin.${NC}"
    exit 1
fi

if [ "$choice" == "5" ]; then
    echo -e "${YELLOW}[!] Arkaplan servisi durduruluyor ve siliniyor...${NC}"
    sudo launchctl unload -w /Library/LaunchDaemons/com.zapret.turkey.plist 2>/dev/null
    sudo rm -f /Library/LaunchDaemons/com.zapret.turkey.plist
    sudo rm -f /opt/zapret-tr/zapret-daemon.sh
    sudo pfctl -F all -f /etc/pf.conf &>/dev/null
    echo -e "${GREEN}[+] Servis başarıyla kaldırıldı ve ağ ayarları sıfırlandı!${NC}"
    exit 0
fi

# Eğer 4 seçildiyse, hangi alternatifin kurulacağını sor
TPWS_ARGS=""
if [ "$choice" == "4" ]; then
    echo ""
    echo -e "${CYAN}Hangi ayarı arkaplanda kalıcı olarak kurmak istersiniz?${NC}"
    echo "1) Varsayılan Ayar"
    echo "2) Alternatif 2 (Disorder)"
    echo "3) Alternatif 3 (TLS Pad)"
    read -p "$(echo -e ${CYAN}"Seçiminiz (1/2/3): "${NC})" subchoice
    if [ "$subchoice" == "1" ]; then
        TPWS_ARGS="--user=root --port=988 --bind-addr=127.0.0.1 --split-http-req=method --split-tls=sni --split-pos=2 --oob"
    elif [ "$subchoice" == "2" ]; then
        TPWS_ARGS="--user=root --port=988 --bind-addr=127.0.0.1 --split-http-req=method --split-tls=sni --split-pos=2 --disorder"
    elif [ "$subchoice" == "3" ]; then
        TPWS_ARGS="--user=root --port=988 --bind-addr=127.0.0.1 --split-tls=sni --tlsrec=sni"
    else
        echo -e "${RED}Geçersiz seçim!${NC}"
        exit 1
    fi
    
    echo -e "${YELLOW}[+] Arkaplan servisi dosyaları oluşturuluyor...${NC}"
    
    # Daemon Scriptini Oluştur
    cat << EOF > /opt/zapret-tr/zapret-daemon.sh
#!/bin/bash
export PATH="/usr/local/bin:/opt/homebrew/bin:\$PATH"

# Güvenlik Duvarı ayarlarını yapılandır
awk '
/^anchor "com.apple\/\*"/ {
    print "rdr pass on lo0 inet  proto tcp from \!127.0.0.0/8 to any port {80,443} -> 127.0.0.1 port 988"
    print "rdr pass on lo0 inet6 proto tcp from \!::1 to any port {80,443} -> fe80::1 port 988"
}
{ print }
\$0 ~ /^load anchor "com.apple"/ {
    print "pass out route-to (lo0 127.0.0.1) inet proto tcp from any to any port {80,443} user { >root }"
}
' /etc/pf.conf > /tmp/zapret_pf_daemon.conf

pfctl -ef /tmp/zapret_pf_daemon.conf &>/dev/null

trap 'pfctl -F all -f /etc/pf.conf &>/dev/null; exit 0' SIGINT SIGTERM

/opt/zapret-tr/tpws/tpws $TPWS_ARGS
EOF
    chmod +x /opt/zapret-tr/zapret-daemon.sh

    # Plist dosyasını oluştur
    cat << 'EOF' > /Library/LaunchDaemons/com.zapret.turkey.plist
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>Label</key>
    <string>com.zapret.turkey</string>
    <key>ProgramArguments</key>
    <array>
        <string>/bin/bash</string>
        <string>/opt/zapret-tr/zapret-daemon.sh</string>
    </array>
    <key>RunAtLoad</key>
    <true/>
    <key>KeepAlive</key>
    <true/>
    <key>StandardErrorPath</key>
    <string>/tmp/zapret-daemon.err</string>
    <key>StandardOutPath</key>
    <string>/tmp/zapret-daemon.out</string>
</dict>
</plist>
EOF

    echo -e "${YELLOW}[+] Servis başlatılıyor...${NC}"
    sudo launchctl unload -w /Library/LaunchDaemons/com.zapret.turkey.plist 2>/dev/null
    sudo launchctl load -w /Library/LaunchDaemons/com.zapret.turkey.plist
    
    echo -e "${GREEN}[+] BAŞARILI! Zapret arkaplan servisi olarak kuruldu.${NC}"
    echo -e "Artık bilgisayarınızı kapatsanız bile her açılışta kendi kendine çalışacaktır."
    echo -e "İleride durdurmak isterseniz bu menüden 5'i seçebilirsiniz."
    exit 0
fi

# Burası geçici çalıştırma kısmı (1, 2, 3)
echo -e "${YELLOW}[+] Yönlendirme (PF) kuralları uygulanıyor...${NC}"

# macOS'un varsayılan güvenlik duvarı (PF) kurallarını bozmadan kendi kurallarımızı ekliyoruz.
awk '
/^anchor "com.apple\/\*"/ {
    print "rdr pass on lo0 inet  proto tcp from \!127.0.0.0/8 to any port {80,443} -> 127.0.0.1 port 988"
    print "rdr pass on lo0 inet6 proto tcp from \!::1 to any port {80,443} -> fe80::1 port 988"
}
{ print }
$0 ~ /^load anchor "com.apple"/ {
    print "pass out route-to (lo0 127.0.0.1) inet proto tcp from any to any port {80,443} user { >root }"
}
' /etc/pf.conf > /tmp/zapret_pf_combined.conf

sudo pfctl -ef /tmp/zapret_pf_combined.conf &>/dev/null

trap 'echo -e "\n${RED}[!] Program durduruldu. Bağlantı kuralları temizleniyor...${NC}"; sudo pfctl -F all -f /etc/pf.conf &>/dev/null; exit 0' SIGINT SIGTERM

echo -e "${GREEN}[+] Güvenlik duvarı (PF) aktif edildi!${NC}"
echo -e "${CYAN}-------------------------------------------------------------"
echo -e "[BİLGİ] Bu terminal penceresi AÇIK KALDIĞI SÜRECE yasaklı sitelere girebilirsiniz."
echo -e "[BİLGİ] Kapatmak ve internetinizi normale döndürmek için CTRL+C tuşlarına basın."
echo -e "-------------------------------------------------------------${NC}"
echo ""

case $choice in
    1)
        echo -e "${GREEN}[+] Başlatılıyor: Varsayılan Ayar (Split at 2 + OOB)...${NC}"
        "$TPWS_EXEC" --user=root --port=988 --bind-addr=127.0.0.1 --split-http-req=method --split-tls=sni --split-pos=2 --oob
        ;;
    2)
        echo -e "${GREEN}[+] Başlatılıyor: Alternatif 2 (Disorder)...${NC}"
        "$TPWS_EXEC" --user=root --port=988 --bind-addr=127.0.0.1 --split-http-req=method --split-tls=sni --split-pos=2 --disorder
        ;;
    3)
        echo -e "${GREEN}[+] Başlatılıyor: Alternatif 3 (TLS Pad)...${NC}"
        "$TPWS_EXEC" --user=root --port=988 --bind-addr=127.0.0.1 --split-tls=sni --tlsrec=sni
        ;;
esac
