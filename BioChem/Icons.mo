within BioChem;

package Icons "Package containing icons"
  extends BioChem.Icons.Library;

  partial package Library "Icon for libraries"
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART libraryTag -->
    <body>
    An icon used for library packages.
    </body>
    <!--WSMINSERTIONTAGEND libraryTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Rectangle(visible = true, lineColor = {208, 208, 208}, fillColor = {240, 240, 240}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -100}, {100, 100}}, radius = 25)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Library;

  partial model Example "Icon for example packages"
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART exampleTag -->
    <body>
    An icon used for examples.
    </body>
    <!--WSMINSERTIONTAGEND exampleTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Rectangle(visible = true, lineColor = {208, 208, 208}, fillColor = {240, 240, 240}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -100}, {100, 100}}, radius = 25), Text(visible = true, origin = {12, 20.833}, textColor = {26, 118, 164}, extent = {{-102, -70.833}, {78, 29.167}}, textString = "Ex", fontName = "Arial")}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Example;

  partial model Textual "Icon for textual models"
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART textualTag -->
    <body>
    An icon used for textual models.
    </body>
    <!--WSMINSERTIONTAGEND textualTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Rectangle(visible = true, lineColor = {208, 208, 208}, fillColor = {240, 240, 240}, fillPattern = FillPattern.HorizontalCylinder, extent = {{-100, -60}, {100, 60}}, radius = 25), Text(visible = true, textColor = {26, 118, 164}, extent = {{-90, -35}, {90, 35}}, textString = "Text", fontName = "Arial")}), Diagram(coordinateSystem(extent = {{-148.5, -105.0}, {148.5, 105.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end Textual;

  model Function "Icon for functions"
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART functionTag -->
    <body>
    An icon used for functions.
    </body>
    <!--WSMINSERTIONTAGEND functionTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Text(visible = true, extent = {{-140, 102}, {136, 162}}, textString = "%name"), Ellipse(visible = true, lineColor = {108, 88, 49}, fillColor = {145, 196, 224}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, lineThickness = 4, extent = {{-100, -100}, {100, 100}}), Text(visible = true, textColor = {20, 104, 163}, extent = {{-90, -90}, {90, 90}}, textString = "f")}), Diagram(coordinateSystem(extent = {{-148.5, -105}, {148.5, 105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
  end Function;
  annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Text(visible = true, textColor = {26, 118, 164}, extent = {{-90, -35}, {90, 35}}, textString = "Icons", fontName = "Arial")}), Documentation(info = "<html><!--WSMINSERTIONTAGSTART iconsTag -->
    <body>
    This package contains a collection of icons that are used in the library.
    </body>
    <!--WSMINSERTIONTAGEND iconsTag --></html>
 ", revisions = ""));
end Icons;