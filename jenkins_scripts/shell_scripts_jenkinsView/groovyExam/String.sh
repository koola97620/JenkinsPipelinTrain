node() {
    stage("string") {
        def username = 'Jenkins'
        echo 'Hello Mr. ${username}'
        echo "I said, Hello Mr. ${username}"
        echo 'I said, Hello Mr. ${username}'
    }
}