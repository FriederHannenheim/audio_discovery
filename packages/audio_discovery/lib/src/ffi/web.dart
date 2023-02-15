import 'package:audio_discovery/audio_discovery.dart';
import 'package:audio_discovery/src/bridge_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

typedef ExternalLibrary = WasmModule;

AudioDiscovery createWrapperImpl(ExternalLibrary module) =>
    AudioDiscoveryImpl.wasm(module);

WasmModule createLibraryImpl() {
    throw UnsupportedError('Web support is not provided yet.');
}
