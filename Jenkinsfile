pipeline {
	agent any

    stages {
        stage('Variables') {
            steps {
                echo "El número de compilación es: ${BUILD_ID}"
                echo "La URL de Jenkins es: ${JENKINS_URL}"
                sh "printenv"
            }
        }
    }
}