
Repository reference to a side package list:

"repositories": [

    ...

    {
        "type": "composer",
        "url": "[HOST_PROTOCOL]://[HOST]/repo"
    },

    ...

]

Local package list can be accessed on [http://satis.local.int] (nginx). You need to:
    1. Start bash-script: sh install.sh [NGINXDIR] [HOST] [PORT]
    2. Restart nginx
    3. Start bash-script: sh autogen.sh
    4. Add package list reference into your [composer.json], as shown above (http://satis.local.int)

Commit changes and restart [autogen.sh] to regenerate package, if necessary.
