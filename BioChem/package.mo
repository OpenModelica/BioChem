package BioChem
  extends Icons.Library;

  annotation(
    preferedView = "info",
    Documentation(info = "<html><head></head><body><h1>About the BioChem Library</h1>
<p>
 BioChem is a package for biochemical modeling and simulation with Modelica.
</p>

 <h2>Users Guide</h2>
<p>
Users Guide discusses some aspects of the <em>BioChem</em> Library, including a Getting Started chapter</p><p>
<br>
</p>



 </body></html>", revisions = "<html><head></head><body><h2><br></h2><ul>
</ul>
 </body></html>"),
    uses(Modelica(version = "4.0.0")),
    version = "1.1.0",
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Line(origin = {3.55271e-15, 3.76}, points = {{-50, -60}, {-50, -27.52}, {10, -27.52}}, smooth = Smooth.Bezier), Line(origin = {-1.135, 4.09474}, points = {{-48.865, 10}, {-48.865, -27.61}, {11.135, -27.61}}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 30, smooth = Smooth.Bezier), Ellipse(origin = {30.4112, -23.4648}, lineColor = {0, 85, 0}, fillColor = {0, 170, 0}, fillPattern = FillPattern.Sphere, extent = {{-20.4112, -20}, {20.4112, 20}}), Ellipse(origin = {6.28735, -0.665395}, lineColor = {161, 107, 0}, fillColor = {250, 167, 0}, fillPattern = FillPattern.Sphere, extent = {{-76.2873, -79.3346}, {-35.4736, -39.3346}}), Ellipse(origin = {4.98569, -1.03187}, lineColor = {117, 0, 0}, fillColor = {170, 0, 0}, fillPattern = FillPattern.Sphere, extent = {{-75.8122, -6.13331}, {-34.9857, 33.8667}})}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end BioChem;
