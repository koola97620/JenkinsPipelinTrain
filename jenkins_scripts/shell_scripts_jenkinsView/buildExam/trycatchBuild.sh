node {
    try {
        // do something that fails
        sh "exit 1"
    } catch (Exception err) {

    }
}