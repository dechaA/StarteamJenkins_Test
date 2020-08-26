pipeline {
    agent any

    stages {
		stage('Check Out Source') {
			steps {
				echo 'CheckOut'
				if (fileExists('C:\Program Files (x86)\MSBuild\14.0\Bin\MSBuild.exe')) {
    				echo 'Yes'
				} else {
    				echo 'No'
				}
				//git 'https://github.com/dechaA/StarteamJenkins_Test.git'
				//git changelog: false, credentialsId: 'Jenkins_GitHub', url: 'https://github.com/dechaA/CompareFiles'
				echo 'ChekcOut Completed'
			}
		}
    }
}
 