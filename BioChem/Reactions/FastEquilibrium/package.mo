within BioChem.Reactions;

package FastEquilibrium "Base classes for reactions with fast (instant) equilibrium"
  extends BioChem.Icons.Library;

  model Uuf "Uni-uni fast (instant) equilibrium reaction"
    extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
    extends BioChem.Interfaces.Reactions.Basics.OneSubstrateReversible;
    extends BioChem.Interfaces.Reactions.Basics.OneProduct;
    parameter BioChem.Units.EquilibriumCoefficient kS1 = 1 "Equilibrium coefficient for the substrate";
    parameter BioChem.Units.EquilibriumCoefficient kP1 = 1 "Equilibrium coefficient for the product";
  equation
    p1.c = s1.c * kP1 / kS1;
    s1.r + p1.r = 0;
    annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Uuf;

  model Ubf "Uni-bi fast (instant) equilibrium reaction"
    extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
    extends BioChem.Interfaces.Reactions.Basics.OneSubstrateReversible;
    extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
    parameter BioChem.Units.EquilibriumCoefficient kS1 = 1 "Equilibrium coefficient for the substrate";
    parameter BioChem.Units.EquilibriumCoefficient kP1 = 1 "Equilibrium coefficient for product 1";
    parameter BioChem.Units.EquilibriumCoefficient kP2 = 1 "Equilibrium coefficient for product 2";
  equation
    p1.c = s1.c * kP1 / kS1;
    p2.c = s1.c * kP2 / kS1;
    s1.r + p1.r + p2.r = 0;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Ubf;

  model Utf "Uni-tri fast (instant) equilibrium reaction"
    extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
    extends BioChem.Interfaces.Reactions.Basics.OneSubstrateReversible;
    extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
    parameter BioChem.Units.EquilibriumCoefficient kS1 = 1 "Equilibrium coefficient for the substrate";
    parameter BioChem.Units.EquilibriumCoefficient kP1 = 1 "Equilibrium coefficient for product 1";
    parameter BioChem.Units.EquilibriumCoefficient kP2 = 1 "Equilibrium coefficient for product 2";
    parameter BioChem.Units.EquilibriumCoefficient kP3 = 1 "Equilibrium coefficient for product 3";
  equation
    p1.c = s1.c * kP1 / kS1;
    p2.c = s1.c * kP2 / kS1;
    p3.c = s1.c * kP3 / kS1;
    s1.r + p1.r + p2.r + p3.r = 0;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Utf;

  model Uqf "Uni-quad fast (instant) equilibrium reaction"
    extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
    extends BioChem.Interfaces.Reactions.Basics.OneSubstrateReversible;
    extends BioChem.Interfaces.Reactions.Basics.FourProducts;
    parameter BioChem.Units.EquilibriumCoefficient kS1 = 1 "Equilibrium coefficient for the substrate";
    parameter BioChem.Units.EquilibriumCoefficient kP1 = 1 "Equilibrium coefficient for product 1";
    parameter BioChem.Units.EquilibriumCoefficient kP2 = 1 "Equilibrium coefficient for product 2";
    parameter BioChem.Units.EquilibriumCoefficient kP3 = 1 "Equilibrium coefficient for product 3";
    parameter BioChem.Units.EquilibriumCoefficient kP4 = 1 "Equilibrium coefficient for product 4";
  equation
    p1.c = s1.c * kP1 / kS1;
    p2.c = s1.c * kP2 / kS1;
    p3.c = s1.c * kP3 / kS1;
    p4.c = s1.c * kP4 / kS1;
    s1.r + p1.r + p2.r + p3.r + p4.c = 0;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Uqf;

  model Umf "Uni-multi fast (instant) equilibrium reaction"
    extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
    extends BioChem.Interfaces.Reactions.Basics.OneSubstrateReversible;
    extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
    parameter BioChem.Units.EquilibriumCoefficient kS1 = 1 "Equilibrium coefficient for substrate 1";
    parameter BioChem.Units.EquilibriumCoefficient kP[dimP] = fill(1, dimP) "Equilibrium coefficients for the products";
  equation
    for i in 1:dimP loop
      p[i].c = s1.c * kP[i] / kS1;
    end for;
    s1.r + sum(p.r) = 0;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Umf;

  model Bbf "Bi-bi fast (instant) equilibrium reaction"
    extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
    extends BioChem.Interfaces.Reactions.Basics.TwoSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
    parameter BioChem.Units.EquilibriumCoefficient kS1 = 1 "Equilibrium coefficient for substrate 1";
    parameter BioChem.Units.EquilibriumCoefficient kS2 = 1 "Equilibrium coefficient for substrate 2";
    parameter BioChem.Units.EquilibriumCoefficient kP1 = 1 "Equilibrium coefficient for product 1";
    parameter BioChem.Units.EquilibriumCoefficient kP2 = 1 "Equilibrium coefficient for product 2";
  equation
    p1.c = s1.c * kP1 / kS1;
    p2.c = s1.c * kP2 / kS1;
    s2.c = s1.c * kS2 / kS1;
    s1.r + s2.r + p1.r + p2.r = 0;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Bbf;

  model Btf "Bi-tri fast (instant) equilibrium reaction"
    extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
    extends BioChem.Interfaces.Reactions.Basics.TwoSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
    parameter BioChem.Units.EquilibriumCoefficient kS1 = 1 "Equilibrium coefficient for substrate 1";
    parameter BioChem.Units.EquilibriumCoefficient kS2 = 1 "Equilibrium coefficient for substrate 2";
    parameter BioChem.Units.EquilibriumCoefficient kP1 = 1 "Equilibrium coefficient for product 1";
    parameter BioChem.Units.EquilibriumCoefficient kP2 = 1 "Equilibrium coefficient for product 2";
    parameter BioChem.Units.EquilibriumCoefficient kP3 = 1 "Equilibrium coefficient for product 3";
  equation
    p1.c = s1.c * kP1 / kS1;
    p2.c = s1.c * kP2 / kS1;
    p3.c = s1.c * kP3 / kS1;
    s2.c = s1.c * kS2 / kS1;
    s1.r + s2.r + p1.r + p2.r + p3.r = 0;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Btf;

  model Bqf "Bi-quad fast (instant) equilibrium reaction"
    extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
    extends BioChem.Interfaces.Reactions.Basics.TwoSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.FourProducts;
    parameter BioChem.Units.EquilibriumCoefficient kS1 = 1 "Equilibrium coefficient for substrate 1";
    parameter BioChem.Units.EquilibriumCoefficient kS2 = 1 "Equilibrium coefficient for substrate 2";
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
    s1.r + s2.r + p1.r + p2.r + p3.r + p4.r = 0;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Bqf;

  model Bmf "Bi-multi fast (instant) equilibrium reaction"
    extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
    extends BioChem.Interfaces.Reactions.Basics.TwoSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
    parameter BioChem.Units.EquilibriumCoefficient kS1 = 1 "Equilibrium coefficient for substrate 1";
    parameter BioChem.Units.EquilibriumCoefficient kS2 = 1 "Equilibrium coefficient for substrate 2";
    parameter BioChem.Units.EquilibriumCoefficient kP[dimP] = fill(1, dimP) "Equilibrium coefficients for the products";
  equation
    for i in 1:dimP loop
      p[i].c = s1.c * kP[i] / kS1;
    end for;
    s2.c = s1.c * kS2 / kS1;
    s1.r + s2.r + sum(p.r) = 0;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Bmf;

  model Ttf "Tri-tri fast (instant) equilibrium reaction"
    extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
    extends BioChem.Interfaces.Reactions.Basics.ThreeSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
    parameter BioChem.Units.EquilibriumCoefficient kS1 = 1 "Equilibrium coefficient for substrate 1";
    parameter BioChem.Units.EquilibriumCoefficient kS2 = 1 "Equilibrium coefficient for substrate 2";
    parameter BioChem.Units.EquilibriumCoefficient kS3 = 1 "Equilibrium coefficient for substrate 3";
    parameter BioChem.Units.EquilibriumCoefficient kP1 = 1 "Equilibrium coefficient for product 1";
    parameter BioChem.Units.EquilibriumCoefficient kP2 = 1 "Equilibrium coefficient for product 2";
    parameter BioChem.Units.EquilibriumCoefficient kP3 = 1 "Equilibrium coefficient for product 3";
  equation
    p1.c = s1.c * kP1 / kS1;
    p2.c = s1.c * kP2 / kS1;
    p3.c = s1.c * kP3 / kS1;
    s2.c = s1.c * kS2 / kS1;
    s3.c = s1.c * kS3 / kS1;
    s1.r + s2.r + s3.r + p1.r + p2.r + p3.r = 0;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Ttf;

  model Tqf "Tri-quad fast (instant) equilibrium reaction"
    extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
    extends BioChem.Interfaces.Reactions.Basics.ThreeSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.FourProducts;
    parameter BioChem.Units.EquilibriumCoefficient kS1 = 1 "Equilibrium coefficient for substrate 1";
    parameter BioChem.Units.EquilibriumCoefficient kS2 = 1 "Equilibrium coefficient for substrate 2";
    parameter BioChem.Units.EquilibriumCoefficient kS3 = 1 "Equilibrium coefficient for substrate 3";
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
    s1.r + s2.r + s3.r + p1.r + p2.r + p3.r + p4.r = 0;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Tqf;

  model Tmf "Tri-multi fast (instant) equilibrium reaction"
    extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
    extends BioChem.Interfaces.Reactions.Basics.ThreeSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
    parameter BioChem.Units.EquilibriumCoefficient kS1 = 1 "Equilibrium coefficient for substrate 1";
    parameter BioChem.Units.EquilibriumCoefficient kS2 = 1 "Equilibrium coefficient for substrate 2";
    parameter BioChem.Units.EquilibriumCoefficient kS3 = 1 "Equilibrium coefficient for substrate 3";
    parameter BioChem.Units.EquilibriumCoefficient kP[dimP] = fill(1, dimP) "Equilibrium coefficients for the products";
  equation
    for i in 1:dimP loop
      p[i].c = s1.c * kP[i] / kS1;
    end for;
    s2.c = s1.c * kS2 / kS1;
    s3.c = s1.c * kS3 / kS1;
    s1.r + s2.r + s3.r + sum(p.r) = 0;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Tmf;

  model Qqf "Quad-quad fast (instant) equilibrium reaction"
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
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Qqf;

  model Qmf "Quad-multi fast (instant) equilibrium reaction"
    extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
    extends BioChem.Interfaces.Reactions.Basics.FourSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
    parameter BioChem.Units.EquilibriumCoefficient kS1 = 1 "Equilibrium coefficient for substrate 1";
    parameter BioChem.Units.EquilibriumCoefficient kS2 = 1 "Equilibrium coefficient for substrate 2";
    parameter BioChem.Units.EquilibriumCoefficient kS3 = 1 "Equilibrium coefficient for substrate 3";
    parameter BioChem.Units.EquilibriumCoefficient kS4 = 1 "Equilibrium coefficient for substrate 4";
    parameter BioChem.Units.EquilibriumCoefficient kP[dimP] = fill(1, dimP) "Equilibrium coefficients for the products";
  equation
    for i in 1:dimP loop
      p[i].c = s1.c * kP[i] / kS1;
    end for;
    s2.c = s1.c * kS2 / kS1;
    s3.c = s1.c * kS3 / kS1;
    s4.c = s1.c * kS4 / kS1;
    s1.r + s2.r + s3.r + s4.r + sum(p.r) = 0;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Qmf;

  model Mmf "Multi-multi fast (instant) equilibrium reaction"
    extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
    extends BioChem.Interfaces.Reactions.Basics.MultipleSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
    parameter BioChem.Units.EquilibriumCoefficient kS[dimS] = fill(1, dimS) "Equilibrium coefficients for the substrates";
    parameter BioChem.Units.EquilibriumCoefficient kP[dimP] = fill(1, dimP) "Equilibrium coefficients for the products";
  equation
    for i in 1:dimP loop
      p[i].c = s[1].c * kP[i] / kS[1];
    end for;
    for i in 2:dimS loop
      s[i].c = s[1].c * kS[i] / kS[1];
    end for;
    sum(s.r) + sum(p.r) = 0;
    annotation(Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Mmf;
  annotation(Diagram(coordinateSystem(extent = {{-100.0, -100.0}, {100.0, 100.0}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Documentation(info = "<p>The reaction in the FastEquilibrium package is used to model reactions that are very fast, and could be seen as an instant balance. These models are approximated to very fast reactions, if translated to SBML.</p>
 <p><img src=\"modelica://BioChem/Resources/Images/Fast.png\" alt=\"\" /></p>", revisions = ""));
end FastEquilibrium;