within BioChem.Reactions.FastEquilibrium;

model Qqf "Quad-Quad fast (instant) equilibrium reaction"
  extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
  extends BioChem.Interfaces.Reactions.Basics.FourSubstratesReversible;
  extends BioChem.Interfaces.Reactions.Basics.FourProducts;
  parameter BioChem.Units.EquilibriumCoefficient kS1 = 1 "Equilibrium coefficient for substrate 1";
  parameter BioChem.Units.EquilibriumCoefficient kS2 = 1 "Equilibrium coefficient for substrate 2";
  parameter BioChem.Units.EquilibriumCoefficient kS3 = 1 "Equilibrium coefficient for substrate 3";
  parameter BioChem.Units.EquilibriumCoefficient kS4 = 1 "Equilibrium coefficient for substrate 4";
  parameter BioChem.Units.EquilibriumCoefficient kP1 = 1 "Equilibrium coefficient for product 1";
  parameter BioChem.Units.EquilibriumCoefficient kP2 = 1 "Equilibrium coefficient for product 2";
  parameter BioChem.Units.EquilibriumCoefficient kP3 = 1 "Equilibrium coefficient for product 3";
  parameter BioChem.Units.EquilibriumCoefficient kP4 = 1 "Equilibrium coefficient for product 4";
equation
  p1.c = s1.c * kP1 / kS1;
  p2.c = s1.c * kP2 / kS1;
  p3.c = s1.c * kP3 / kS1;
  p4.c = s1.c * kP4 / kS1;
  s2.c = s1.c * kS2 / kS1;
  s3.c = s1.c * kS3 / kS1;
  s4.c = s1.c * kS4 / kS1;
  s1.r + s2.r + s3.r + s4.r + p1.r + p2.r + p3.r + p4.r = 0;
  annotation(
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Qqf;
