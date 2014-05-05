within BioChem.Interfaces;
package Reactions "Partial models, extended by models in the subpackage Reactions"
  extends Icons.Library;
  annotation(Documentation(info="<html>
<h1>Reactions</h1>
 <p>
This package contains partial reaction models that can be used as templates when composing new reactions. In fact all reactions found in the
<a href=\"Modelica://BioChem.Reactions\">Reactions</a>
 are based on these partial reaction models.
All reactions need at least one substrate and at least one product. This package contains base classes for any combination of substrates and products for reversible as well as irreversible reactions, as illustrated in <a href=\"#fig1\">Figure 1</a>. The first letter in the reaction name indicates the number of substrates, and the second the number of products. Finally, the third letter indicates if the reaction is reversible (r) or irreversible (i). All these information is also illustrated by the icon.
 </p>

<a name=\"fig1\"></a>
<img src=\"modelica://BioChem/Resources/Images/Reactions.png\" alt=\"Fig1:Reactions\"><br>
<i>Figure 1:  Some of the reactions</i><br>

 </html>", revisions=""), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  partial model Uur "Uni-Uni reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.OneSubstrateReversible;
    extends BioChem.Interfaces.Reactions.Basics.OneProduct;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for the substrate";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for the product";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    p1.r=-nP1*rr;
  end Uur;

  partial model Uui "Uni-Uni irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.OneSubstrate;
    extends BioChem.Interfaces.Reactions.Basics.OneProduct;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for the substrate";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for the product";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    p1.r=-nP1*rr;
  end Uui;

  partial model Utr "Uni-Tri reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.OneSubstrateReversible;
    extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for the substrate";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    BioChem.Units.StoichiometricCoefficient nP3=1 "Stoichiometric coefficient for product 3";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
    p3.r=-nP3*rr;
  end Utr;

  partial model Uti "Uni-Tri irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.OneSubstrate;
    extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for the substrate";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    BioChem.Units.StoichiometricCoefficient nP3=1 "Stoichiometric coefficient for product 3";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
    p3.r=-nP3*rr;
  end Uti;

  partial model Ubr "Uni-Bi reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.OneSubstrateReversible;
    extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for the substrate";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
  end Ubr;

  partial model Ubi "Uni-Bi irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.OneSubstrate;
    extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for the substrate";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
  end Ubi;

  partial model Tur "Tri-Uni reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.ThreeSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.OneProduct;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nS3=1 "Stoichiometric coefficient for substrate 3";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for the product";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    s3.r=nS3*rr;
    p1.r=-nP1*rr;
  end Tur;

  partial model Tui "Tri-Uni irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.ThreeSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.OneProduct;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nS3=1 "Stoichiometric coefficient for substrate 3";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for the product";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    s3.r=nS3*rr;
    p1.r=-nP1*rr;
  end Tui;

  partial model Ttr "Tri-Tri reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.ThreeSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nS3=1 "Stoichiometric coefficient for substrate 3";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    BioChem.Units.StoichiometricCoefficient nP3=1 "Stoichiometric coefficient for product 3";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    s3.r=nS3*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
    p3.r=-nP3*rr;
  end Ttr;

  partial model Tti "Tri-Tri irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.ThreeSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nS3=1 "Stoichiometric coefficient for substrate 3";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    BioChem.Units.StoichiometricCoefficient nP3=1 "Stoichiometric coefficient for product 3";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    s3.r=nS3*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
    p3.r=-nP3*rr;
  end Tti;

  partial model Tbr "Tri-Bi reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.ThreeSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nS3=1 "Stoichiometric coefficient for substrate 3";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    s3.r=nS3*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
  end Tbr;

  partial model Tbi "Tri-Bi irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.ThreeSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nS3=1 "Stoichiometric coefficient for substrate 3";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    s3.r=nS3*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
  end Tbi;

  partial model Bur "Bi-Uni reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.TwoSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.OneProduct;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for the product";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    p1.r=-nP1*rr;
  end Bur;

  partial model Bui "Bi-Uni irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.TwoSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.OneProduct;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for the product";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    p1.r=-nP1*rr;
  end Bui;

  partial model Btr "Bi-Tri reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.TwoSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    BioChem.Units.StoichiometricCoefficient nP3=1 "Stoichiometric coefficient for product 3";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
    p3.r=-nP3*rr;
  end Btr;

  partial model Bti "Bi-Tri irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.TwoSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    BioChem.Units.StoichiometricCoefficient nP3=1 "Stoichiometric coefficient for product 3";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
    p3.r=-nP3*rr;
  end Bti;

  partial model Bbr "Bi-Bi reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.TwoSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
  end Bbr;

  partial model Bbi "Bi-Bi irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.TwoSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
  end Bbi;

  partial model Qbi "Quad-Bi irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.FourSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nS3=1 "Stoichiometric coefficient for substrate 3";
    BioChem.Units.StoichiometricCoefficient nS4=1 "Stoichiometric coefficient for substrate 4";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    s3.r=nS3*rr;
    s4.r=nS4*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
  end Qbi;

  partial model Qbr "Quad-Bi reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.FourSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nS3=1 "Stoichiometric coefficient for substrate 3";
    BioChem.Units.StoichiometricCoefficient nS4=1 "Stoichiometric coefficient for substrate 4";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    s3.r=nS3*rr;
    s4.r=nS4*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
  end Qbr;

  partial model Qti "Quad-Tri irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.FourSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nS3=1 "Stoichiometric coefficient for substrate 3";
    BioChem.Units.StoichiometricCoefficient nS4=1 "Stoichiometric coefficient for substrate 4";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    BioChem.Units.StoichiometricCoefficient nP3=1 "Stoichiometric coefficient for product 3";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    s3.r=nS3*rr;
    s4.r=nS4*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
    p3.r=-nP3*rr;
  end Qti;

  partial model Qtr "Quad-Tri reversible reaction"
    annotation(Diagram(coordinateSystem(extent={{-148.5,105},{148.5,-105}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.FourSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nS3=1 "Stoichiometric coefficient for substrate 3";
    BioChem.Units.StoichiometricCoefficient nS4=1 "Stoichiometric coefficient for substrate 4";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    BioChem.Units.StoichiometricCoefficient nP3=1 "Stoichiometric coefficient for product 3";
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    s3.r=nS3*rr;
    s4.r=nS4*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
    p3.r=-nP3*rr;
  end Qtr;

  model Qui "Quad-Uni irreversible reaction"
    annotation(Diagram(coordinateSystem(extent={{-148.5,105},{148.5,-105}}, preserveAspectRatio=true, grid={10,10})), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.FourSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.OneProduct;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nS3=1 "Stoichiometric coefficient for substrate 3";
    BioChem.Units.StoichiometricCoefficient nS4=1 "Stoichiometric coefficient for substrate 4";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    s3.r=nS3*rr;
    s4.r=nS4*rr;
    p1.r=-nP1*rr;
  end Qui;

  partial model Qur "Quad-Uni reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.FourSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.OneProduct;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nS3=1 "Stoichiometric coefficient for substrate 3";
    BioChem.Units.StoichiometricCoefficient nS4=1 "Stoichiometric coefficient for substrate 4";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    s3.r=nS3*rr;
    s4.r=nS4*rr;
    p1.r=-nP1*rr;
  end Qur;

  partial model Qqi "Quad-Quad irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.FourSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.FourProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nS3=1 "Stoichiometric coefficient for substrate 3";
    BioChem.Units.StoichiometricCoefficient nS4=1 "Stoichiometric coefficient for substrate 4";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    BioChem.Units.StoichiometricCoefficient nP3=1 "Stoichiometric coefficient for product 3";
    BioChem.Units.StoichiometricCoefficient nP4=1 "Stoichiometric coefficient for product 4";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    s3.r=nS3*rr;
    s4.r=nS4*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
    p3.r=-nP3*rr;
    p4.r=-nP4*rr;
  end Qqi;

  partial model Qqr "Quad-Quad reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.FourSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.FourProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nS3=1 "Stoichiometric coefficient for substrate 3";
    BioChem.Units.StoichiometricCoefficient nS4=1 "Stoichiometric coefficient for substrate 4";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    BioChem.Units.StoichiometricCoefficient nP3=1 "Stoichiometric coefficient for product 3";
    BioChem.Units.StoichiometricCoefficient nP4=1 "Stoichiometric coefficient for product 4";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    s3.r=nS3*rr;
    s4.r=nS4*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
    p3.r=-nP3*rr;
    p4.r=-nP4*rr;
  end Qqr;

  partial model Uqr
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.OneSubstrateReversible;
    extends BioChem.Interfaces.Reactions.Basics.FourProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for the substrate";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    BioChem.Units.StoichiometricCoefficient nP3=1 "Stoichiometric coefficient for product 3";
    BioChem.Units.StoichiometricCoefficient nP4=1 "Stoichiometric coefficient for product 4";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
    p3.r=-nP3*rr;
    p4.r=-nP4*rr;
  end Uqr;

  partial model Uqi "Uni-Quad irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.OneSubstrate;
    extends BioChem.Interfaces.Reactions.Basics.FourProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for the substrate";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    BioChem.Units.StoichiometricCoefficient nP3=1 "Stoichiometric coefficient for product 3";
    BioChem.Units.StoichiometricCoefficient nP4=1 "Stoichiometric coefficient for product 4";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
    p3.r=-nP3*rr;
    p4.r=-nP4*rr;
  end Uqi;

  partial model Bqi "Bi-Quad irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.TwoSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.FourProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    BioChem.Units.StoichiometricCoefficient nP3=1 "Stoichiometric coefficient for product 3";
    BioChem.Units.StoichiometricCoefficient nP4=1 "Stoichiometric coefficient for product 4";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
    p3.r=-nP3*rr;
    p4.r=-nP4*rr;
  end Bqi;

  partial model Bqr "Bi-Quad reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.TwoSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.FourProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    BioChem.Units.StoichiometricCoefficient nP3=1 "Stoichiometric coefficient for product 3";
    BioChem.Units.StoichiometricCoefficient nP4=1 "Stoichiometric coefficient for product 4";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
    p3.r=-nP3*rr;
    p4.r=-nP4*rr;
  end Bqr;

  partial model Tqr "Tri-Quad reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.ThreeSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.FourProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nS3=1 "Stoichiometric coefficient for substrate 3";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    BioChem.Units.StoichiometricCoefficient nP3=1 "Stoichiometric coefficient for product 3";
    BioChem.Units.StoichiometricCoefficient nP4=1 "Stoichiometric coefficient for product 4";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    s3.r=nS3*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
    p3.r=-nP3*rr;
    p4.r=-nP4*rr;
  end Tqr;

  partial model Tqi "Tri-Quad irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.ThreeSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.FourProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nS3=1 "Stoichiometric coefficient for substrate 3";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    BioChem.Units.StoichiometricCoefficient nP3=1 "Stoichiometric coefficient for product 3";
    BioChem.Units.StoichiometricCoefficient nP4=1 "Stoichiometric coefficient for product 4";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    s3.r=nS3*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
    p3.r=-nP3*rr;
    p4.r=-nP4*rr;
  end Tqi;

  partial model Mmi "Multi-Multi irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.MultipleSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
    BioChem.Units.StoichiometricCoefficient nS[dimS]=fill(1, dimS) "Stoichiometric coefficients for the substrates";
    BioChem.Units.StoichiometricCoefficient nP[dimP]=fill(1, dimP) "Stoichiometric coefficients for the products";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s.r=nS*rr;
    p.r=-nP*rr;
  end Mmi;

  partial model Bmi "Bi-Multi irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.TwoSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nP[dimP]=fill(1, dimP) "Stoichiometric coefficients for the products";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    p.r=-nP*rr;
  end Bmi;

  partial model Qmi "Quad-Multi irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.FourSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nS3=1 "Stoichiometric coefficient for substrate 3";
    BioChem.Units.StoichiometricCoefficient nS4=1 "Stoichiometric coefficient for substrate 4";
    BioChem.Units.StoichiometricCoefficient nP[dimP]=fill(1, dimP) "Stoichiometric coefficients for the products";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    s3.r=nS3*rr;
    s4.r=nS4*rr;
    p.r=-nP*rr;
  end Qmi;

  partial model Tmi "Tri-Multi irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.ThreeSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nS3=1 "Stoichiometric coefficient for substrate 3";
    BioChem.Units.StoichiometricCoefficient nP[dimP]=fill(1, dimP) "Stoichiometric coefficients for the products";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    s3.r=nS3*rr;
    p.r=-nP*rr;
  end Tmi;

  partial model Umi "Uni-Multi irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.OneSubstrate;
    extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nP[dimP]=fill(1, dimP) "Stoichiometric coefficients for the products";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    p.r=-nP*rr;
  end Umi;

  partial model Mqi "Multi-Quad irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.MultipleSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.FourProducts;
    BioChem.Units.StoichiometricCoefficient nS[dimS]=fill(1, dimS) "Stoichiometric coefficients for the substrates";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    BioChem.Units.StoichiometricCoefficient nP3=1 "Stoichiometric coefficient for product 3";
    BioChem.Units.StoichiometricCoefficient nP4=1 "Stoichiometric coefficient for product 4";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s.r=nS*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
    p3.r=-nP3*rr;
    p4.r=-nP4*rr;
  end Mqi;

  partial model Mti "Multi-Tri irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.MultipleSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
    BioChem.Units.StoichiometricCoefficient nS[dimS]=fill(1, dimS) "Stoichiometric coefficients for the substrates";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    BioChem.Units.StoichiometricCoefficient nP3=1 "Stoichiometric coefficient for product 3";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s.r=nS*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
    p3.r=-nP3*rr;
  end Mti;

  partial model Mbi "Multi-Bi irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.MultipleSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
    BioChem.Units.StoichiometricCoefficient nS[dimS]=fill(1, dimS) "Stoichiometric coefficients for the substrates";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s.r=nS*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
  end Mbi;

  partial model Mui "Multi-Uni irreversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.MultipleSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.OneProduct;
    BioChem.Units.StoichiometricCoefficient nS[dimS]=fill(1, dimS) "Stoichiometric coefficients for the substrates";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s.r=nS*rr;
    p1.r=-nP1*rr;
  end Mui;

  partial model Mbr "Multi-Bi reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.MultipleSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
    BioChem.Units.StoichiometricCoefficient nS[dimS]=fill(1, dimS) "Stoichiometric coefficients for the substrates";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s.r=nS*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
  end Mbr;

  partial model Mmr "Multi-Multi reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.MultipleSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
    BioChem.Units.StoichiometricCoefficient nS[dimS]=fill(1, dimS) "Stoichiometric coefficients for the substrates";
    BioChem.Units.StoichiometricCoefficient nP[dimP]=fill(1, dimP) "Stoichiometric coefficients for the products";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s.r=nS*rr;
    p.r=-nP*rr;
  end Mmr;

  partial model Mqr "Multi-Quad reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.MultipleSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.FourProducts;
    BioChem.Units.StoichiometricCoefficient nS[dimS]=fill(1, dimS) "Stoichiometric coefficients for the substrates";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    BioChem.Units.StoichiometricCoefficient nP3=1 "Stoichiometric coefficient for product 3";
    BioChem.Units.StoichiometricCoefficient nP4=1 "Stoichiometric coefficient for product 4";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s.r=nS*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
    p3.r=-nP3*rr;
    p4.r=-nP4*rr;
  end Mqr;

  partial model Mtr "Multi-Tri reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.MultipleSubstrates;
    extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
    BioChem.Units.StoichiometricCoefficient nS[dimS]=fill(1, dimS) "Stoichiometric coefficients for the substrates";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    BioChem.Units.StoichiometricCoefficient nP2=1 "Stoichiometric coefficient for product 2";
    BioChem.Units.StoichiometricCoefficient nP3=1 "Stoichiometric coefficient for product 3";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s.r=nS*rr;
    p1.r=-nP1*rr;
    p2.r=-nP2*rr;
    p3.r=-nP3*rr;
  end Mtr;

  partial model Mur "Multi-Uni reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.MultipleSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.OneProduct;
    BioChem.Units.StoichiometricCoefficient nS[dimS]=fill(1, dimS) "Stoichiometric coefficients for the substrates";
    BioChem.Units.StoichiometricCoefficient nP1=1 "Stoichiometric coefficient for product 1";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s.r=nS*rr;
    p1.r=-nP1*rr;
  end Mur;

  partial model Umr "Uni-Multi reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.OneSubstrateReversible;
    extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nP[dimP]=fill(1, dimP) "Stoichiometric coefficients for the products";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    p.r=-nP*rr;
  end Umr;

  partial model Bmr "Bi-Multi reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.TwoSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nP[dimP]=fill(1, dimP) "Stoichiometric coefficients for the products";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    p.r=-nP*rr;
  end Bmr;

  partial model Qmr "Quad-Multi reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.FourSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nS3=1 "Stoichiometric coefficient for substrate 3";
    BioChem.Units.StoichiometricCoefficient nS4=1 "Stoichiometric coefficient for substrate 4";
    BioChem.Units.StoichiometricCoefficient nP[dimP]=fill(1, dimP) "Stoichiometric coefficients for the products";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    s3.r=nS3*rr;
    s4.r=nS4*rr;
    p.r=-nP*rr;
  end Qmr;

  partial model Tmr "Tri-Multi reversible reaction"
    extends BioChem.Interfaces.Reactions.Basics.Reaction;
    extends BioChem.Interfaces.Reactions.Basics.ThreeSubstratesReversible;
    extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
    BioChem.Units.StoichiometricCoefficient nS1=1 "Stoichiometric coefficient for substrate 1";
    BioChem.Units.StoichiometricCoefficient nS2=1 "Stoichiometric coefficient for substrate 2";
    BioChem.Units.StoichiometricCoefficient nS3=1 "Stoichiometric coefficient for substrate 3";
    BioChem.Units.StoichiometricCoefficient nP[dimP]=fill(1, dimP) "Stoichiometric coefficients for the products";
    annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  equation
    s1.r=nS1*rr;
    s2.r=nS2*rr;
    s3.r=nS3*rr;
    p.r=-nP*rr;
  end Tmr;

end Reactions;
