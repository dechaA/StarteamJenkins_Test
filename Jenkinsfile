pipeline {
    agent {label 'Windows'}

    stages {
		stage('PowerShell') {
			steps {
				echo 'Powershell'
				powershell 'Get-ComputerInfo'
			}
		}
		stage('Check out from Starteam') {
		    steps {
			        bat 'stcmd.exe co -p "Administrator:password#77@svr-starteam:15002/StarteamPipeline/CompareFiles" -is'
		    }
		}
		stage('Build') {
		    steps {
		        bat 'msbuild "D:\\01_Work\\13_Docker & Jenkins\\StarteamJenkins\\CompareFiles\\CompareFilesConsole\\CompareFilesConsole.vbproj"'
		    }
		}
		stage('RobotTest') {
		    steps {
                bat 'robot "D:\\Robot Framework\\EclipsePortable\\Data\\workspace\\SmartOne\\SmartOne.robot"'
		    }
		}
		stage('Ubuntu') {
		    agent {label 'Ubuntu-Slave'}

			steps {
				sh 'echo "Test from ubuntu agent"'
			}
		}

    }
}
