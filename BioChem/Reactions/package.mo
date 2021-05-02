within BioChem;

package Reactions "Reaction edges"
  extends BioChem.Icons.Library;














  annotation(
    Documentation(info = "<html>
<h1>Reactions</h1>
 <p>

 This package contains reaction models. Each reaction is represented
 by an arrow, and substances are connected to the arrowheads.
 The reactions in this package accept one to three reactants and products,
 and some reactions also need an activator/inhibitor/modifier.
 Substances are connected to the arrowheads, and activators/inhibitors/modifiers are
 connected to the top or bottom of the circle containing a plus, a minus or the letter M.
 <br><br>
 Reactions can take place between two compartments. If the reaction has more than one substrates or products,
 all substrates need to be located in one compartment, and all products also need to be in one compartment.
 </p>
 </html>", revisions = ""),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Text(origin = {15.9037, -7.71383}, fillPattern = FillPattern.Solid, extent = {{-85.9037, -92.2862}, {-50, 57.7138}}, textString = "A", fontName = "Arial"), Text(origin = {-10, -7.71383}, fillPattern = FillPattern.Solid, extent = {{25, -92.2862}, {60, 57.7138}}, textString = "B", fontName = "Arial"), Line(origin = {-0.31, -6.93}, points = {{-31.5, -17.25}, {10.31, -17.25}}, thickness = 3, arrow = {Arrow.None, Arrow.Open}, arrowSize = 20)}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Reactions;
