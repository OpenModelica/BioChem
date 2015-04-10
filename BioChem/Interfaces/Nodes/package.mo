within BioChem.Interfaces;

package Nodes "Connector interfaces used in the BioChem library"
  extends BioChem.Icons.Library;

  connector SubstanceConnector "Connector between substances and reactions"
    BioChem.Units.Concentration c;
    flow BioChem.Units.MolarFlowRate r;
    output BioChem.Units.Volume V;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART substanceConnectorTag -->
    <body>
    A connector between substances and reactions. The connector has the volume variable defined as output, and can only be connected to the other <a href=\"Modelica://BioChem.Interfaces.Nodes\">Nodes</a>.
    </body>
    <!--WSMINSERTIONTAGEND substanceConnectorTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Ellipse(visible = true, lineColor = {26, 118, 164}, fillColor = {0, 170, 255}, extent = {{-100, -100}, {100, 100}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Ellipse(visible = true, lineColor = {26, 118, 164}, fillColor = {0, 85, 127}, extent = {{-20, -20}, {20, 20}}), Text(visible = true, extent = {{-160, 40}, {40, 80}}, textString = "%name", fontName = "Arial")}));
  end SubstanceConnector;

  connector SubstrateConnector "Connector between substances and reactions (substrate side of reaction)"
    BioChem.Units.Concentration c;
    flow BioChem.Units.MolarFlowRate r;
    input BioChem.Units.Volume V;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART substrateConnectorTag -->
    <body>
    A connector between substances and reactions, on the substrate side of a reaction. The connector has the volume variable defined as input, and should only be connected to a <a href=\"Modelica://BioChem.Interfaces.Nodes.SubstanceConnector\">SubstanceConnector</a> (if they are in the same level of the hirearchy).
    </body>
    <!--WSMINSERTIONTAGEND substrateConnectorTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Ellipse(visible = true, lineColor = {85, 153, 193}, fillColor = {85, 153, 193}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Ellipse(visible = true, lineColor = {26, 118, 164}, fillColor = {26, 118, 164}, fillPattern = FillPattern.Solid, extent = {{-20, -20}, {20, 20}}), Text(visible = true, extent = {{-160, 40}, {40, 80}}, textString = "%name", fontName = "Arial")}));
  end SubstrateConnector;

  connector ProductConnector "Connector between substances and reactions (product side of reaction)"
    BioChem.Units.Concentration c;
    flow BioChem.Units.MolarFlowRate r;
    input BioChem.Units.Volume V;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART productConnectorTag -->
    <body>
    A connector between substances and reactions, on the product side of a reaction. The connector has the volume variable defined as input, and should only be connected to a <a href=\"Modelica://BioChem.Interfaces.Nodes.SubstanceConnector\">SubstanceConnector</a> (if they are in the same level of the hirearchy).
    </body>
    <!--WSMINSERTIONTAGEND productConnectorTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Ellipse(visible = true, lineColor = {26, 118, 164}, fillColor = {232, 243, 255}, fillPattern = FillPattern.Solid, extent = {{-100, -100}, {100, 100}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Ellipse(visible = true, lineColor = {26, 118, 164}, fillColor = {232, 243, 255}, fillPattern = FillPattern.Solid, extent = {{-20, -20}, {20, 20}}), Text(visible = true, extent = {{-160, 40}, {40, 80}}, textString = "%name", fontName = "Arial")}));
  end ProductConnector;

  connector ActivatorConnector "Connector between activators and reactions"
    BioChem.Units.Concentration c;
    flow BioChem.Units.MolarFlowRate r;
    input BioChem.Units.Volume V;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART activatorConnectorTag -->
    <body>
    A connector used in reactions to interface an activating modifier (a substance not consumed or produced by the reaction). The connector has the volume variable defined as input, and should only be connected to a <a href=\"Modelica://BioChem.Interfaces.Nodes.SubstanceConnector\">SubstanceConnector</a> (if they are in the same level of the hirearchy).
    </body>
    <!--WSMINSERTIONTAGEND activatorConnectorTag --></html>", revisions = ""), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Ellipse(visible = true, lineColor = {26, 118, 164}, fillColor = {0, 128, 0}, fillPattern = FillPattern.Solid, lineThickness = 0, extent = {{-20, -20}, {20, 20}}), Polygon(visible = true, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-2.923, 16}, {-2.923, 2.923}, {-16, 2.923}, {-16, -2.923}, {-2.923, -2.923}, {-2.923, -16}, {2.923, -16}, {2.923, -2.923}, {16, -2.923}, {16, 2.923}, {2.923, 2.923}, {2.923, 16}}), Text(visible = true, extent = {{-160, 40}, {40, 80}}, textString = "%name", fontName = "Arial")}), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5}), graphics = {Ellipse(visible = true, lineColor = {26, 118, 164}, fillColor = {91, 167, 88}, fillPattern = FillPattern.Solid, lineThickness = 0, extent = {{-100, -100}, {100, 100}}), Polygon(visible = true, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-15, 80}, {-15, 15}, {-80, 15}, {-80, -15}, {-15, -15}, {-15, -80}, {15, -80}, {15, -15}, {80, -15}, {80, 15}, {15, 15}, {15, 80}})}));
  end ActivatorConnector;

  connector InhibitorConnector "Connector between inhibitors and reactions"
    BioChem.Units.Concentration c;
    flow BioChem.Units.MolarFlowRate r;
    input BioChem.Units.Volume V;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART inhibitorConnectorTag -->
    <body>
    A connector used in reactions to interface an inhibiting modifier (a substance not consumed or produced by the reaction). The connector has the volume variable defined as input, and should only be connected to a <a href=\"Modelica://BioChem.Interfaces.Nodes.SubstanceConnector\">SubstanceConnector</a> (if they are in the same level of the hirearchy).
    </body>
    <!--WSMINSERTIONTAGEND inhibitorConnectorTag --></html>", revisions = ""), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Ellipse(visible = true, lineColor = {26, 118, 164}, fillColor = {170, 0, 0}, fillPattern = FillPattern.Solid, lineThickness = 0, extent = {{-20, -20}, {20, 20}}), Polygon(visible = true, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-16, 2.923}, {-16, -2.923}, {16, -2.923}, {16, 2.923}}), Text(visible = true, extent = {{-160, 40}, {40, 80}}, textString = "%name", fontName = "Arial")}), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {5, 5}), graphics = {Ellipse(visible = true, lineColor = {26, 118, 164}, fillColor = {161, 35, 41}, fillPattern = FillPattern.Solid, lineThickness = 0, extent = {{-100, -100}, {100, 100}}), Polygon(visible = true, fillColor = {255, 255, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, points = {{-80, 15}, {-80, -15}, {80, -15}, {80, 15}})}));
  end InhibitorConnector;

  connector ModifierConnector "Connector between general modifiers and reactions"
    BioChem.Units.Concentration c;
    flow BioChem.Units.MolarFlowRate r;
    input BioChem.Units.Volume V;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART modifierConnectorTag -->
    <body>
    A connector used in reactions to interface a general modifier (a substance not consumed or produced by the reaction). The connector has the volume variable defined as input, and should only be connected to a <a href=\"Modelica://BioChem.Interfaces.Nodes.SubstanceConnector\">SubstanceConnector</a> (if they are in the same level of the hirearchy).
    </body>
    <!--WSMINSERTIONTAGEND modifierConnectorTag --></html>", revisions = ""), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Ellipse(visible = true, lineColor = {26, 118, 164}, fillColor = {255, 218, 54}, fillPattern = FillPattern.Solid, lineThickness = 0, extent = {{-20, -20}, {20, 20}}), Text(visible = true, extent = {{-160, 40}, {40, 80}}, textString = "%name", fontName = "Arial")}), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Ellipse(visible = true, lineColor = {26, 118, 164}, fillColor = {255, 218, 109}, fillPattern = FillPattern.Solid, lineThickness = 0, extent = {{-100, -100}, {100, 100}})}));
  end ModifierConnector;
  annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART nodesTag -->
    <body>
    This package contains connection points used in the BioChem library.<br><br>
 The reaction between two or more substances is described by the molar flow rate between the involved substances. The molar flow rate is typically expressed as a function of the concentration or amount of substance. Therefore the interface or nodes contain not only the molar flow rate and concentration, but also the volume, in order to make it possible to calculate the amount of substance if needed.<br><br>
 The interfaces in the library are all identical except for the graphics and the volume variable V. The different graphics are used to indicate if a respective substance should be seen as a substrate, product, modifier, etc., in a reaction. The variable V is an output variable in the <a href=\"Modelica://BioChem.Interfaces.Nodes.SubstanceConnector\">SubstanceConnector</a> and an input variable in all the other nodes. Thus, on the same hierarchy level, the <a href=\"Modelica://BioChem.Interfaces.Nodes.SubstanceConnector\">SubstanceConnector</a> may only be connected to the other nodes, and the other nodes may only connect to the <a href=\"Modelica://BioChem.Interfaces.Nodes.SubstanceConnector\">SubstanceConnector</a>. <br><br>
 The variables available in each connection point are described below.<h4>Variables in Nodes</h4>
     <table><tr><td>c</td><td width=\"20\"></td><td width=\"20\">:</td><td>Concentration [mol]</td></tr><tr><td>r</td><td width=\"20\"></td><td width=\"20\">:</td><td>Reaction rate [mol/s]</td></tr><tr><td>V</td><td width=\"20\"></td><td width=\"20\">:</td><td>Volume [l]</td></tr></table>
    </body>
    <!--WSMINSERTIONTAGEND nodesTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end Nodes;