pipeline {
    agent any

    stages {
		stage('Check Out SourceCode') {
			steps {
				echo 'Start Checkout'
				git  'https://github.com/dechaA/CompareFiles'
			}
		}
		stage('Build') {
			steps {
				echo 'Start Build'
				//sh "dotnet build CompareFiles.vbproj --configuration Release"
				 sh "xbuild CompareFiles.sln" 
			}
		}
    }
}