pipeline {
    agent any

    stages {
		stage('Check Out Source') {
			steps {
				echo 'CheckOut'
				git changelog: false, credentialsId: 'Jenkins_GitHub', url: 'https://github.com/dechaA/CompareFiles'
			}
		}
		stage('Test'){
			userInput['smartcr'] 
		}
    }
}
