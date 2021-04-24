within BioChem;

package Compartments "Different types of compartments used in the package"
  extends Icons.Compartments;

  annotation(
    Documentation(info = "<html>
<h1>Compartments</h1>


 <p>
This package contains compartment models. All models using the BioChem package must inherit a compartment.
In order to be able to control the environment of the reaction during a simulation a chemical reaction must take place in a restricted screened-off container. Within this container the basic physical properties, e.g. volume and temperature, are the same for all reactions that take place and all substances contained in that container. In
<a href=\"Modelica://BioChem.Compartments\">BioChem.Compartments</a>

this is solved using the Modelica inner-outer construct, i.e., providing a \"semiglobal\" variable for a whole compartment declared using the inner prefix. Thus, all substances in a compartment can automatically refer to the compartment volume.
The classes in the package so far are illustrated in
 <a href=\"#fig1\">Figure 1</a>.
 The difference between the both compartments are the icons. The reason for having both in the library is that it is needed for the SBML import and export. To be able to export a model to SBML it needs to have one main compartment, and only one.
</p>

<a name=\"fig1\"></a>
<img src=\"modelica://BioChem/Resources/Images/Compartment.png\" alt=\"Fig1: Compartments\">
 </html>", revisions = ""),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Rectangle(origin = {5, -7.55952}, lineColor = {0, 85, 0}, fillColor = {199, 199, 149}, fillPattern = FillPattern.Solid, lineThickness = 10, extent = {{-70, -70}, {40, 30}}, radius = 20)}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Compartments;
