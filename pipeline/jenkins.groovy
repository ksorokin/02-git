pipeline {
    agent any
    parameters {

        choice(name: 'OS', choices: ['linux', 'darwin', 'windows', 'all'], description: 'Pick OS')
        choice(name: 'ARCH', choices: ['arm64', 'amd64', 'anm', 's86'], description: 'Pick Arch')

    }
    stages {
        stage('Example') {
            steps {
                echo "make TARGETARCH=${params.ARCH} TARGETOS=${params.OS} build"
            }
        }
    }
}