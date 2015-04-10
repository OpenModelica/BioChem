within BioChem;

package Substances "Package with substance nodes"
  extends BioChem.Icons.Library;

  model AmbientSubstance "Substance used as a reservoir in reactions"
    BioChem.Interfaces.Nodes.SubstanceConnector n1 annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
  protected
    BioChem.Units.Concentration c "Current concentration of substance (mol/l)";
    BioChem.Units.MolarFlowRate rNet "Net flow rate of substance into the node";
    BioChem.Units.AmountOfSubstance n "Number of moles of substance in pool (mol)";
    outer BioChem.Units.Volume V "Compartment volume";
  equation
    rNet = n1.r;
    c = n1.c;
    V = n1.V;
    c * V = n;
    der(c * V) = 0;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART ambientSubstanceTag -->
    <body>
    Substance used as a reservoir in reactions. Its concentration or amount should never be used in any equation or reaction.<br><br>
 Corresponds to an empty list of reactants or products in an SBML reaction.
    </body>
    <!--WSMINSERTIONTAGEND ambientSubstanceTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Text(visible = true, origin = {0, 50}, extent = {{-100, -150}, {100, -100}}, textString = "%name", fontName = "Arial"), Line(visible = true, points = {{-50, -50}, {50, 50}}, thickness = 10), Ellipse(visible = true, fillColor = {255, 255, 255}, extent = {{-50, -50}, {50, 50}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end AmbientSubstance;

  model BoundarySubstance "Substance with a concentration not determined by reactions, but by events"
    import BioChem.Types.StateVariable;
    input BioChem.Units.Concentration c(stateSelect = if use == BioChem.Types.StateVariable.c then StateSelect.prefer else StateSelect.never) "Current concentration of substance (mol/l)" annotation(Dialog(group = "Initialization", showStartAttribute = true));
    BioChem.Units.MolarFlowRate rNet "Net flow rate of substance into the node";
    BioChem.Units.AmountOfSubstance n(stateSelect = if use == BioChem.Types.StateVariable.c then StateSelect.never else StateSelect.prefer) "Number of moles of substance in pool (mol)" annotation(Dialog(group = "Initialization", showStartAttribute = true));
    BioChem.Interfaces.Nodes.SubstanceConnector n1 annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    parameter StateVariable use = StateVariable.c "Specifies whether to use the initial value of variable c or n. The initial values are mutually exclusive." annotation(Dialog(group = "Variable selection"));
  protected
    outer BioChem.Units.Volume V "Compartment volume";
  equation
    rNet = n1.r;
    c = n1.c;
    V = n1.V;
    c * V = n;
    der(c * V) = 0;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART boundarySubstanceTag -->
    <body>
    Substance with a concentration not determined by reactions, but by events. The concentration or amount of substance is changed by specifying when-equations in the \"TextView\" of the compartment.<h4>Examples</h4>
     Set the concentration to 3 when the time passes 2:<br><br> when time>2 then<br>reinit(<i>nameOfSubstance</i>,3);<br>end when;
    </body>
    <!--WSMINSERTIONTAGEND boundarySubstanceTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Text(visible = true, origin = {0, 50}, extent = {{-100, -150}, {100, -100}}, textString = "%name", fontName = "Arial"), Ellipse(visible = true, lineColor = {161, 35, 41}, fillColor = {254, 161, 164}, fillPattern = FillPattern.Sphere, extent = {{-50, -50}, {50, 50}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end BoundarySubstance;

  model SignalSubstance "Substance with a concentration not determined by reactions, but by external equations"
    import BioChem.Types.StateVariable;
    input BioChem.Units.Concentration c(stateSelect = if use == BioChem.Types.StateVariable.c then StateSelect.prefer else StateSelect.never) "Current concentration of substance (mol/l)" annotation(Dialog(group = "Variables"));
    BioChem.Units.MolarFlowRate rNet "Net flow rate of substance into the node";
    BioChem.Units.AmountOfSubstance n(stateSelect = if use == BioChem.Types.StateVariable.c then StateSelect.never else StateSelect.prefer) "Number of moles of substance in pool (mol)" annotation(Dialog(group = "Variables"));
    BioChem.Interfaces.Nodes.SubstanceConnector n1 annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    parameter StateVariable use = StateVariable.c "Specifies whether to use the initial value of variable c or n. The initial values are mutually exclusive." annotation(Dialog(group = "Variable selection"));
  protected
    outer BioChem.Units.Volume V "Compartment volume";
  equation
    rNet = n1.r;
    c = n1.c;
    V = n1.V;
    c * V = n;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART signalSubstanceTag -->
    <body>
    Substance with a concentration that is not determined by reactions but by an external equation. The equation should be specified in the \"Text View\" of the compartment model.<br><br>
 The SignalSubstance corresponds to an SBML species changed by SBML rules.
    </body>
    <!--WSMINSERTIONTAGEND signalSubstanceTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Text(visible = true, origin = {0, 50}, extent = {{-100, -150}, {100, -100}}, textString = "%name", fontName = "Arial"), Ellipse(visible = true, lineColor = {42, 95, 163}, fillColor = {110, 176, 255}, fillPattern = FillPattern.Sphere, extent = {{-50, -50}, {50, 50}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end SignalSubstance;

  model Substance "Standard substance with concentration determined by reactions"
    import BioChem.Types.StateVariable;
    BioChem.Units.Concentration c(stateSelect = if use == BioChem.Types.StateVariable.c then StateSelect.prefer else StateSelect.never) "Current concentration of substance (mol/l)" annotation(Dialog(group = "Initialization", showStartAttribute = true));
    BioChem.Units.MolarFlowRate rNet "Net flow rate of substance into the node";
    BioChem.Units.AmountOfSubstance n(stateSelect = if use == BioChem.Types.StateVariable.c then StateSelect.never else StateSelect.prefer) "Number of moles of substance in pool (mol)" annotation(Dialog(group = "Initialization", showStartAttribute = true));
    BioChem.Interfaces.Nodes.SubstanceConnector n1 annotation(Placement(visible = true, transformation(origin = {0, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {0, 0}, extent = {{-16, -16}, {16, 16}}, rotation = 0)));
    parameter StateVariable use = StateVariable.c "Specifies whether to use the initial value of variable c or n. The initial values are mutually exclusive." annotation(Dialog(group = "Variable selection"));
  protected
    outer BioChem.Units.Volume V "Compartment volume";
  equation
    rNet = n1.r;
    c = n1.c;
    V = n1.V;
    c * V = n;
    der(c * V) = rNet;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART substanceTag -->
    <body>
    A substance with a concentration determined by the reactions it is connected to. This is the standard component used to represent substances in a pathway.
    </body>
    <!--WSMINSERTIONTAGEND substanceTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Text(visible = true, origin = {0, 50}, extent = {{-100, -150}, {100, -100}}, textString = "%name", fontName = "Arial"), Ellipse(visible = true, lineColor = {50, 128, 50}, fillColor = {146, 227, 144}, fillPattern = FillPattern.Sphere, extent = {{-50, -50}, {50, 50}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Substance;
  annotation(__Wolfram(itemFlippingEnabled = true), Documentation(info = "<html><!--WSMINSERTIONTAGSTART substancesTag -->
    <body>
    This package contains different types of nodes used to represent substances and signals in a biochemical pathway. The nodes are connected to reactions through connectors placed on the rim of the circle representing the substance.<h4>See also</h4>
     <ul><li><a href=\"Modelica://BioChem.Compartments\">Compartments</a></li><li><a href=\"Modelica://BioChem.Reactions\">Reactions</a></li></ul>
    </body>
    <!--WSMINSERTIONTAGEND substancesTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Ellipse(visible = true, origin = {-30.0, -20.0}, lineColor = {26, 118, 164}, fillColor = {26, 118, 164}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, lineThickness = 0, extent = {{20.0, -20.0}, {-20.0, 20.0}}), Ellipse(visible = true, origin = {30.0, -20.0}, lineColor = {100, 100, 0}, fillColor = {0, 74, 109}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, lineThickness = 0, extent = {{20.0, -20.0}, {-20.0, 20.0}}), Ellipse(visible = true, origin = {0.0, 30.0}, lineColor = {128, 128, 128}, fillColor = {0, 170, 255}, pattern = LinePattern.None, fillPattern = FillPattern.Solid, lineThickness = 0, extent = {{20.0, -20.0}, {-20.0, 20.0}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end Substances;