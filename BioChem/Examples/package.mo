within BioChem;

package Examples "Some examples of BioChem models"
  extends Modelica.Icons.ExamplesPackage;

  annotation(
    Documentation(info = "<html>
<h1>Examples</h1>
 <p>
 This package contains several examples of pathways. Including basic examples as an asymmetric reaction with Michaelis-Menten kinetics to more advanced multi compartment models.
 </p>
 </html>", revisions = ""),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Ellipse(lineColor = {0, 0, 127}, fillColor = {85, 85, 255}, fillPattern = FillPattern.Sphere, extent = {{25, -85}, {50, -60}}), Ellipse(lineColor = {89, 0, 0}, fillColor = {199, 0, 0}, fillPattern = FillPattern.Sphere, extent = {{-75, -85}, {-50, -60}}), Ellipse(origin = {-1.77636e-15, -8.81}, lineColor = {0, 85, 0}, fillColor = {0, 170, 0}, fillPattern = FillPattern.Sphere, extent = {{-25, -43.69}, {3.55271e-15, -18.69}}), Ellipse(origin = {-1.77636e-15, -20}, lineColor = {79, 79, 0}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Sphere, extent = {{-25, 30}, {0, 55}}), Line(origin = {0, -8.50446}, points = {{-12.65, 18.5045}, {-12.65, -18.69}}, arrow = {Arrow.Open, Arrow.Open}, arrowSize = 10), Line(points = {{0, -40}, {20, -40}, {34.02, -60}}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 10, smooth = Smooth.Bezier), Line(points = {{-50, -72.78}, {25, -72.78}}, arrow = {Arrow.Open, Arrow.Open}, arrowSize = 10), Line(points = {{-24.8834, -40}, {-45.6721, -40}, {-60, -60}}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 10, smooth = Smooth.Bezier)}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Examples;
