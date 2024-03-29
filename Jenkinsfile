pipeline{
    agent {
        docker {
            image 'qaninja/rubywd'          
        }
    }
    
    stages {
        stage('Build'){
            steps{
                echo 'Building or Resolve Dependencies!' 
                sh 'rm -f Gemfile.lock'
                sh 'bundle install'       
            }
        }
        
        stage('Test'){
            steps{
                echo 'Running regression tests'
                sh 'bundle exec cucumber -p ci'   
            }
            post{
                always{
                    cucumber failedFeaturesNumber: -1, failedScenariosNumber: -1, failedStepsNumber: -1, fileIncludePattern: '**/*.json', jsonReportDirectory: 'results', pendingStepsNumber: -1, skippedStepsNumber: -1, sortingMethod: 'ALPHABETICAL', undefinedStepsNumber: -1        
                }
            }
        }
        
        stage('UAT'){
            steps {
                echo 'Wait for user acceptance'
                input(message: 'Go to production?', ok: 'Yes')
            }
        }
        
        stage('Prod'){
            steps{
                echo 'WebApp is ready :)'
            }
        }
    }
}