node {

    stage('clone') {
        git 'https://github.com/koola97620/JenkinsPipelinTrain'
    }
    dir('shell_scripts') {
        stage('shell_scripts') {
            sh 'pwd'
            sh 'sh script2.sh'
        }
    }

}