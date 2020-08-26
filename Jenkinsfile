pipeline {
    agent any

    stages {
		stage('Check Out Source') {
			steps {
				//git 'https://github.com/dechaA/StarteamJenkins_Test.git'
				git  'https://github.com/dechaA/CompareFiles'
				powershell 'dotnet build'
				echo 'ChekcOut Completed'
			}
		}
    }
}
 