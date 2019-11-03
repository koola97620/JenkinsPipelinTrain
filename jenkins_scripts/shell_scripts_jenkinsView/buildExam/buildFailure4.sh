node() {
    stage("s1") {
        sh 'ls -al'
    }
    stage("s2") {
        sh 'ls -al'
        // https://jenkins.io/blog/2019/07/05/jenkins-pipeline-stage-result-visualization-improvements/
        // required: Blue Ocean
        warnError('script error') {
            sh script: 'exit 1'
        }

    }
    stage("s3") {
        sh 'ls -al'
    }
}