import 'package:audio_discovery/src/bridge_generated.dart';

/// Represents the external library for audio_discovery
///
/// Will be a DynamicLibrary for dart:io or WasmModule for dart:html
typedef ExternalLibrary = Object;

AudioDiscovery createWrapperImpl(ExternalLibrary lib) =>
    throw UnimplementedError();

Object createLibraryImpl() => throw UnimplementedError();
