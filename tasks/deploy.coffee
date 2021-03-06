module.exports = (grunt) ->
  web3 = require('web3')
  readYaml = require('read-yaml');

  grunt.registerTask "deploy_contracts", "deploy code", (env_)  =>
    env = env_ || "development"
    contractFiles = grunt.file.expand(grunt.config.get("deploy.contracts"));
    destFile = grunt.config.get("deploy.dest");

    Embark = require('embark-framework')
    Embark.Deploy.deployContracts(env, contractFiles, destFile)

