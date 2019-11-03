node() {
    stage("s1") {
        sh 'ls -al'
    }

    def aa
    stage("s2") {
        aa = sh script: 'exit 1', returnStatus: true
        if(aa != 0) {
            error "hello"              // <=== 여기서 실행이 중지된다.
        }
    }

    stage("s3") {
        sh 'ls -al'
    }
}