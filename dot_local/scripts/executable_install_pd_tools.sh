#!/bin/bash

AUTHOR="projectdiscovery"
REPOS=("notify" "nuclei" "katana" "naabu" "subfinder" "httpx" "cvemap" "proxify" "alterx" "urlfinder" "tlsx" "dnsx" "uncover" "asnmap" "interactsh")

DIR="$HOME/.local/bin"
TMP_DIR=$(mktemp -d)

# Цвета
BLUE="\033[34m"
RED="\033[31m"
WHITE="\033[0m"
GREEN="\033[32m"

# Проверка наличия curl и jq
if ! command -v curl &>/dev/null || ! command -v jq &>/dev/null; then
    echo -e "${RED}[-]${WHITE} Error: 'curl' and 'jq' are required but not installed."
    exit 1
fi

# Определение типа системы и архитектуры
linux_type=$(uname)
linux_arch=$(uname -m)

# Оптимизированные фильтры для типа и архитектуры
case "$linux_type" in
"Linux")
    type_filter="linux"
    ;;
"Darwin")
    type_filter="mac"
    ;;
*)
    echo -e "${RED}[-]${WHITE} Unsupported OS: $linux_type"
    exit 1
    ;;
esac

case "$linux_arch" in
"x86_64")
    arch_filter="amd64"
    ;;
"aarch64" | "arm64")
    arch_filter="arm64"
    ;;
*)
    echo -e "${RED}[-]${WHITE} Unsupported architecture: $linux_arch"
    exit 1
    ;;
esac

echo -e "${BLUE}[*]${WHITE} OS: $linux_type"
echo -e "${BLUE}[*]${WHITE} Architecture: $linux_arch"

# Скачивание последнего релиза для каждого репозитория
cd "$TMP_DIR" || exit 1
for repo in "${REPOS[@]}"; do
    REPO="$AUTHOR/$repo"
    echo -e "${BLUE}[*]${WHITE} Fetching latest release for $REPO..."

    download_urls=$(curl -s "https://api.github.com/repos/$REPO/releases/latest" |
        jq -r '.assets[].browser_download_url' |
        grep "$type_filter" | grep "$arch_filter")

    for download_url in $download_urls; do
        echo -e "${BLUE}[*]${WHITE} Download URL: $download_url"
        curl -sOL "$download_url"
        echo -e "${GREEN}[+]${WHITE} Downloaded $REPO for $type_filter, $arch_filter"
    done

    if [ -z "$download_urls" ]; then
        echo -e "${RED}[-]${WHITE} No suitable release found for $REPO ($type_filter, $arch_filter)"
    fi
done

# Разархивировать все архивы zip во временной папке:

for archive in "$TMP_DIR"/*.zip; do
    echo -e "${BLUE}[*]${WHITE} Extracting $archive..."
    7z x -y -o"$TMP_DIR" "$archive" >/dev/null
    echo -e "${GREEN}[+]${WHITE} Extracted $archive"
done

# Удалить архивы zip, текстовые файлы из временной директории
echo -e "${BLUE}[*]${WHITE} Removing zip and text files..."
for file in "$TMP_DIR"/*.zip "$TMP_DIR"/*.txt "$TMP_DIR"/*.md "$TMP_DIR"/LICENSE; do
    rm -f "$file" 2>/dev/null
done
echo -e "${GREEN}[+]${WHITE} Removed zip and text files"

# Переместить исполняемые файлы в директорию $DIR
echo -e "${BLUE}[*]${WHITE} Moving executables to $DIR..."
mkdir -p "$DIR"
for file in "$TMP_DIR"/*; do
    if [ -x "$file" ]; then
        cp -f "$file" "$DIR" 2>/dev/null
    fi
done
echo -e "${GREEN}[+]${WHITE} Moved executables to $DIR"

# Удалить временную директорию
echo -e "${BLUE}[*]${WHITE} Removing temporary directory..."
rm -rf "$TMP_DIR"
echo -e "${GREEN}[+]${WHITE} Removed temporary directory"
