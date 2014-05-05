within BioChem;
package Reactions "Reaction edges"
  extends Icons.Library;
  annotation(Documentation(info="<html>
<h1>Reactions</h1>
 <p>

 This package contains reaction models. Each reaction is represented
 by an arrow, and substances are connected to the arrowheads.
 The reactions in this package accept one to three reactants and products,
 and some reactions also need an activator/inhibitor/modifier.
 Substances are connected to the arrowheads, and activators/inhibitors/modifiers are
 connected to the top or bottom of the circle containing a plus, a minus or the letter M.
 <br><br>
 Reactions can take place between two compartments. If the reaction has more than one substrates or products,
 all substrates need to be located in one compartment, and all products also need to be in one compartment.
 </p>
 </html>", revisions=""), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10}), graphics={Text(origin={15.9037,-7.71383}, fillPattern=FillPattern.Solid, extent={{-85.9037,-92.2862},{-50,57.7138}}, textString="A", fontName="Arial"),Text(origin={-10,-7.71383}, fillPattern=FillPattern.Solid, extent={{25,-92.2862},{60,57.7138}}, textString="B", fontName="Arial"),Line(origin={-0.31,-6.93}, points={{-31.5,-17.25},{10.31,-17.25}}, thickness=3, arrow={Arrow.None,Arrow.Open}, arrowSize=20)}), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  package FastEquilibrium "Base classes for reactions with fast (instant) equilibrium"
    extends Icons.Library;
    annotation(Diagram(coordinateSystem(extent={{-100.0,-100.0},{100.0,100.0}}, preserveAspectRatio=true, grid={10,10})), Documentation(info="<html>
<h1>FastEquilibrium</h1>
The reaction in the FastEquilibrium package is used to model reactions that are very fast, and could be seen as an instant balance. These models are approximated to very fast reactions, if translated to SBML.

<br>
<img src=\"modelica://BioChem/Resources/Images/Fast.png\" >
<br>
</html>", revisions=""));
    model Uuf "Uni-Uni fast (instant) equilibrium reaction"
      extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
      extends BioChem.Interfaces.Reactions.Basics.OneSubstrateReversible;
      extends BioChem.Interfaces.Reactions.Basics.OneProduct;
      parameter BioChem.Units.EquilibriumCoefficient kS1=1 "Equilibrium coefficient for the substrate";
      parameter BioChem.Units.EquilibriumCoefficient kP1=1 "Equilibrium coefficient for the product";
      annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    equation
      p1.c=s1.c*kP1/kS1;
      s1.r + p1.r=0;
    end Uuf;

    model Utf "Uni-Tri fast (instant) equilibrium reaction"
      extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
      extends BioChem.Interfaces.Reactions.Basics.OneSubstrateReversible;
      extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
      parameter BioChem.Units.EquilibriumCoefficient kS1=1 "Equilibrium coefficient for the substrate";
      parameter BioChem.Units.EquilibriumCoefficient kP1=1 "Equilibrium coefficient for product 1";
      parameter BioChem.Units.EquilibriumCoefficient kP2=1 "Equilibrium coefficient for product 2";
      parameter BioChem.Units.EquilibriumCoefficient kP3=1 "Equilibrium coefficient for product 3";
      annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    equation
      p1.c=s1.c*kP1/kS1;
      p2.c=s1.c*kP2/kS1;
      p3.c=s1.c*kP3/kS1;
      s1.r + p1.r + p2.r + p3.r=0;
    end Utf;

    model Ubf "Uni-Bi fast (instant) equilibrium reaction"
      extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
      extends BioChem.Interfaces.Reactions.Basics.OneSubstrateReversible;
      extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
      parameter BioChem.Units.EquilibriumCoefficient kS1=1 "Equilibrium coefficient for the substrate";
      parameter BioChem.Units.EquilibriumCoefficient kP1=1 "Equilibrium coefficient for product 1";
      parameter BioChem.Units.EquilibriumCoefficient kP2=1 "Equilibrium coefficient for product 2";
      annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    equation
      p1.c=s1.c*kP1/kS1;
      p2.c=s1.c*kP2/kS1;
      s1.r + p1.r + p2.r=0;
    end Ubf;

    model Ttf "Tri-Tri fast (instant) equilibrium reaction"
      extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
      extends BioChem.Interfaces.Reactions.Basics.ThreeSubstratesReversible;
      extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
      parameter BioChem.Units.EquilibriumCoefficient kS1=1 "Equilibrium coefficient for substrate 1";
      parameter BioChem.Units.EquilibriumCoefficient kS2=1 "Equilibrium coefficient for substrate 2";
      parameter BioChem.Units.EquilibriumCoefficient kS3=1 "Equilibrium coefficient for substrate 3";
      parameter BioChem.Units.EquilibriumCoefficient kP1=1 "Equilibrium coefficient for product 1";
      parameter BioChem.Units.EquilibriumCoefficient kP2=1 "Equilibrium coefficient for product 2";
      parameter BioChem.Units.EquilibriumCoefficient kP3=1 "Equilibrium coefficient for product 3";
      annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    equation
      p1.c=s1.c*kP1/kS1;
      p2.c=s1.c*kP2/kS1;
      p3.c=s1.c*kP3/kS1;
      s2.c=s1.c*kS2/kS1;
      s3.c=s1.c*kS3/kS1;
      s1.r + s2.r + s3.r + p1.r + p2.r + p3.r=0;
    end Ttf;

    model Btf "Bi-Tri fast (instant) equilibrium reaction"
      extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
      extends BioChem.Interfaces.Reactions.Basics.TwoSubstratesReversible;
      extends BioChem.Interfaces.Reactions.Basics.ThreeProducts;
      parameter BioChem.Units.EquilibriumCoefficient kS1=1 "Equilibrium coefficient for substrate 1";
      parameter BioChem.Units.EquilibriumCoefficient kS2=1 "Equilibrium coefficient for substrate 2";
      parameter BioChem.Units.EquilibriumCoefficient kP1=1 "Equilibrium coefficient for product 1";
      parameter BioChem.Units.EquilibriumCoefficient kP2=1 "Equilibrium coefficient for product 2";
      parameter BioChem.Units.EquilibriumCoefficient kP3=1 "Equilibrium coefficient for product 3";
      annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    equation
      p1.c=s1.c*kP1/kS1;
      p2.c=s1.c*kP2/kS1;
      p3.c=s1.c*kP3/kS1;
      s2.c=s1.c*kS2/kS1;
      s1.r + s2.r + p1.r + p2.r + p3.r=0;
    end Btf;

    model Bbf "Bi-Bi fast (instant) equilibrium reaction"
      extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
      extends BioChem.Interfaces.Reactions.Basics.TwoSubstratesReversible;
      extends BioChem.Interfaces.Reactions.Basics.TwoProducts;
      parameter BioChem.Units.EquilibriumCoefficient kS1=1 "Equilibrium coefficient for substrate 1";
      parameter BioChem.Units.EquilibriumCoefficient kS2=1 "Equilibrium coefficient for substrate 2";
      parameter BioChem.Units.EquilibriumCoefficient kP1=1 "Equilibrium coefficient for product 1";
      parameter BioChem.Units.EquilibriumCoefficient kP2=1 "Equilibrium coefficient for product 2";
      annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    equation
      p1.c=s1.c*kP1/kS1;
      p2.c=s1.c*kP2/kS1;
      s2.c=s1.c*kS2/kS1;
      s1.r + s2.r + p1.r + p2.r=0;
    end Bbf;

    model Qqf "Quad-Quad fast (instant) equilibrium reaction"
      extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
      extends BioChem.Interfaces.Reactions.Basics.FourSubstratesReversible;
      extends BioChem.Interfaces.Reactions.Basics.FourProducts;
      parameter BioChem.Units.EquilibriumCoefficient kS1=1 "Equilibrium coefficient for substrate 1";
      parameter BioChem.Units.EquilibriumCoefficient kS2=1 "Equilibrium coefficient for substrate 2";
      parameter BioChem.Units.EquilibriumCoefficient kS3=1 "Equilibrium coefficient for substrate 3";
      parameter BioChem.Units.EquilibriumCoefficient kS4=1 "Equilibrium coefficient for substrate 4";
      parameter BioChem.Units.EquilibriumCoefficient kP1=1 "Equilibrium coefficient for product 1";
      parameter BioChem.Units.EquilibriumCoefficient kP2=1 "Equilibrium coefficient for product 2";
      parameter BioChem.Units.EquilibriumCoefficient kP3=1 "Equilibrium coefficient for product 3";
      parameter BioChem.Units.EquilibriumCoefficient kP4=1 "Equilibrium coefficient for product 4";
      annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    equation
      p1.c=s1.c*kP1/kS1;
      p2.c=s1.c*kP2/kS1;
      p3.c=s1.c*kP3/kS1;
      p4.c=s1.c*kP4/kS1;
      s2.c=s1.c*kS2/kS1;
      s3.c=s1.c*kS3/kS1;
      s4.c=s1.c*kS4/kS1;
      s1.r + s2.r + s3.r + s4.r + p1.r + p2.r + p3.r + p4.r=0;
    end Qqf;

    model Uqf
      extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
      extends BioChem.Interfaces.Reactions.Basics.OneSubstrateReversible;
      extends BioChem.Interfaces.Reactions.Basics.FourProducts;
      parameter BioChem.Units.EquilibriumCoefficient kS1=1 "Equilibrium coefficient for the substrate";
      parameter BioChem.Units.EquilibriumCoefficient kP1=1 "Equilibrium coefficient for product 1";
      parameter BioChem.Units.EquilibriumCoefficient kP2=1 "Equilibrium coefficient for product 2";
      parameter BioChem.Units.EquilibriumCoefficient kP3=1 "Equilibrium coefficient for product 3";
      parameter BioChem.Units.EquilibriumCoefficient kP4=1 "Equilibrium coefficient for product 4";
      annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    equation
      p1.c=s1.c*kP1/kS1;
      p2.c=s1.c*kP2/kS1;
      p3.c=s1.c*kP3/kS1;
      p4.c=s1.c*kP4/kS1;
      s1.r + p1.r + p2.r + p3.r + p4.c=0;
    end Uqf;

    model Bqf "Bi-Quad fast (instant) equilibrium reaction"
      extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
      extends BioChem.Interfaces.Reactions.Basics.TwoSubstratesReversible;
      extends BioChem.Interfaces.Reactions.Basics.FourProducts;
      parameter BioChem.Units.EquilibriumCoefficient kS1=1 "Equilibrium coefficient for substrate 1";
      parameter BioChem.Units.EquilibriumCoefficient kS2=1 "Equilibrium coefficient for substrate 2";
      parameter BioChem.Units.EquilibriumCoefficient kP1=1 "Equilibrium coefficient for product 1";
      parameter BioChem.Units.EquilibriumCoefficient kP2=1 "Equilibrium coefficient for product 2";
      parameter BioChem.Units.EquilibriumCoefficient kP3=1 "Equilibrium coefficient for product 3";
      parameter BioChem.Units.EquilibriumCoefficient kP4=1 "Equilibrium coefficient for product 4";
      annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    equation
      p1.c=s1.c*kP1/kS1;
      p2.c=s1.c*kP2/kS1;
      p3.c=s1.c*kP3/kS1;
      p4.c=s1.c*kP4/kS1;
      s2.c=s1.c*kS2/kS1;
      s1.r + s2.r + p1.r + p2.r + p3.r + p4.r=0;
    end Bqf;

    model Tqf "Tri-Quad fast (instant) equilibrium reaction"
      extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
      extends BioChem.Interfaces.Reactions.Basics.ThreeSubstratesReversible;
      extends BioChem.Interfaces.Reactions.Basics.FourProducts;
      parameter BioChem.Units.EquilibriumCoefficient kS1=1 "Equilibrium coefficient for substrate 1";
      parameter BioChem.Units.EquilibriumCoefficient kS2=1 "Equilibrium coefficient for substrate 2";
      parameter BioChem.Units.EquilibriumCoefficient kS3=1 "Equilibrium coefficient for substrate 3";
      parameter BioChem.Units.EquilibriumCoefficient kP1=1 "Equilibrium coefficient for product 1";
      parameter BioChem.Units.EquilibriumCoefficient kP2=1 "Equilibrium coefficient for product 2";
      parameter BioChem.Units.EquilibriumCoefficient kP3=1 "Equilibrium coefficient for product 3";
      parameter BioChem.Units.EquilibriumCoefficient kP4=1 "Equilibrium coefficient for product 4";
      annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    equation
      p1.c=s1.c*kP1/kS1;
      p2.c=s1.c*kP2/kS1;
      p3.c=s1.c*kP3/kS1;
      p4.c=s1.c*kP4/kS1;
      s2.c=s1.c*kS2/kS1;
      s3.c=s1.c*kS3/kS1;
      s1.r + s2.r + s3.r + p1.r + p2.r + p3.r + p4.r=0;
    end Tqf;

    model Mmf "Multi-Multi fast (instant) equilibrium reaction"
      extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
      extends BioChem.Interfaces.Reactions.Basics.MultipleSubstratesReversible;
      extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
      parameter BioChem.Units.EquilibriumCoefficient kS[dimS]=fill(1, dimS) "Equilibrium coefficients for the substrates";
      parameter BioChem.Units.EquilibriumCoefficient kP[dimP]=fill(1, dimP) "Equilibrium coefficients for the products";
      annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    equation
      for i in 1:dimP loop
        p[i].c=s[1].c*kP[i]/kS[1];
      end for;
      for i in 2:dimS loop
        s[i].c=s[1].c*kS[i]/kS[1];
      end for;
      sum(s.r) + sum(p.r)=0;
    end Mmf;

    model Umf "Uni-Multi fast (instant) equilibrium reaction"
      extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
      extends BioChem.Interfaces.Reactions.Basics.OneSubstrateReversible;
      extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
      parameter BioChem.Units.EquilibriumCoefficient kS1=1 "Equilibrium coefficient for substrate 1";
      parameter BioChem.Units.EquilibriumCoefficient kP[dimP]=fill(1, dimP) "Equilibrium coefficients for the products";
      annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    equation
      for i in 1:dimP loop
        p[i].c=s1.c*kP[i]/kS1;
      end for;
      s1.r + sum(p.r)=0;
    end Umf;

    model Bmf "Bi-Multi fast (instant) equilibrium reaction"
      extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
      extends BioChem.Interfaces.Reactions.Basics.TwoSubstratesReversible;
      extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
      parameter BioChem.Units.EquilibriumCoefficient kS1=1 "Equilibrium coefficient for substrate 1";
      parameter BioChem.Units.EquilibriumCoefficient kS2=1 "Equilibrium coefficient for substrate 2";
      parameter BioChem.Units.EquilibriumCoefficient kP[dimP]=fill(1, dimP) "Equilibrium coefficients for the products";
      annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    equation
      for i in 1:dimP loop
        p[i].c=s1.c*kP[i]/kS1;
      end for;
      s2.c=s1.c*kS2/kS1;
      s1.r + s2.r + sum(p.r)=0;
    end Bmf;

    model Qmf "Quad-Multi fast (instant) equilibrium reaction"
      extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
      extends BioChem.Interfaces.Reactions.Basics.FourSubstratesReversible;
      extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
      parameter BioChem.Units.EquilibriumCoefficient kS1=1 "Equilibrium coefficient for substrate 1";
      parameter BioChem.Units.EquilibriumCoefficient kS2=1 "Equilibrium coefficient for substrate 2";
      parameter BioChem.Units.EquilibriumCoefficient kS3=1 "Equilibrium coefficient for substrate 3";
      parameter BioChem.Units.EquilibriumCoefficient kS4=1 "Equilibrium coefficient for substrate 4";
      parameter BioChem.Units.EquilibriumCoefficient kP[dimP]=fill(1, dimP) "Equilibrium coefficients for the products";
      annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    equation
      for i in 1:dimP loop
        p[i].c=s1.c*kP[i]/kS1;
      end for;
      s2.c=s1.c*kS2/kS1;
      s3.c=s1.c*kS3/kS1;
      s4.c=s1.c*kS4/kS1;
      s1.r + s2.r + s3.r + s4.r + sum(p.r)=0;
    end Qmf;

    model Tmf "Tri-Multi fast (instant) equilibrium reaction"
      extends BioChem.Interfaces.Reactions.Basics.FastEquilibrium;
      extends BioChem.Interfaces.Reactions.Basics.ThreeSubstratesReversible;
      extends BioChem.Interfaces.Reactions.Basics.MultipleProducts;
      parameter BioChem.Units.EquilibriumCoefficient kS1=1 "Equilibrium coefficient for substrate 1";
      parameter BioChem.Units.EquilibriumCoefficient kS2=1 "Equilibrium coefficient for substrate 2";
      parameter BioChem.Units.EquilibriumCoefficient kS3=1 "Equilibrium coefficient for substrate 3";
      parameter BioChem.Units.EquilibriumCoefficient kP[dimP]=fill(1, dimP) "Equilibrium coefficients for the products";
      annotation(Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    equation
      for i in 1:dimP loop
        p[i].c=s1.c*kP[i]/kS1;
      end for;
      s2.c=s1.c*kS2/kS1;
      s3.c=s1.c*kS3/kS1;
      s1.r + s2.r + s3.r + sum(p.r)=0;
    end Tmf;

  end FastEquilibrium;

end Reactions;
