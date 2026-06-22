awk '{
    if ($0 ~ /val command = "\/support\/startSSHServer.sh"/) {
        print "        try {"
        print "            val supportFile = java.io.File(context.filesDir, \"support/startSSHServer.sh\")"
        print "            if (supportFile.exists()) {"
        print "                var text = supportFile.readText()"
        print "                if (!text.contains(\"AutoKaaj\")) {"
        print "                    text = text.replace(\"#!/bin/bash\", \"#!/bin/bash\\necho \\'Welcome to AutoKaaj AI Environment!\\' > /etc/motd\\n\")"
        print "                    text = text.replace(\"#!/bin/sh\", \"#!/bin/sh\\necho \\'Welcome to AutoKaaj AI Environment!\\' > /etc/motd\\n\")"
        print "                    supportFile.writeText(text)"
        print "                }"
        print "            }"
        print "        } catch (e: Exception) {}"
        print "        val command = \"/support/startSSHServer.sh\""
    } else {
        print $0
    }
}' app/src/main/java/tech/ula/utils/LocalServerManager.kt > temp.kt
mv temp.kt app/src/main/java/tech/ula/utils/LocalServerManager.kt
