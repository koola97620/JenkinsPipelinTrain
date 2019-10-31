node {
//    deleteDir()
    stage('stash') {
        dir('hello') {
            sh 'pwd'
            sh 'echo "hey" > file1.txt'
            stash includes: 'file1.txt', name: 'file1'
        }
    }

    stage('unstash') {
        sh 'pwd'
        unstash 'file1'
//        sh 'find ./'
        sh 'pwd'
        sh 'cat file1.txt'
    }
}