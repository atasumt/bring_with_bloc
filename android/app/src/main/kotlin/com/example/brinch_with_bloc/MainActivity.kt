package com.example.brinch_with_bloc

import android.os.Build
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.PluginRegistry.Registrar
import kotlin.math.log


class MainActivity: FlutterActivity() {

    private val CHANNEL = "platform_channel"

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
                call, result ->
            if (call.method == "getOSVersion") {

                result.success(Build.VERSION.RELEASE)
            } else {
                result.notImplemented()
            }
        }
    }




}
