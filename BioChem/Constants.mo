within BioChem;

package Constants "Package with mathematical constants and constants of nature"
  extends BioChem.Icons.Library;
  constant Real e = Modelica.Math.exp(1.0) "The mathematical constant e";
  constant Real inf = 1e+060 "Biggest Real number such that inf and -inf are representable on the machine";
  constant Real INF = inf "Infinite";
  constant Real pi = 2 * Modelica.Math.asin(1.0) "The mathematical constant Pi";
  annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART constantsTag -->
    <body>
    This package provides frequently needed mathematical constants for the SBML import and export.
    </body>
    <!--WSMINSERTIONTAGEND constantsTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Polygon(visible = true, origin = {14.3, 18.8682}, fillColor = {26, 118, 164}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-80.0, -6.372}, {-80.0, -6.372}, {-76.12000000000001, -6.372}, {-76.12000000000001, -6.372}, {-60.75, 16.378}, {-9.640000000000001, 16.378}, {43.88, 16.378}, {43.88, 16.378}, {43.88, 32.798}, {43.88, 32.798}, {-11.12, 32.798}, {-66.12000000000001, 32.798}}, smooth = Smooth.Bezier), Polygon(visible = true, origin = {14.3, 18.8682}, lineColor = {128, 128, 128}, fillColor = {26, 118, 164}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{16.84, 26.921}, {16.84, -51.493}, {33.13, -53.079}, {41.24, -38.779}, {41.24, -38.779}, {45.7, -38.779}, {45.7, -38.779}, {33.13, -75.54900000000001}, {6.87, -75.54900000000001}, {0.0, -43.079}, {5.157, 26.921}, {5.157, 26.921}, {16.84, 26.921}}, smooth = Smooth.Bezier), Polygon(visible = true, origin = {14.3, 18.8682}, fillColor = {26, 118, 164}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-38.493, 26.921}, {-44.229, -29.502}, {-70.0, -66.26900000000001}, {-52.476, -76.92100000000001}, {-33.577, -66.26900000000001}, {-28.493, 26.921}, {-28.493, 26.921}, {-38.493, 26.921}}, smooth = Smooth.Bezier)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end Constants;