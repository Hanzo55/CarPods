// controllers/main
component accessors = true {

  property carservice;

  function init( fw ) {

    variables.fw = fw;

  }

  function default( rc ) {

    rc.car = variables.carservice.get( 1 );

  }

  function save( rc ) {

    // load in the defaults. rc.car should be a bean!
    rc.car = variables.carservice.get( 1 );

    // populate the bean with new form vars
    variables.fw.populate( cfc = rc.car, trim = true );

    // save the bean...save the world.
    variables.carservice.save( rc.car );

    // back to home
    variables.fw.redirect('main.default');

  }

}