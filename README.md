
# Dash Enterprise Continuous Deployment

<div align="center">
  <a href="https://dash.plotly.com/project-maintenance">
    <img src="https://dash.plotly.com/assets/images/maintained-by-plotly.png" width="400px" alt="Maintained by Plotly">
  </a>
</div>


This repo houses example scripts for deploying to Dash Enterprise using pipelines via various YAML scripts.

Each day a shell script writes a new Dash app with the date and time in the header and pushes that app, via various services, to [Dash Enterprise](https://dash-customer-success.plotly.host/Portal/).

| Service      | YAML                       | Other files      | Deployed Endpoint                                         |
|--------------|----------------------------|------------------|-----------------------------------------------------------|
| GitLab       | .gitlab-ci.yml             | --               | https://dash-customer-success.plotly.host/gitlab-test/    |
| BitBucket    | bitbucket-pipelines.yml    | --               | https://dash-customer-success.plotly.host/bitbucket-test/ |
| Azure DevOps | azure-pipelines.yml        | --               | https://dash-customer-success.plotly.host/azure-test/     | 
| Github       | .github/workflows/main.yml | --               | https://dash-customer-success.plotly.host/github-test/    |
| Jenkins      | Jenkinsfile                | jenkinsdeploy.sh | https://dash-customer-success.plotly.host/jenkins-test/   |
