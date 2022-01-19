module.exports = {
  apps: [
    {
      name: 'aws-codedeploy',
      script: 'npm start',
      args: 'serve -s build -l 3000 -n',
      interpreter: 'none',
      env_production: {
        NODE_ENV: "production"
      },
     env_development: {
        NODE_ENV: "development"
      },
    },
  ],
}