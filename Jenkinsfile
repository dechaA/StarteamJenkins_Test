pipeline {
    agent any

    stages {
		stage('Check Out Source') {
			steps {
				//git 'https://github.com/dechaA/StarteamJenkins_Test.git'
				git  'https://github.com/dechaA/CompareFiles'
				bat "dotnet build CompareFiles.vbproj --configuration Release"
				echo 'ChekcOut Completed'
			}
		}
    }
}
 