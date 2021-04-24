within BioChem.Icons.Interfaces;

package Compartments "Properties for compartments"
  extends BioChem.Icons.Library;
  annotation(
    Documentation(info = "<html>
<h1>Compartments</h1>

 <p>
 The partial models in this package collect some basic properties of compartments, such as volume and temperature. These partial models are extended by models in
<a href=\"Modelica://BioChem.Compartments\">BioChem.Compartments</a> , and the compartment properties can be accessed by all substances in the compartment.
 </p>
<br>
<img src=\"modelica://BioChem/Resources/Images/InterfaceCompartments.png\" >
<br>

 </html>", revisions = ""),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Compartments;
