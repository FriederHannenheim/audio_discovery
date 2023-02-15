import 'dart:ffi';
import 'dart:io';

import 'package:audio_discovery/src/bridge_generated.dart';

typedef ExternalLibrary = DynamicLibrary;

AudioDiscovery createWrapperImpl(ExternalLibrary dylib) =>
    AudioDiscoveryImpl(dylib);

DynamicLibrary createLibraryImpl() {
    const base = 'audio_discovery';

    return DynamicLibrary.open('lib$base.so');
}
