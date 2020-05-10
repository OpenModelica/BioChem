within BioChem.Examples;

model InsulinSignaling_Sedaghat "Metabolic insulin signaling pathway in rat adipocytes"
  extends BioChem.Compartments.Compartment;
  Substances.Substance irPMembIns(c.start = 0) "Phosphorylated insulin receptor at plasma membrane, one insulin bound" annotation(
    Placement(transformation(origin = {10, 30}, extent = {{-10, -10}, {10, 10}})));
  Reactions.MassAction.Irreversible.UniUni.Uui uui(k1 = 2500 / 60) annotation(
    Placement(transformation(origin = {-10, 30}, extent = {{-10, -10}, {10, 10}})));
  Substances.Substance irInt(c.start = 1 / 10000000000000.0) "Internal IR" annotation(
    Placement(transformation(origin = {-70, -50}, extent = {{-10, -10}, {10, 10}})));
  Substances.Substance irPIntIns(c.start = 0) "Internal phosphorylated insulin receptor, one insulin" annotation(
    Placement(transformation(origin = {-34, -10}, extent = {{-10, -10}, {10, 10}})));
  Substances.Substance irPInt2Ins(c.start = 0) "Internal phosphorylated insulin receptor, two insulin bound" annotation(
    Placement(transformation(origin = {-4, -10}, extent = {{-10, -10}, {10, 10}})));
  Reactions.MassAction.Irreversible.UniUni.Uui uui2(k1 = 0.461 / 60) annotation(
    Placement(transformation(origin = {-38, -50}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Reactions.MassAction.Reversible.BiUni.Bur bur2(k1 = 60000000 / 60, k2 = 100 * 0.2 / 60) annotation(
    Placement(transformation(origin = {30, 50}, extent = {{-10, -10}, {10, 10}})));
  Reactions.MassAction.Reversible.BiUni.Bur bur1(k2 = 0.2 / 60, k1 = 60000000 / 60) annotation(
    Placement(transformation(origin = {-54, 50}, extent = {{-10, -10}, {10, 10}})));
  Reactions.MassAction.Reversible.UniUni.Uur uur5(k2 = 0.003 / 60, k1 = 0.003 / 9 / 60) annotation(
    Placement(transformation(origin = {-70, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 270)));
  Reactions.MassAction.Reversible.UniUni.Uur uur3(k1 = 0.00021 / 60, k2 = 0.0021 / 60) annotation(
    Placement(transformation(origin = {20, 10}, extent = {{-10, -10}, {10, 10}})));
  Reactions.MassAction.Irreversible.UniUni.Uui uui1(k1 = 0.461 / 60) annotation(
    Placement(transformation(origin = {-51.5948, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Reactions.MassAction.Irreversible.UniUni.Uui uui3(k1 = 0.2 / 60) annotation(
    Placement(transformation(origin = {-50, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 180)));
  Substances.Substance Insulin(c.start = 1 / 10000000) "Insulin" annotation(
    Placement(transformation(origin = {-70, 70}, extent = {{-10, -10}, {10, 10}})));
  Reactions.MassAction.Reversible.UniUni.Uur uur2(k1 = 0.00021 / 60, k2 = 0.0021 / 60) annotation(
    Placement(transformation(origin = {-17.5, 10}, extent = {{-10, -10}, {10, 10}})));
  Substances.Substance irMembIns(c.start = 0) "Insulin receptor at plasma membrane, one insulin bound" annotation(
    Placement(transformation(origin = {-30, 30}, extent = {{-10, -10}, {10, 10}})));
  Substances.Substance irMemb(c.start = 9 / 10000000000000.0) annotation(
    Placement(transformation(origin = {-70, 30}, extent = {{-10, -10}, {10, 10}})));
  Substances.Substance irPMemb2Ins(c.start = 0) "Phosphorylated insulin receptor at plasma membrane, two insulin bound" annotation(
    Placement(transformation(origin = {50, 30}, extent = {{-10, -10}, {10, 10}})));
  Interfaces.Nodes.SubstanceConnector sInsulin "Connector for insulin" annotation(
    Placement(transformation(origin = {0.0, 100.0}, extent = {{-10.0, -10.0}, {10.0, 10.0}}, rotation = 180), iconTransformation(origin = {-0.0, 115.0}, extent = {{-15.0, -15.0}, {15.0, 15.0}}, rotation = 180)));
equation
  connect(sInsulin, Insulin.n1) annotation(
    Line(points = {{0.0, 100.0}, {0.0, 70.04}, {-70.0, 70.0}}, smooth = Smooth.Bezier));
  connect(irPInt2Ins.n1, uur3.s1) annotation(
    Line(points = {{-4, -10}, {-4.267, 10.24}, {8.75, 10}}, smooth = Smooth.Bezier));
  connect(uur5.p1, irInt.n1) annotation(
    Line(points = {{-70, -21.25}, {-70, -50}}));
  connect(bur2.s2, irPMembIns.n1) annotation(
    Line(points = {{18.75, 45}, {10, 46.2}, {10, 30}}, smooth = Smooth.Bezier));
  connect(uui3.s1, irPIntIns.n1) annotation(
    Line(points = {{-38.75, 20}, {-37.5, 18.75}, {-34, 11.25}, {-34, -10}}, smooth = Smooth.Bezier));
  connect(uui1.p1, irInt.n1) annotation(
    Line(points = {{-62.8448, -30}, {-70.27, -29.87}, {-70, -50}}, smooth = Smooth.Bezier));
  connect(uui1.s1, irPIntIns.n1) annotation(
    Line(points = {{-40.3448, -30}, {-34, -30}, {-34, -10}}, smooth = Smooth.Bezier));
  connect(uui2.s1, irPInt2Ins.n1) annotation(
    Line(points = {{-26.75, -50}, {-4.07, -50.04}, {-4, -10}}, smooth = Smooth.Bezier));
  connect(uui.p1, irPMembIns.n1) annotation(
    Line(points = {{1.25, 30}, {10, 30}}));
  connect(irInt.n1, uui2.p1) annotation(
    Line(points = {{-70, -50}, {-49.25, -50}}));
  connect(Insulin.n1, bur1.s1) annotation(
    Line(points = {{-70, 70}, {-70.07, 54.05}, {-65.25, 55}}, smooth = Smooth.Bezier));
  connect(Insulin.n1, bur2.s1) annotation(
    Line(points = {{-70, 70}, {-30, 69.99}, {-7.5, 54.62}, {18.75, 55}}, smooth = Smooth.Bezier));
  connect(uur2.p1, irPMembIns.n1) annotation(
    Line(points = {{-6.25, 10}, {0, 10}, {10, 30}}, smooth = Smooth.Bezier));
  connect(irPIntIns.n1, uur2.s1) annotation(
    Line(points = {{-34, -10}, {-34, 10}, {-28.75, 10}}, smooth = Smooth.Bezier));
  connect(irMembIns.n1, uui.s1) annotation(
    Line(points = {{-30, 30}, {-21.25, 30}}));
  connect(bur1.p1, irMembIns.n1) annotation(
    Line(points = {{-42.75, 50}, {-30, 50}, {-30, 30}}, smooth = Smooth.Bezier));
  connect(irMemb.n1, uui3.p1) annotation(
    Line(points = {{-70, 30}, {-69.7, 20.2}, {-61.25, 20}}, smooth = Smooth.Bezier));
  connect(irMemb.n1, bur1.s2) annotation(
    Line(points = {{-70, 30}, {-70.07, 46.2}, {-65.25, 45}}, smooth = Smooth.Bezier));
  connect(uur5.s1, irMemb.n1) annotation(
    Line(points = {{-70, 1.25}, {-70, 30}}));
  connect(bur2.p1, irPMemb2Ins.n1) annotation(
    Line(points = {{41.25, 50}, {50.01, 50}, {50, 30}}, smooth = Smooth.Bezier));
  connect(uur3.p1, irPMemb2Ins.n1) annotation(
    Line(points = {{31.25, 10}, {50, 10}, {50, 30}}, smooth = Smooth.Bezier));
  annotation(
    Documentation(info = "<html>
<h1>InsulinSignaling</h1>
 <p>
 A model of the first steps of a metabolic insulin signaling pathway.<br>
 Based on the model by Sedaghat et al. (2002).<br> <br>
 A. Sedaghat, R, A. Sherman, and J. Quon, Michael.<br>
 A mathematical model of metabolic insulin signaling.<br>
 American Journal of Physiology - Endocrinology and Metabolism, 283:1048-1101, Jul 2002.
 </p>
 </html>", revisions = ""),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Icon(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Ellipse(lineColor = {85, 170, 255}, fillColor = {0, 0, 255}, fillPattern = FillPattern.Sphere, extent = {{-100.43, -91.42}, {100.02, 19.94}}), Line(points = {{0.0, 110.0}, {0.0, -34.05}, {25.0, -52.36}}, color = {170, 0, 0})}));
end InsulinSignaling_Sedaghat;
