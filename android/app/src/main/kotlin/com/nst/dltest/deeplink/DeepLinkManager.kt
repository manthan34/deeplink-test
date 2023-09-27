package com.nst.dltest.deeplink

import android.util.Log
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

object DeepLinkManager {

    private const val CHANNEL_NAME = "com.nst.dltest.deeplink/deeplinkmanager"
    private lateinit var methodChannel: MethodChannel

    fun configureChannel(flutterEngine: FlutterEngine) {
        Log.e("NST", "Deeplink configure in android")
        methodChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL_NAME)
    }

    fun handleDeeplink(data: Map<String, Any?>) {
        methodChannel.invokeMethod("handleDeeplinkData", data)
    }
}