within BioChem.Icons.Substances;

partial package PackageIcon "An icon for a package of substances"
  extends BioChem.Icons.Library; 
annotation(
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Ellipse(origin = {-10, -50}, lineColor = {0, 56, 0}, fillColor = {0, 85, 0}, fillPattern = FillPattern.Sphere, extent = {{-60, -20}, {-20, 20}}), Ellipse(origin = {38, -10}, lineColor = {100, 100, 0}, fillColor = {255, 255, 0}, fillPattern = FillPattern.Sphere, extent = {{-28, -60}, {12, -20}}), Ellipse(origin = {-30.0032, -2.75056}, lineColor = {0, 0, 71}, fillColor = {0, 0, 127}, fillPattern = FillPattern.Sphere, extent = {{0.0032, -13.4697}, {40, 26.5303}})}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
  Documentation(info = "<html><head></head><body><div><font size=\"5\">This Icon replaces Biocehm.Icon.Package in Biocehm version 1.0.3 and thus it is not backword compatible</font></div></body></html>"));
end PackageIcon;
