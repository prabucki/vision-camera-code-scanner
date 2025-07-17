# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /usr/local/Cellar/android-sdk/24.3.3/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# React Native
-keep class com.facebook.react.** { *; }
-keep class com.facebook.hermes.** { *; }
-keep class com.facebook.jni.** { *; }

# Vision Camera
-keep class com.mrousavy.camera.** { *; }
-keep class com.visioncameracodescanner.** { *; }

# MLKit
-keep class com.google.mlkit.** { *; }
-keep class com.google.android.gms.** { *; }

# Reanimated
-keep class com.swmansion.reanimated.** { *; }

# General Android rules for newer versions
-dontwarn java.lang.invoke.StringConcatFactory
