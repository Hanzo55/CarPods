<cfset car = rc.car />

HI!

I see "Car"
<cfdump var=#car# label="Bean:Car">

<hr>

Let's read the accessors:<br/>

<cfoutput>
<ul>
  <li><strong>Make:</strong> #car.getMake()#
  <li><strong>Model:</strong> #car.getModel()#
</ul>
</cfoutput>

<hr>

Let's read the properties, which should implicitly call the accessors (and not throw an error!):<br/>

<cfoutput>
<ul>
  <li><strong>Make:</strong> #car.make#
  <li><strong>Model:</strong> #car.model#
</ul>
</cfoutput>

<hr>

Let's update them:

<form action="<cfoutput>#buildUrl('main.save')#</cfoutput>" method="POST">
  Make: <input type="text" name="make"><br/>
  Model: <input type="text" name="model"><br/>
  <input type="submit" />
</form>