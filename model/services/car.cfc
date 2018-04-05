// model/services/car
component accessors = true {
  
  function init( beanFactory ) {

    variables.beanFactory = beanFactory;

    variables.currentMake = 'Pontiac';
    variables.currentModel = 'Firebird';

    return this;

  }

  function get( id ) {

    // we're ignoring id, don't @ me.

    var car = variables.beanFactory.getBean('carBean');

    car.setMake(variables.currentMake);
    car.setModel(variables.currentModel);

    return car;

  }

  function save( car ) {

    // car is still a bean at this point!

    // these lines should be no different than /views/main/default, lines 25-26!
    variables.currentMake = car.make;
    variables.currentModel = car.model;

    // if you get this far, you got further than I did!

  }

}