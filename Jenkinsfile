pipeline {
  agent {
    docker {
      image 'node:18-alpine'
      args '-u root:root -p 8000:8000'  // port map किया
    }
  }

  stages {
    stage('Build & Run') {
      steps {
        sh '''
          npm install
          npm run build
          npm start &   # app को background में run करना
          sleep 30      # थोड़ा wait, ताकि check हो सके
          curl http://localhost:8000 || true
        '''
      }
    }
  }
}
