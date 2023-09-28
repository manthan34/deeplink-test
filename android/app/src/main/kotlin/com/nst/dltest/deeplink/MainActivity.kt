package com.nst.dltest.deeplink

import android.content.Context
import android.content.Intent
import android.os.Bundle
import android.os.PersistableBundle
import android.util.AttributeSet
import android.util.Log
import android.view.View
import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity: FlutterActivity() {

    override fun onCreateView(name: String, context: Context, attrs: AttributeSet): View? {
        return super.onCreateView(name, context, attrs)
    }

    /*override fun onCreate(savedInstanceState: Bundle?, persistentState: PersistableBundle?) {
        super.onCreate(savedInstanceState, persistentState)
        Log.e("NST-M", "ON CREATE CALLED")
        val consent = intent.data?.getQueryParameter("consent")
        val appUserId = intent.data?.getQueryParameter("application-user-id")
        val userId = intent.data?.getQueryParameter("user-uuid")
        val institution = intent.data?.getQueryParameter("institution")
        val errorSource = intent.data?.getQueryParameter("error-source")
        val error = intent.data?.getQueryParameter("error")
        val errorDescription = intent.data?.getQueryParameter("error-description")
        val data = mapOf<String, Any?>(
            "consent" to consent,
            "application-user-id" to appUserId,
            "user-uuid" to userId,
            "institution" to institution,
            "error-source" to errorSource,
            "error" to error,
            "error-description" to errorDescription)
        DeepLinkManager.handleDeeplink(data)
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        Log.e("NST-M", "ON NEW INTENT CALLED")
        val consent = intent.data?.getQueryParameter("consent")
        val appUserId = intent.data?.getQueryParameter("application-user-id")
        val userId = intent.data?.getQueryParameter("user-uuid")
        val institution = intent.data?.getQueryParameter("institution")
        val errorSource = intent.data?.getQueryParameter("error-source")
        val error = intent.data?.getQueryParameter("error")
        val errorDescription = intent.data?.getQueryParameter("error-description")
        val data = mapOf<String, Any?>(
            "consent" to consent,
            "application-user-id" to appUserId,
            "user-uuid" to userId,
            "institution" to institution,
            "error-source" to errorSource,
            "error" to error,
            "error-description" to errorDescription)
        DeepLinkManager.handleDeeplink(data)
    }*/

    override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
//        DeepLinkManager.configureChannel(flutterEngine)
    }

}
