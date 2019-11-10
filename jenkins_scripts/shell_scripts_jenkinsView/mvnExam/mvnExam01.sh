properties([parameters([string(defaultValue: 'test', description: 'test or verify', name: 'testType', trim: false)])])

node() {
    stage("git") {
        git 'https://github.com/koola97620/jenkins_maven_exam'
    }

    stage('build') {
        withEnv(["PATH+MAVEN=${tool 'apache-maven-3.3.9'}/bin",
                "JAVA_HOME=${tool 'jdk1.8'}",
                "PATH+JDK=${tool 'jdk1.8'}/bin"]) {
            sh 'whoami'
            // sh 'ls -al $JAVA_HOME'
            sh 'whoami'
            sh 'javac -version'
            sh 'mvn --version'
            sh "mvn clean ${params.testType}"
            }
    }

    stage('report') {
        sh 'whoami'
        junit 'target/surefire-reports/*.xml'
        jacoco execPattern: 'target/**.exec'
    }
}