node {

    sh 'echo "hello"'
    echo "RESULT: ${currentBuild.result}"

    // do something that fails
    sh "exit 1"
    echo "RESULT: ${currentBuild.result}"
}