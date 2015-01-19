within BioChem;

package Types "Package with BioChem specific types"
  extends BioChem.Icons.Library;
  type StateVariable = enumeration(c "Use concentration as state", n "Use amount of substance as state") "Enumeration defining which variable to use as state";
  annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART typesTag -->
    <body>
    This package contains types used in BioChem components.
    </body>
    <!--WSMINSERTIONTAGEND typesTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Text(visible = true, textColor = {26, 118, 164}, extent = {{-90, -35}, {90, 35}}, textString = "Types", fontName = "Arial")}), Diagram(coordinateSystem(extent = {{-148.5, -105.0}, {148.5, 105.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5})));
end Types;