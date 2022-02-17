pipeline {
    agent any
    
stages {
    stage ('Git-checkout') {
    steps {
        checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/rasakilukumon02hub/terraform-ec2.git']]])
    }
  }
    
        stage ("Init") {
            steps {
                sh ("terraform init -reconfigure") 
            }
        }
        
        stage ("Plan") {
            steps {
                sh ('terraform plan') 
            }
        }

        stage ("Apply") {
            steps {
                echo "Terraform action is --> ${action}"
                sh ('terraform apply --auto-approve') 
           }
        }
    }
}
