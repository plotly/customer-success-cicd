# Dash Enterprise Continuous Deployment

This repo houses example scripts for deploying to Dash Enterprise using pipelines via various YAML scripts.

Each day a shell script writes a new Dash app with the date and time in the header and pushes that app, via various services, to [Dash Enterprise](https://dash-customer-success.plotly.host/Portal/).

| Service        | YAML                             | Other files      | Deployed Endpoint                                         |
| -------------- | -------------------------------- | ---------------- | --------------------------------------------------------- |
| GitLab         | .gitlab-ci.yml                   | --               | https://dash-customer-success.plotly.host/gitlab-test/    |
| BitBucket      | bitbucket-pipelines.yml          | --               | https://dash-customer-success.plotly.host/bitbucket-test/ |
| Azure DevOps   | azure-pipelines.yml              | --               | https://dash-customer-success.plotly.host/azure-test/     |
| Github (SSH)   | .github/workflows/main.yml       | --               | https://dash-customer-success.plotly.host/github-test/    |
| Github (https) | .github/workflows/main-https.yml | --               |                                                           |
| Jenkins        | Jenkinsfile                      | jenkinsdeploy.sh | https://dash-customer-success.plotly.host/jenkins-test/   |
