# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

project(flutter_audio_discovery_library VERSION 0.0.1 LANGUAGES C)

add_library(flutter_audio_discovery SHARED
  "flutter_audio_discovery.c"
)

set_target_properties(flutter_audio_discovery PROPERTIES
  PUBLIC_HEADER flutter_audio_discovery.h
  OUTPUT_NAME "flutter_audio_discovery"
)

target_compile_definitions(flutter_audio_discovery PUBLIC DART_SHARED_LIB)
