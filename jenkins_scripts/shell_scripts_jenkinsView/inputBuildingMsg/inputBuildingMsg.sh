node {
    stage('build') {
        echo "build"
        input message: 'confirm?' , ok: 'ok'
        echo "confirmed"
    }
}