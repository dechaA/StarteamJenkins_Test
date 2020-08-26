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
				echa 'Start Build'
				//sh "dotnet build CompareFiles.vbproj --configuration Release"
				 sh "xbuild CompareFiles.sln" 
			}
		}
    }
}