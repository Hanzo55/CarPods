component extends = "framework.one" {

  this.name = "CarPods";
  this.triggerDataMember = true; // required, otherwise errors by /views/main/default

  variables.framework = {

    reloadApplicationOnEveryRequest = 'true',
    generateSES = 'true',
    home = 'main',

  };

}