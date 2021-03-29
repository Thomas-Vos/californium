# For more details, see http://developer.android.com/guide/developing/tools/proguard.html


##### Rules required for Californium to work #####
# Needed to read StringUtil.CALIFORNIUM_VERSION
-keep class org.eclipse.californium.elements.util.StringUtil
# May be needed if you are not using SLF4J (could not reproduce issue in this sample yet)
-keep class org.slf4j.MDC { *; }

# TODO: Add more rules that could be required for Californium to work properly.

# TODO: Add the rules above to the Californium library instead of in the sample app.
#  For example, create a file "<library-dir>/META-INF/proguard/californium.pro" with the rules above.
#  See also: https://developer.android.com/studio/build/shrink-code#configuration-files


##### Rules added for this sample for testing #####
# Keep line numbers for debugging
-keepattributes SourceFile,LineNumberTable
-renamesourcefileattribute SourceFile
# Move all classes to the root package to see what happens with Californium
-repackageclasses ''

