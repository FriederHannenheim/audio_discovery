#!/bin/bash

CURR_VERSION=audio_discovery-v`awk '/^version: /{print $2}' packages/audio_discovery/pubspec.yaml`

# CMake platforms (Linux, Windows, and Android)
CMAKE_HEADER="set(LibraryVersion \"$CURR_VERSION\") # generated; do not edit"
for CMAKE_PLATFORM in android
do
    sed -i.bak "1 s/.*/$CMAKE_HEADER/" packages/flutter_audio_discovery/$CMAKE_PLATFORM/CMakeLists.txt
    rm packages/flutter_audio_discovery/$CMAKE_PLATFORM/*.bak
done

git add packages/flutter_audio_discovery/
