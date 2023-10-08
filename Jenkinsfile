pipeline {
    agent any
    parameters {
         choice(name: 'ENV', choices: ['dev', 'prod'], description: 'Select your Environment')
         choice(name: 'ACTION', choices: ['apply', 'destroy'], description: 'Select your Environment')

    }
    stages {
        stage('Terraform Init'){
            steps {
                sh "terrafile -f env-${ENV}/Terrafile"
                sh "terraform init -backend-reconfig=env-${ENV}/${ENV}-backend.tfvars"
            }
        }
        stage('Terraform Plan'){
            steps {
                sh "terraform plan -var-file=env-${ENV}/${ENV}.tfvars"
            }
        }
        stage('Terraform Action'){
            steps {
                sh "terraform ${ACTION} -auto-approve -var-file=env-${ENV}/${ENV}.tfvars"
            }
        }    
    }
}