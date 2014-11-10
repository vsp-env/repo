Clone to the root of a server host and add repository reference to it:

"repositories": [

    ...

    {
        "type": "composer",
        "url": "=HOST_PROTOCOL=://=HOST=/repo"
    },

    ...

]
