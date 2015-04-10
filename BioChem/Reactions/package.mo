within BioChem;

package Reactions "Package with commonly used reactions"
  extends BioChem.Icons.Library;
  annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART reactionsTag -->
    <body>
    This package contains reaction models. Each reaction is represented by an arrow, and substances are connected to the arrowheads. The reactions in this package accept one to three reactants and products, and some reactions also need an activator/inhibitor/modifier.<br><br>
 Reactions can take place between two compartments. If the reaction has more than one substrate or product, all substrates need to be located in one compartment, and all products also need to be in one compartment.<h4>See also</h4>
     <ul><li><a href=\"Modelica://BioChem.Compartments\">Compartments</a></li><li><a href=\"Modelica://BioChem.Substances\">Subtances</a></li></ul>
    </body>
    <!--WSMINSERTIONTAGEND reactionsTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Text(visible = true, origin = {-52, 0}, textColor = {26, 118, 164}, extent = {{-25, -50}, {25, 50}}, textString = "A", fontName = "Arial"), Text(visible = true, origin = {55, 0}, textColor = {26, 118, 164}, extent = {{-25, -50}, {25, 50}}, textString = "B", fontName = "Arial"), Line(visible = true, origin = {9.69, 18.07}, points = {{-36.148, -17.25}, {13.287, -17.25}}, color = {26, 118, 164}, thickness = 4, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 25)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end Reactions;