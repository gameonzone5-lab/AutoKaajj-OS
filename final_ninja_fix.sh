awk '{
    if (NR == 68) {
        print "        try {"
        print "            val basePath = \"/data/data/\" + tech.ula.BuildConfig.APPLICATION_ID + \"/files/\" + session.filesystemId.toString()"
        print "            val motd = java.io.File(basePath + \"/etc/motd\")"
        print "            if (motd.exists()) motd.writeText(\"Welcome to AutoKaaj AI Environment!\\n\\n\")"
        print "            val issue = java.io.File(basePath + \"/etc/issue\")"
        print "            if (issue.exists()) issue.writeText(\"Welcome to AutoKaaj AI Environment!\\n\\n\")"
        print "        } catch (e: Exception) {}"
        print "        val command = \"/support/startSSHServer.sh\""
    } else {
        print $0
    }
}' app/src/main/java/tech/ula/utils/LocalServerManager.kt > temp.kt
mv temp.kt app/src/main/java/tech/ula/utils/LocalServerManager.kt
