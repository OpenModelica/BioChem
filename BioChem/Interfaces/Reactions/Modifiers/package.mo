within BioChem.Interfaces.Reactions;

package Modifiers "Partial models of modifiers to reactions"
  extends BioChem.Icons.Library;

  model Activator "Basics for an activator in a reaction edge"
    BioChem.Interfaces.Nodes.ActivatorConnector a1 annotation(Placement(visible = true, transformation(origin = {0.0, 90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {0.0, 100.0}, extent = {{-17.5, -17.5}, {17.5, 17.5}}, rotation = 0)));
  equation
    a1.r = 0;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART activatorTag -->
    <body>
    Basics for an <a href=\"Modelica://BioChem.Interfaces.Nodes.ActivatorConnector\">activator</a> in a reaction edge
    </body>
    <!--WSMINSERTIONTAGEND activatorTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{0.0, 80.0}, {0.0, 6.25}}, color = {0, 85, 127}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 25)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Activator;

  partial model ActivatorBackward "Basics for a backward activator in a reaction edge"
    BioChem.Interfaces.Nodes.ActivatorConnector aB1 annotation(Placement(visible = true, transformation(origin = {-0.0, -90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {0.0, -100.0}, extent = {{-17.5, -17.5}, {17.5, 17.5}}, rotation = 0)));
  equation
    aB1.r = 0;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART activatorBackwardTag -->
    <body>
    Basics for a backward <a href=\"Modelica://BioChem.Interfaces.Nodes.ActivatorConnector\">activator</a> in a reaction edge
    </body>
    <!--WSMINSERTIONTAGEND activatorBackwardTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{0.0, -80.0}, {0.0, -6.25}}, color = {0, 85, 127}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 25)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end ActivatorBackward;

  partial model ActivatorForward "Basics for a forward activator in a reaction edge"
    BioChem.Interfaces.Nodes.ActivatorConnector aF1 annotation(Placement(visible = true, transformation(origin = {0.0, 90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {0.0, 100.0}, extent = {{-17.5, -17.5}, {17.5, 17.5}}, rotation = 0)));
  equation
    aF1.r = 0;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART activatorForwardTag -->
    <body>
    Basics for a forward <a href=\"Modelica://BioChem.Interfaces.Nodes.ActivatorConnector\">activator</a> in a reaction edge
    </body>
    <!--WSMINSERTIONTAGEND activatorForwardTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{0.0, 80.0}, {0.0, 6.25}}, color = {0, 85, 127}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 25)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end ActivatorForward;

  partial model LeftActivatorBackward "Basics for a backward activator in a reaction edge"
    BioChem.Interfaces.Nodes.ActivatorConnector aB1 annotation(Placement(visible = true, transformation(origin = {-50.0, -90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {-50.0, -100.0}, extent = {{-17.5, -17.5}, {17.5, 17.5}}, rotation = 0)));
  equation
    aB1.r = 0;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART leftActivatorBackwardTag -->
    <body>
    Basics for a backward <a href=\"Modelica://BioChem.Interfaces.Nodes.ActivatorConnector\">activator</a> in a reaction edge
    </body>
    <!--WSMINSERTIONTAGEND leftActivatorBackwardTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{0.0, -80.0}, {0.0, -6.25}}, color = {0, 85, 127}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 25)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end LeftActivatorBackward;

  partial model LeftActivatorForward "Basics for a forward activator in a reaction edge"
    BioChem.Interfaces.Nodes.ActivatorConnector aF1 annotation(Placement(visible = true, transformation(origin = {-50.0, 90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {-50.0, 100.0}, extent = {{-17.5, -17.5}, {17.5, 17.5}}, rotation = 0)));
  equation
    aF1.r = 0;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART leftActivatorForwardTag -->
    <body>
    Basics for a forward <a href=\"Modelica://BioChem.Interfaces.Nodes.ActivatorConnector\">activator</a> in a reaction edge
    </body>
    <!--WSMINSERTIONTAGEND leftActivatorForwardTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, origin = {0.0, -1.25}, points = {{0.0, 81.25}, {0.0, 6.25}}, color = {0, 85, 127}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 25)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end LeftActivatorForward;

  partial model RightActivatorBackward "Basics for a backward activator in a reaction edge"
    BioChem.Interfaces.Nodes.ActivatorConnector aB1 annotation(Placement(visible = true, transformation(origin = {50.0, -90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {50.0, -100.0}, extent = {{-17.5, -17.5}, {17.5, 17.5}}, rotation = 0)));
  equation
    aB1.r = 0;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART rightActivatorBackwardTag -->
    <body>
    Basics for a backward <a href=\"Modelica://BioChem.Interfaces.Nodes.ActivatorConnector\">activator</a> in a reaction edge
    </body>
    <!--WSMINSERTIONTAGEND rightActivatorBackwardTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{0.0, -80.0}, {0.0, -6.25}}, color = {0, 85, 127}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 25)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end RightActivatorBackward;

  partial model RightActivatorForward "Basics for a forward activator in a reaction edge"
    BioChem.Interfaces.Nodes.ActivatorConnector aF1 annotation(Placement(visible = true, transformation(origin = {50.0, 90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {50.0, 100.0}, extent = {{-17.5, -17.5}, {17.5, 17.5}}, rotation = 0)));
  equation
    aF1.r = 0;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART rightActivatorForwardTag -->
    <body>
    Basics for a forward <a href=\"Modelica://BioChem.Interfaces.Nodes.ActivatorConnector\">activator</a> in a reaction edge
    </body>
    <!--WSMINSERTIONTAGEND rightActivatorForwardTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{0.0, 80.0}, {0.0, 6.25}}, color = {0, 85, 127}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 25)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end RightActivatorForward;

  model Inhibitor "Basics for an inhibitor in a reaction edge"
    BioChem.Interfaces.Nodes.InhibitorConnector i1 annotation(Placement(visible = true, transformation(origin = {0.0, 90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {0.0, 100.0}, extent = {{-17.5, -17.5}, {17.5, 17.5}}, rotation = 0)));
  equation
    i1.r = 0;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART inhibitorTag -->
    <body>
    Basics for an <a href=\"Modelica://BioChem.Interfaces.Nodes.InhibitorConnector\">inhibitor</a> in a reaction edge
    </body>
    <!--WSMINSERTIONTAGEND inhibitorTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{0.0, 80.0}, {0.0, 6.25}}, color = {0, 85, 127}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 25)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Inhibitor;

  partial model InhibitorBackward "Basics for a backward inhibitor in a reaction edge"
    BioChem.Interfaces.Nodes.InhibitorConnector iB1 annotation(Placement(visible = true, transformation(origin = {-0.0, -90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {0.0, -100.0}, extent = {{-17.5, -17.5}, {17.5, 17.5}}, rotation = 0)));
  equation
    iB1.r = 0;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART inhibitorBackwardTag -->
    <body>
    Basics for a backward <a href=\"Modelica://BioChem.Interfaces.Nodes.InhibitorConnector\">inhibitor</a> in a reaction edge
    </body>
    <!--WSMINSERTIONTAGEND inhibitorBackwardTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{0.0, -80.0}, {0.0, -6.25}}, color = {0, 85, 127}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 25)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end InhibitorBackward;

  partial model InhibitorForward "Basics for a forward inhibitor in a reaction edge"
    BioChem.Interfaces.Nodes.InhibitorConnector iF1 annotation(Placement(visible = true, transformation(origin = {-0.0, 90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {0.0, 100.0}, extent = {{-17.5, -17.5}, {17.5, 17.5}}, rotation = 0)));
  equation
    iF1.r = 0;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART inhibitorForwardTag -->
    <body>
    Basics for a forward <a href=\"Modelica://BioChem.Interfaces.Nodes.InhibitorConnector\">inhibitor</a> in a reaction edge
    </body>
    <!--WSMINSERTIONTAGEND inhibitorForwardTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{0.0, 80.0}, {0.0, 6.25}}, color = {0, 85, 127}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 25)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end InhibitorForward;

  partial model LeftInhibitorBackward "Basics for a backward inhibitor in a reaction edge"
    BioChem.Interfaces.Nodes.InhibitorConnector iB1 annotation(Placement(visible = true, transformation(origin = {-50.0, -90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {-50.0, -100.0}, extent = {{-17.5, -17.5}, {17.5, 17.5}}, rotation = 0)));
  equation
    iB1.r = 0;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART leftInhibitorBackwardTag -->
    <body>
    Basics for a backward <a href=\"Modelica://BioChem.Interfaces.Nodes.InhibitorConnector\">inhibitor</a> in a reaction edge
    </body>
    <!--WSMINSERTIONTAGEND leftInhibitorBackwardTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{0.0, -80.0}, {0.0, -6.25}}, color = {0, 85, 127}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 25)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end LeftInhibitorBackward;

  partial model LeftInhibitorForward "Basics for a forward inhibitor in a reaction edge"
    BioChem.Interfaces.Nodes.InhibitorConnector iF1 annotation(Placement(visible = true, transformation(origin = {-50.0, 90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {-50.0, 100.0}, extent = {{-17.5, -17.5}, {17.5, 17.5}}, rotation = 0)));
  equation
    iF1.r = 0;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART leftInhibitorForwardTag -->
    <body>
    Basics for a forward <a href=\"Modelica://BioChem.Interfaces.Nodes.InhibitorConnector\">inhibitor</a> in a reaction edge
    </body>
    <!--WSMINSERTIONTAGEND leftInhibitorForwardTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{0.0, 80.0}, {0.0, 6.25}}, color = {0, 85, 127}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 25)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end LeftInhibitorForward;

  partial model RightInhibitorBackward "Basics for a backward inhibitor in a reaction edge"
    BioChem.Interfaces.Nodes.InhibitorConnector iB1 annotation(Placement(visible = true, transformation(origin = {50.0, -90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {50.0, -100.0}, extent = {{-17.5, -17.5}, {17.5, 17.5}}, rotation = 0)));
  equation
    iB1.r = 0;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART rightInhibitorBackwardTag -->
    <body>
    Basics for a backward <a href=\"Modelica://BioChem.Interfaces.Nodes.InhibitorConnector\">inhibitor</a> in a reaction edge
    </body>
    <!--WSMINSERTIONTAGEND rightInhibitorBackwardTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{0.0, -80.0}, {0.0, -6.25}}, color = {0, 85, 127}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 25)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end RightInhibitorBackward;

  partial model RightInhibitorForward "Basics for a forward inhibitor in a reaction edge"
    BioChem.Interfaces.Nodes.InhibitorConnector iF1 annotation(Placement(visible = true, transformation(origin = {50.0, 90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {50.0, 100.0}, extent = {{-17.5, -17.5}, {17.5, 17.5}}, rotation = 0)));
  equation
    iF1.r = 0;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART rightInhibitorForwardTag -->
    <body>
    Basics for a forward <a href=\"Modelica://BioChem.Interfaces.Nodes.InhibitorConnector\">inhibitor</a> in a reaction edge
    </body>
    <!--WSMINSERTIONTAGEND rightInhibitorForwardTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{0.0, 80.0}, {0.0, 6.25}}, color = {0, 85, 127}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 25)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end RightInhibitorForward;

  model Modifier "Basics for a modifier in a reaction edge"
    BioChem.Interfaces.Nodes.ModifierConnector m1 annotation(Placement(visible = true, transformation(origin = {0.0, 90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {0.0, 100.0}, extent = {{-17.5, -17.5}, {17.5, 17.5}}, rotation = 0)));
  equation
    m1.r = 0;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART modifierTag -->
    <body>
    Basics for a <a href=\"Modelica://BioChem.Interfaces.Nodes.ModifierConnector\">modifier</a> in a reaction edge
    </body>
    <!--WSMINSERTIONTAGEND modifierTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{0.0, 80.0}, {0.0, 6.25}}, color = {0, 85, 127}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 25)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Modifier;

  partial model ModifierBackward "Basics for a backward modifier in a reaction edge"
    BioChem.Interfaces.Nodes.ModifierConnector mB1 annotation(Placement(visible = true, transformation(origin = {0.0, -90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {0.0, -100.0}, extent = {{-17.5, -17.5}, {17.5, 17.5}}, rotation = 0)));
  equation
    mB1.r = 0;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART modifierBackwardTag -->
    <body>
    Basics for a backward <a href=\"Modelica://BioChem.Interfaces.Nodes.ModifierConnector\">modifier</a> in a reaction edge
    </body>
    <!--WSMINSERTIONTAGEND modifierBackwardTag --></html>", revisions = ""), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{0.0, -80.0}, {0.0, -6.25}}, color = {0, 85, 127}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 25)}));
  end ModifierBackward;

  partial model ModifierForward "Basics for a forward modifier in a reaction edge"
    BioChem.Interfaces.Nodes.ModifierConnector mF1 annotation(Placement(visible = true, transformation(origin = {0.0, 90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {0.0, 97.8984}, extent = {{-17.5, -17.5}, {17.5, 17.5}}, rotation = 0)));
  equation
    mF1.r = 0;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART modifierForwardTag -->
    <body>
    Basics for a forward <a href=\"Modelica://BioChem.Interfaces.Nodes.ModifierConnector\">modifier</a> in a reaction edge
    </body>
    <!--WSMINSERTIONTAGEND modifierForwardTag --></html>", revisions = ""), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{0.0, 80.0}, {0.0, 6.25}}, color = {0, 85, 127}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 25)}));
  end ModifierForward;

  model TwoModifiers "Basics for two modifiers in a reaction edge"
    BioChem.Interfaces.Nodes.ModifierConnector m2 annotation(Placement(visible = true, transformation(origin = {50.0, 90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {50.0, 100.0}, extent = {{-17.5, -17.5}, {17.5, 17.5}}, rotation = 0)));
    BioChem.Interfaces.Nodes.ModifierConnector m1 annotation(Placement(visible = true, transformation(origin = {-50.0, 90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {-50.0, 100.0}, extent = {{-17.5, -17.5}, {17.5, 17.5}}, rotation = 0)));
  equation
    0 = m1.r;
    0 = m2.r;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART twoModifiersTag -->
    <body>
    Basics for two <a href=\"Modelica://BioChem.Interfaces.Nodes.ModifierConnector\">modifiers</a> in a reaction edge
    </body>
    <!--WSMINSERTIONTAGEND twoModifiersTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{0.0, 80.0}, {0.0, 6.25}}, color = {0, 85, 127}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 25)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end TwoModifiers;

  partial model ThreeModifiers "Basics for three modifiers in a reaction edge"
    BioChem.Interfaces.Nodes.ModifierConnector m1 annotation(Placement(visible = true, transformation(origin = {-50.0, 90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {-50.0, 100.0}, extent = {{-17.5, -17.5}, {17.5, 17.5}}, rotation = 0)));
    BioChem.Interfaces.Nodes.ModifierConnector m2 annotation(Placement(visible = true, transformation(origin = {-0.0, 90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {-0.0, 100.0}, extent = {{-17.5, -17.5}, {17.5, 17.5}}, rotation = 0)));
    BioChem.Interfaces.Nodes.ModifierConnector m3 annotation(Placement(visible = true, transformation(origin = {50.0, 90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {50.0, 100.0}, extent = {{-17.5, -17.5}, {17.5, 17.5}}, rotation = 0)));
  equation
    0 = m1.r;
    0 = m2.r;
    0 = m3.r;
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART threeModifiersTag -->
    <body>
    Basics for three <a href=\"Modelica://BioChem.Interfaces.Nodes.ModifierConnector\">modifiers</a> in a reaction edge
    </body>
    <!--WSMINSERTIONTAGEND threeModifiersTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{0.0, 80.0}, {0.0, 6.25}}, color = {0, 85, 127}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 25)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end ThreeModifiers;

  model MultipleModifiers "Basics for multiple modifiers in a reaction edge"
    parameter Integer dimM = 5 "number of modifiers";
    BioChem.Interfaces.Nodes.ModifierConnector m[dimM] annotation(Placement(visible = true, transformation(origin = {-0.0, 90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {0.0, 100.0}, extent = {{-17.5, -17.5}, {17.5, 17.5}}, rotation = 0)));
  equation
    m.r = fill(0, dimM);
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART multipleModifiersTag -->
    <body>
    Basics for multiple <a href=\"Modelica://BioChem.Interfaces.Nodes.ModifierConnector\">modifiers</a> in a reaction edge
    </body>
    <!--WSMINSERTIONTAGEND multipleModifiersTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Ellipse(visible = true, origin = {0.0, 10.0}, lineColor = {255, 255, 0}, fillColor = {255, 255, 127}, fillPattern = FillPattern.Solid, lineThickness = 2, extent = {{-20.0, 70.0}, {20.0, 110.0}}), Line(visible = true, origin = {0.0, 35.0}, points = {{-0.0, 35.0}, {0.0, -35.0}}, color = {0, 85, 127}, arrow = {Arrow.None, Arrow.Filled}, arrowSize = 30)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end MultipleModifiers;
  annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART modifiersTag -->
    <body>
    This package contains basic building blocks for the partial <a href=\"Modelica://BioChem.Interfaces.Reactions\">Reaction</a> models.
    </body>
    <!--WSMINSERTIONTAGEND modifiersTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end Modifiers;