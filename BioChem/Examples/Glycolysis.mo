within BioChem.Examples;

model Glycolysis "Glycolysis"
  extends BioChem.Compartments.Compartment;
  Reactions.MassAction.Irreversible.UniUni.Uui uui1 annotation(
    Placement(transformation(origin = {1.83964e-13, -3.75}, extent = {{-7.5, -7.5}, {7.5, 7.5}}, rotation = 270)));
  Substances.Substance PEP1(c.start = 0) "Phosphoenol pyruvate" annotation(
    Placement(transformation(origin = {2.96307e-12, -108.75}, extent = {{-7.5, -7.5}, {7.5, 7.5}}, rotation = -270)));
  Reactions.MassAction.Irreversible.UniUni.Uui uui4 annotation(
    Placement(transformation(origin = {1.19682e-13, -123.75}, extent = {{-7.5, -7.5}, {7.5, 7.5}}, rotation = -90)));
  Reactions.MassAction.Reversible.UniUni.Uur uur2 annotation(
    Placement(transformation(origin = {1.1291e-13, -63.75}, extent = {{-7.5, -7.5}, {7.5, 7.5}}, rotation = -270)));
  Substances.Substance G13BP(c.start = 0) "Glycerate-1,3-bisphosphate" annotation(
    Placement(transformation(origin = {1.16462e-13, -18.75}, extent = {{-7.5, -7.5}, {7.5, 7.5}}, rotation = -270)));
  Reactions.MassAction.Reversible.UniUni.Uur uur(k1 = 1) annotation(
    Placement(transformation(origin = {1.13798e-13, 93.75}, extent = {{-7.5, -7.5}, {7.5, 7.5}}, rotation = -90)));
  Reactions.MassAction.Reversible.UniUni.Uur uur1 annotation(
    Placement(transformation(origin = {1.17351e-13, 18.75}, extent = {{-7.5, -7.5}, {7.5, 7.5}})));
  Reactions.MassAction.Irreversible.UniBi.Ubi ubi annotation(
    Placement(transformation(origin = {1.60982e-14, 33.75}, extent = {{-7.5, -7.5}, {7.5, 7.5}}, rotation = 270)));
  Reactions.MassAction.Irreversible.UniUni.Uui uui3 annotation(
    Placement(transformation(origin = {-6.3094e-13, -93.75}, extent = {{-7.5, -7.5}, {7.5, 7.5}}, rotation = 270)));
  Substances.Substance G2P1(c.start = 0) "Glycerate-2-phosphate" annotation(
    Placement(transformation(origin = {1.03362e-13, -78.75}, extent = {{-7.5, -7.5}, {7.5, 7.5}}, rotation = -630)));
  Reactions.MassAction.Irreversible.UniUni.Uui uui2 annotation(
    Placement(transformation(origin = {1.14242e-13, -33.75}, extent = {{-7.5, -7.5}, {7.5, 7.5}}, rotation = -90)));
  Substances.Substance GA3P(c.start = 0) "Glycerate-3-phosphate" annotation(
    Placement(transformation(origin = {1.06248e-13, -48.75}, extent = {{-7.5, -7.5}, {7.5, 7.5}}, rotation = -270)));
  Reactions.MassAction.Irreversible.UniUni.Uui uui5(k1 = 1) annotation(
    Placement(transformation(origin = {1.03287e-11, 123.75}, extent = {{-7.5, -7.5}, {7.5, 7.5}}, rotation = -90)));
  Reactions.MassAction.Irreversible.UniUni.Uui uui annotation(
    Placement(transformation(origin = {1.91513e-13, 63.75}, extent = {{-7.5, -7.5}, {7.5, 7.5}}, rotation = -90)));
  Substances.Substance Pyruvate(c.start = 0) annotation(
    Placement(transformation(origin = {1.19571e-13, -138.75}, extent = {{-7.5, -7.5}, {7.5, 7.5}}, rotation = -360)));
  Substances.Substance Glucose(c.start = 1) "Glucose" annotation(
    Placement(transformation(origin = {3.32706e-16, 139.222}, extent = {{-7.5, -7.5}, {7.5, 7.5}}, rotation = -270)));
  Substances.Substance G6P(c.start = 0) "Glucose-6-phosphate" annotation(
    Placement(transformation(origin = {1.13798e-13, 108.75}, extent = {{-7.5, -7.5}, {7.5, 7.5}}, rotation = -270)));
  Substances.Substance F6P(c.start = 0) "Fructose-6-phosphate" annotation(
    Placement(transformation(origin = {2.39286e-12, 78.75}, extent = {{-7.5, -7.5}, {7.5, 7.5}}, rotation = -630)));
  Substances.Substance F16BP(c.start = 0) "Fructose-1,6-bisphosphate" annotation(
    Placement(transformation(origin = {1.13354e-13, 48.75}, extent = {{-7.5, -7.5}, {7.5, 7.5}}, rotation = -270)));
  Substances.Substance G3P(c.start = 0) "Glyceraldehyde-3-phosphate" annotation(
    Placement(transformation(origin = {-15, 18.75}, extent = {{-7.5, -7.5}, {7.5, 7.5}})));
  Substances.Substance DHAP(c.start = 0) "Dihydroxyacetone phosphate" annotation(
    Placement(transformation(origin = {15, 18.75}, extent = {{-7.5, -7.5}, {7.5, 7.5}})));
  BioChem.Interfaces.Nodes.SubstanceConnector sGlucose annotation(
    Placement(transformation(origin = {0.0, 147.5}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 180), iconTransformation(origin = {0.0, 115.0}, extent = {{-15.0, -15.0}, {15.0, 15.0}}, rotation = 180)));
  Interfaces.Nodes.SubstanceConnector sPyruvate annotation(
    Placement(transformation(origin = {-22.5, -147.5}, extent = {{-10.0, -10.0}, {10.0, 10.0}}), iconTransformation(origin = {-27.5, -112.5}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
  Interfaces.Nodes.SubstanceConnector sPyruvate4 annotation(
    Placement(transformation(origin = {22.5, -147.5}, extent = {{-10.0, -10.0}, {10.0, 10.0}}), iconTransformation(origin = {27.5, -112.5}, extent = {{-12.5, -12.5}, {12.5, 12.5}})));
equation
  connect(Pyruvate.n1, sPyruvate4) annotation(
    Line(points = {{0.0, -138.75}, {22.5, -139.4}, {22.5, -147.5}}, smooth = Smooth.Bezier));
  connect(sPyruvate, Pyruvate.n1) annotation(
    Line(points = {{-22.5, -147.5}, {-22.5, -138.8}, {0.0, -138.75}}, smooth = Smooth.Bezier));
  connect(sGlucose, Glucose.n1) annotation(
    Line(points = {{0.0, 147.5}, {0.0, 139.222}}));
  connect(GA3P.n1, uur2.p1) annotation(
    Line(points = {{1.06248e-13, -48.75}, {1.12893e-13, -55.3125}}));
  connect(uur2.s1, G2P1.n1) annotation(
    Line(points = {{1.12893e-13, -72.1875}, {1.03362e-13, -78.75}}));
  connect(uui3.p1, PEP1.n1) annotation(
    Line(points = {{-6.30923e-13, -102.188}, {2.96307e-12, -108.75}}));
  connect(uui1.p1, G13BP.n1) annotation(
    Line(points = {{1.83981e-13, -12.1875}, {1.16462e-13, -18.75}}));
  connect(uui2.p1, GA3P.n1) annotation(
    Line(points = {{1.14259e-13, -42.1875}, {1.06248e-13, -48.75}}));
  connect(G2P1.n1, uui3.s1) annotation(
    Line(points = {{1.03362e-13, -78.75}, {-6.30957e-13, -85.3125}}));
  connect(PEP1.n1, uui4.s1) annotation(
    Line(points = {{2.96307e-12, -108.75}, {1.19665e-13, -115.312}}));
  connect(G13BP.n1, uui2.s1) annotation(
    Line(points = {{1.16462e-13, -18.75}, {1.14225e-13, -25.3125}}));
  connect(uui4.p1, Pyruvate.n1) annotation(
    Line(points = {{1.19699e-13, -132.188}, {1.19571e-13, -138.75}}));
  connect(Glucose.n1, uui5.s1) annotation(
    Line(points = {{3.32706e-16, 139.222}, {1.03287e-11, 132.188}}));
  connect(uui5.p1, G6P.n1) annotation(
    Line(points = {{1.03287e-11, 115.312}, {1.13798e-13, 108.75}}));
  connect(G6P.n1, uur.s1) annotation(
    Line(points = {{1.13798e-13, 108.75}, {1.13815e-13, 102.188}}));
  connect(F6P.n1, uui.s1) annotation(
    Line(points = {{2.39286e-12, 78.75}, {1.91496e-13, 72.1875}}));
  connect(uur.p1, F6P.n1) annotation(
    Line(points = {{1.13815e-13, 85.3125}, {2.39286e-12, 78.75}}));
  connect(F16BP.n1, ubi.s1) annotation(
    Line(points = {{1.13354e-13, 48.75}, {1.60815e-14, 42.1875}}));
  connect(uui.p1, F16BP.n1) annotation(
    Line(points = {{1.9153e-13, 55.3125}, {1.13354e-13, 48.75}}));
  connect(ubi.p2, G3P.n1) annotation(
    Line(points = {{-3.75, 25.3125}, {-15, 26.25}, {-15, 18.75}}, smooth = Smooth.Bezier));
  connect(G3P.n1, uui1.s1) annotation(
    Line(points = {{-15, 18.75}, {-7.5, 11.25}, {1.138e-13, 7.719}, {1.83947e-13, 4.6875}}, smooth = Smooth.Bezier));
  connect(uur1.s1, G3P.n1) annotation(
    Line(points = {{-8.4375, 18.75}, {-15, 18.75}}));
  connect(ubi.p1, DHAP.n1) annotation(
    Line(points = {{3.75, 25.3125}, {15, 26.25}, {15, 18.75}}, smooth = Smooth.Bezier));
  connect(DHAP.n1, uur1.p1) annotation(
    Line(points = {{15, 18.75}, {8.4375, 18.75}}));
  annotation(
    Documentation(info = "<html>
<h1>Glycolysis</h1>
 <p>
 A simple glycolysis model.
 The parameter values in this model are arbitrarily chosen,
 to obtain a fully functional model, realistic parameter values must be used.
 </p>
 </html>", revisions = ""),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Line(points = {{0, 100}, {0, 25}, {-25, 0}, {0, -25}, {0, -75}, {-25, -100}}), Line(points = {{0, 25}, {25, 0}, {-25, 0}}), Line(points = {{0, -75}, {25, -100}})}),
    Diagram(coordinateSystem(extent = {{-105, 148.5}, {105, -148.5}}, preserveAspectRatio = true, grid = {10, 10})));
end Glycolysis;
