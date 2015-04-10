within BioChem.Interfaces.Reactions;

package Basics "Basic properties of reactions"
  extends BioChem.Icons.Library;

  partial model Reaction "Basics for a reaction edge"
    BioChem.Units.ReactionRate rr "Rate of the reaction" annotation(__Wolfram_reactionrate = true);
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART reactionTag -->
    <body>
    Basics for a reaction edge.
    </body>
    <!--WSMINSERTIONTAGEND reactionTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{-50.0, 0.0}, {50.0, 0.0}}, color = {170, 0, 0})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Reaction;

  partial model FastEquilibrium "Basics for a reaction edge"
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART fastEquilibriumTag -->
    <body>
    Basics for a fast equilibrium reaction edge.
    </body>
    <!--WSMINSERTIONTAGEND fastEquilibriumTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{-50.0, 0.0}, {50.0, 0.0}}, color = {0, 85, 127}, pattern = LinePattern.DashDotDot, thickness = 2.0)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end FastEquilibrium;

  partial model OneSubstrate "SubstanceConnector for one substrate"
    BioChem.Interfaces.Nodes.SubstrateConnector s1 annotation(Placement(visible = true, transformation(origin = {-80, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-112.5, -2.22045e-016}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART oneSubstrateTag -->
    <body>
    SubstanceConnector for one <a href=\"Modelica://BioChem.Interfaces.Nodes.SubstrateConnector\">substrate</a>.
    </body>
    <!--WSMINSERTIONTAGEND oneSubstrateTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{-50, 0}, {-100, 0}}, color = {170, 0, 0}, arrowSize = 25)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end OneSubstrate;

  partial model OneSubstrateReversible "SubstanceConnectors for one substrate in a reversible reaction"
    BioChem.Interfaces.Nodes.SubstrateConnector s1 annotation(Placement(visible = true, transformation(origin = {-80, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-112.5, 2.22045e-016}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART oneSubstrateReversibleTag -->
    <body>
    SubstanceConnectors for one <a href=\"Modelica://BioChem.Interfaces.Nodes.SubstrateConnector\">substrate</a> in a reversible reaction.
    </body>
    <!--WSMINSERTIONTAGEND oneSubstrateReversibleTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{-50.0, 0.0}, {-100.0, 0.0}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 40)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end OneSubstrateReversible;

  partial model OneProduct "SubstanceConnector for one product"
    BioChem.Interfaces.Nodes.ProductConnector p1 annotation(Placement(visible = true, transformation(origin = {80, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {112.5, 2.22045e-016}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART oneProductTag -->
    <body>
    SubstanceConnector for one <a href=\"Modelica://BioChem.Interfaces.Nodes.ProductConnector\">product</a>.
    </body>
    <!--WSMINSERTIONTAGEND oneProductTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{50.0, 0.0}, {100.0, 0.0}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 40)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end OneProduct;

  partial model TwoSubstrates "SubstanceConnectors for two substrates"
    BioChem.Interfaces.Nodes.SubstrateConnector s1 annotation(Placement(visible = true, transformation(origin = {-100, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-112.5, 50}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    BioChem.Interfaces.Nodes.SubstrateConnector s2 annotation(Placement(visible = true, transformation(origin = {-100, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-112.5, -50}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART twoSubstratesTag -->
    <body>
    SubstanceConnectors for two <a href=\"Modelica://BioChem.Interfaces.Nodes.SubstrateConnector\">substrates</a>.
    </body>
    <!--WSMINSERTIONTAGEND twoSubstratesTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{-100, 50}, {-50, 50}, {-50, 0}}, color = {170, 0, 0}, smooth = Smooth.Bezier), Line(visible = true, points = {{-100, -50}, {-50, -50}, {-50, 0}}, color = {170, 0, 0}, smooth = Smooth.Bezier)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end TwoSubstrates;

  partial model TwoSubstratesReversible "SubstanceConnectors for two substrates in a reversible reaction"
    BioChem.Interfaces.Nodes.SubstrateConnector s1 annotation(Placement(visible = true, transformation(origin = {-100, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-112.5, 50}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    BioChem.Interfaces.Nodes.SubstrateConnector s2 annotation(Placement(visible = true, transformation(origin = {-100, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-112.5, -50}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART twoSubstratesReversibleTag -->
    <body>
    SubstanceConnectors for two <a href=\"Modelica://BioChem.Interfaces.Nodes.SubstrateConnector\">substrates</a> in a reversible reaction.
    </body>
    <!--WSMINSERTIONTAGEND twoSubstratesReversibleTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{-100, 50}, {-50, 50}, {-50, 0}}, color = {170, 0, 0}, arrow = {Arrow.Open, Arrow.None}, arrowSize = 30, smooth = Smooth.Bezier), Line(visible = true, points = {{-100, -50}, {-50, -50}, {-50, 0}}, color = {170, 0, 0}, arrow = {Arrow.Open, Arrow.None}, arrowSize = 30, smooth = Smooth.Bezier)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end TwoSubstratesReversible;

  partial model TwoProducts "SubstanceConnectors for two products"
    BioChem.Interfaces.Nodes.ProductConnector p2 annotation(Placement(visible = true, transformation(origin = {100, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {112.5, -50}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    BioChem.Interfaces.Nodes.ProductConnector p1 annotation(Placement(visible = true, transformation(origin = {100, 40}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {112.5, 50}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART twoProductsTag -->
    <body>
    SubstanceConnectors for two <a href=\"Modelica://BioChem.Interfaces.Nodes.ProductConnector\">products</a>.
    </body>
    <!--WSMINSERTIONTAGEND twoProductsTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{50, 0}, {50, 50}, {102.4, 50}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 30, smooth = Smooth.Bezier), Line(visible = true, points = {{50, 0}, {50, -50}, {100, -50}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 30, smooth = Smooth.Bezier)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end TwoProducts;

  partial model ThreeSubstrates "SubstanceConnectors for three substrates"
    BioChem.Interfaces.Nodes.SubstrateConnector s1 annotation(Placement(visible = true, transformation(origin = {-100.0, 80.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {-112.5, 50.0}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    BioChem.Interfaces.Nodes.SubstrateConnector s3 annotation(Placement(visible = true, transformation(origin = {-100.0, -80.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {-112.5, -50.0}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    BioChem.Interfaces.Nodes.SubstrateConnector s2 annotation(Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-112.5, 4.44089e-016}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART threeSubstratesTag -->
    <body>
    SubstanceConnectors for three <a href=\"Modelica://BioChem.Interfaces.Nodes.SubstrateConnector\">substrates</a>.
    </body>
    <!--WSMINSERTIONTAGEND threeSubstratesTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{-50, 0}, {-50, 50}, {-100, 50}}, color = {170, 0, 0}, smooth = Smooth.Bezier), Line(visible = true, points = {{-100, 0}, {-50, 0}}, color = {170, 0, 0}), Line(visible = true, points = {{-100, -50}, {-50, -50}, {-50, 0}}, color = {170, 0, 0}, smooth = Smooth.Bezier)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end ThreeSubstrates;

  partial model ThreeSubstratesReversible "SubstanceConnectors for three substrates in a reversible reaction"
    BioChem.Interfaces.Nodes.SubstrateConnector s1 annotation(Placement(visible = true, transformation(origin = {-100.0, 80.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {-112.5, 50.0}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    BioChem.Interfaces.Nodes.SubstrateConnector s2 annotation(Placement(visible = true, transformation(origin = {-100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-112.5, 8.881780000000001e-015}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    BioChem.Interfaces.Nodes.SubstrateConnector s3 annotation(Placement(visible = true, transformation(origin = {-100.0, -80.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {-112.5, -50.0}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART threeSubstratesReversibleTag -->
    <body>
    SubstanceConnectors for three <a href=\"Modelica://BioChem.Interfaces.Nodes.SubstrateConnector\">substrates</a> in a reversible reaction.
    </body>
    <!--WSMINSERTIONTAGEND threeSubstratesReversibleTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{-50, 0}, {-50, 50}, {-100, 50}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 30, smooth = Smooth.Bezier), Line(visible = true, points = {{-100, 0}, {-50, 0}}, color = {170, 0, 0}, arrow = {Arrow.Open, Arrow.None}, arrowSize = 30), Line(visible = true, points = {{-100, -50}, {-50, -50}, {-50, 0}}, color = {170, 0, 0}, arrow = {Arrow.Open, Arrow.None}, arrowSize = 30, smooth = Smooth.Bezier)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end ThreeSubstratesReversible;

  partial model ThreeProducts "SubstanceConnectors for three products"
    BioChem.Interfaces.Nodes.ProductConnector p1 annotation(Placement(visible = true, transformation(origin = {100.0, 80.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {112.5, 50.0}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    BioChem.Interfaces.Nodes.ProductConnector p3 annotation(Placement(visible = true, transformation(origin = {100.0, -80.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {112.5, -50.0}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    BioChem.Interfaces.Nodes.ProductConnector p2 annotation(Placement(visible = true, transformation(origin = {100, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {112.5, -2.9976e-015}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART threeProductsTag -->
    <body>
    SubstanceConnectors for three <a href=\"Modelica://BioChem.Interfaces.Nodes.ProductConnector\">products</a>.
    </body>
    <!--WSMINSERTIONTAGEND threeProductsTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{50, 0}, {100, 0}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 30), Line(visible = true, origin = {0, -25}, points = {{50, 25}, {50, 75}, {100, 75}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 30, smooth = Smooth.Bezier), Line(visible = true, origin = {0, 20}, points = {{50, -20}, {50, -70}, {100, -70}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 30, smooth = Smooth.Bezier)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end ThreeProducts;

  partial model FourSubstrates "SubstanceConnectors for four substrates"
    BioChem.Interfaces.Nodes.SubstrateConnector s4 annotation(Placement(visible = true, transformation(origin = {-90.0, -90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {-112.5, -75.0}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    BioChem.Interfaces.Nodes.SubstrateConnector s2 annotation(Placement(visible = true, transformation(origin = {-90.0, 30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {-112.5, 25.0}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    BioChem.Interfaces.Nodes.SubstrateConnector s3 annotation(Placement(visible = true, transformation(origin = {-90.0, -30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {-112.5, -25.0}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    BioChem.Interfaces.Nodes.SubstrateConnector s1 annotation(Placement(visible = true, transformation(origin = {-90.0, 90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {-112.5, 75.0}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART fourSubstratesTag -->
    <body>
    SubstanceConnectors for four <a href=\"Modelica://BioChem.Interfaces.Nodes.SubstrateConnector\">substrates</a>.
    </body>
    <!--WSMINSERTIONTAGEND fourSubstratesTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{-100, 75}, {-50, 75}, {-50, 0}}, color = {170, 0, 0}, smooth = Smooth.Bezier), Line(visible = true, points = {{-100, -25}, {-50, -25}, {-50, 0}}, color = {170, 0, 0}, smooth = Smooth.Bezier), Line(visible = true, points = {{-100, -75}, {-50, -75}, {-50, 0}}, color = {170, 0, 0}, smooth = Smooth.Bezier), Line(visible = true, points = {{-100, 25}, {-50, 25}, {-50, 0}}, color = {170, 0, 0}, smooth = Smooth.Bezier)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end FourSubstrates;

  partial model FourSubstratesReversible "SubstanceConnectors for four substrates in a reversible reaction"
    BioChem.Interfaces.Nodes.SubstrateConnector s4 annotation(Placement(visible = true, transformation(origin = {-90.0, -90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {-112.5, -75.0}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    BioChem.Interfaces.Nodes.SubstrateConnector s2 annotation(Placement(visible = true, transformation(origin = {-90.0, 30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {-112.5, -25.0}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    BioChem.Interfaces.Nodes.SubstrateConnector s3 annotation(Placement(visible = true, transformation(origin = {-90.0, -30.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {-112.5, 25.0}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    BioChem.Interfaces.Nodes.SubstrateConnector s1 annotation(Placement(visible = true, transformation(origin = {-90.0, 90.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {-112.5, 75.0}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART fourSubstratesReversibleTag -->
    <body>
    SubstanceConnectors for four <a href=\"Modelica://BioChem.Interfaces.Nodes.SubstrateConnector\">substrates</a> in a reversible reaction.
    </body>
    <!--WSMINSERTIONTAGEND fourSubstratesReversibleTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{-100, 75}, {-50, 75}, {-50, 0}}, color = {170, 0, 0}, arrow = {Arrow.Open, Arrow.None}, arrowSize = 30, smooth = Smooth.Bezier), Line(visible = true, points = {{-100, -75}, {-50, -75}, {-50, 0}}, color = {170, 0, 0}, arrow = {Arrow.Open, Arrow.None}, arrowSize = 30, smooth = Smooth.Bezier), Line(visible = true, points = {{-100, -25}, {-50, -25}, {-50, 0}}, color = {170, 0, 0}, arrow = {Arrow.Open, Arrow.None}, arrowSize = 30, smooth = Smooth.Bezier), Line(visible = true, points = {{-100, 25}, {-50, 25}, {-50, 0}}, color = {170, 0, 0}, arrow = {Arrow.Open, Arrow.None}, arrowSize = 30, smooth = Smooth.Bezier)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end FourSubstratesReversible;

  partial model FourProducts "SubstanceConnectors for four products"
    BioChem.Interfaces.Nodes.ProductConnector p4 annotation(Placement(visible = true, transformation(origin = {100.0, -80.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {112.5, -75.0}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    BioChem.Interfaces.Nodes.ProductConnector p2 annotation(Placement(visible = true, transformation(origin = {100.0, 40.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {112.5, 25.0}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    BioChem.Interfaces.Nodes.ProductConnector p3 annotation(Placement(visible = true, transformation(origin = {100.0, -40.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {112.5, -25.0}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    BioChem.Interfaces.Nodes.ProductConnector p1 annotation(Placement(visible = true, transformation(origin = {100.0, 80.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {112.5, 75.0}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART fourProductsTag -->
    <body>
    SubstanceConnectors for four <a href=\"Modelica://BioChem.Interfaces.Nodes.ProductConnector\">products</a>.
    </body>
    <!--WSMINSERTIONTAGEND fourProductsTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{50, 0}, {50, 75}, {100, 75}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 30, smooth = Smooth.Bezier), Line(visible = true, points = {{50, 0}, {50, -75}, {100, -75}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 30, smooth = Smooth.Bezier), Line(visible = true, points = {{50, 0}, {50, 25}, {100, 25}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 30, smooth = Smooth.Bezier), Line(visible = true, points = {{50, 0}, {50, -25}, {100, -25}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 30, smooth = Smooth.Bezier)}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end FourProducts;

  partial model MultipleSubstrates "SubstanceConnector for arbitrary number of substrates"
    parameter Integer dimS = 5 "number of substrates";
    BioChem.Interfaces.Nodes.SubstrateConnector s[dimS] annotation(Placement(visible = true, transformation(origin = {-80, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-112.5, -2.22045e-016}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART multipleSubstratesTag -->
    <body>
    SubstanceConnector for arbitrary number of <a href=\"Modelica://BioChem.Interfaces.Nodes.SubstrateConnector\">substrates</a>.
    </body>
    <!--WSMINSERTIONTAGEND multipleSubstratesTag --></html>", revisions = ""), Diagram(coordinateSystem(extent = {{-148.5, 105}, {148.5, -105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{-100, 0}, {-50, 0}}, color = {170, 0, 0}), Ellipse(visible = true, lineColor = {170, 0, 0}, fillColor = {170, 0, 0}, extent = {{-131.2, -18.75}, {-93.75, 18.75}})}));
  end MultipleSubstrates;

  partial model MultipleSubstratesReversible "SubstanceConnector for arbitrary number of substrates in a reversible reaction"
    parameter Integer dimS = 5 "number of substrates";
    BioChem.Interfaces.Nodes.SubstrateConnector s[dimS] annotation(Placement(visible = true, transformation(origin = {-80, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-112.5, -2.22045e-016}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART multipleSubstratesReversibleTag -->
    <body>
    SubstanceConnector for arbitrary number of <a href=\"Modelica://BioChem.Interfaces.Nodes.SubstrateConnector\">substrates</a> in a reversible reaction.
    </body>
    <!--WSMINSERTIONTAGEND multipleSubstratesReversibleTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{-50.0, 0.0}, {-100.0, 0.0}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 40), Ellipse(visible = true, origin = {-112.5, 0.0}, fillColor = {255, 255, 255}, extent = {{-20.0, -20.0}, {20.0, 20.0}})}), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end MultipleSubstratesReversible;

  partial model MultipleProducts "SubstanceConnector for arbitrary number of substrates"
    parameter Integer dimP = 5 "number of products";
    BioChem.Interfaces.Nodes.ProductConnector p[dimP] annotation(Placement(visible = true, transformation(origin = {80.0, 0.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 0), iconTransformation(origin = {112.5, 0.0}, extent = {{-12.5, -12.5}, {12.5, 12.5}}, rotation = 0)));
    annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART multipleProductsTag -->
    <body>
    SubstanceConnector for arbitrary number of <a href=\"Modelica://BioChem.Interfaces.Nodes.SubstrateConnector\">substrates</a>.
    </body>
    <!--WSMINSERTIONTAGEND multipleProductsTag --></html>", revisions = ""), Diagram(coordinateSystem(extent = {{-148.5, 105}, {148.5, -105}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10}), graphics = {Line(visible = true, points = {{48.33, 0.0}, {98.33, 0.0}}, color = {170, 0, 0}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 40), Ellipse(visible = true, origin = {112.5, 0.0}, lineColor = {170, 0, 0}, fillColor = {170, 0, 0}, extent = {{-20.0, -20.0}, {20.0, 20.0}})}));
  end MultipleProducts;
  annotation(Documentation(info = "<html><!--WSMINSERTIONTAGSTART basicsTag -->
    <body>
    This package contains the basic building blocks for the partial <a href=\"Modelica://BioChem.Interfaces.Reactions\">Reaction</a> models.
    </body>
    <!--WSMINSERTIONTAGEND basicsTag --></html>", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end Basics;