node {
    try {
        // do something that fails
        sh "exit 1"
    } catch (Exception err) {
       // post actions
       currentBuild.result = 'FAILURE'
    }
    echo "after try-catch"
}