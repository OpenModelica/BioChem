within BioChem.Reactions.MassAction;
package Irreversible "Irreversible reactions"
  extends Icons.Library;
  annotation(Documentation(info="<html>
 <p>This package contains models for irreversible reactions with one to three reactants and products.</p>
 </html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  package UniUni "A -> B reactions"
    extends Icons.Library;
    annotation(Documentation(info="<html>
 <p>This package contains models for stoichiometric reactions with one reactant and one product.</p>
 </html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    model Uuifi "Uni-uni irrerversible forward inhibition reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Uui;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1/iF1.c*s1.c^nS1*s1.V;
    end Uuifi;

    model Uuifafi "Uni-uni irrerversible forward activation, forward inhibition reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Uui;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*aF1.c/iF1.c*s1.c^nS1*s1.V;
    end Uuifafi;

    model Uuifa "Uni-uni irrerversible forward activation reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Uui;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*aF1.c*s1.c^nS1*s1.V;
    end Uuifa;

    model Uui "Uni-uni irrerversible reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Uui;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*s1.c^nS1*s1.V;
    end Uui;

  end UniUni;

  package UniTri "A -> B+C+D reactions"
    extends Icons.Library;
    annotation(Documentation(info="<html>
 <p>This package contains models for stoichiometric reactions with one reactant and three products.</p>
 </html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    model Utifi "Uni-tri irrerversible forward inhibition reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Uti;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1/iF1.c*s1.c^nS1*s1.V;
    end Utifi;

    model Utifafi "Uni-tri irrerversible forward activation, forward inhibition reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Uti;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*aF1.c/iF1.c*s1.c^nS1*s1.V;
    end Utifafi;

    model Utifa "Uni-tri irrerversible forward activation reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Uti;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*aF1.c*s1.c^nS1*s1.V;
    end Utifa;

    model Uti "Uni-tri irrerversible reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Uti;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*s1.c^nS1*s1.V;
    end Uti;

  end UniTri;

  package UniBi "A -> B+C reactions"
    extends Icons.Library;
    annotation(Documentation(info="<html>
 <p>This package contains models for stoichiometric reactions with one reactant and two products.</p>
 </html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    model Ubifi "Uni-bi irrerversible forward inhibition reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Ubi;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1/iF1.c*s1.c^nS1*s1.V;
    end Ubifi;

    model Ubifafi "Uni-bi irrerversible forward activation, forward inhibition reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Ubi;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*aF1.c/iF1.c*s1.c^nS1*s1.V;
    end Ubifafi;

    model Ubifa "Uni-bi irrerversible forward activation reaction"
      annotation(Documentation(info="<html>
 <ul>
 Main Author 2007-2008: Jan Brug&aring;rd, MathCore Engineering AB<br>Main Author 2006: Erik Ulfhielm<br>
 Main Author 2004-2005: Emma Larsdotter Nilsson<br><br>

 Copyright (c) 2005-2008 MathCore Engineering AB, Link&ouml;pings universitet and Modelica Association<br><br>

 The BioChem package is free software and can be redistributed<br>
 and/or modified under the terms of the Modelica License with<br>
 the additional provision that changed parts of BioChem also<br>
 must be made available under this License.<br>
 </ul>
 </html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Ubi;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*aF1.c*s1.c^nS1*s1.V;
    end Ubifa;

    model Ubi "Uni-bi irrerversible reaction"
      annotation(Documentation(info="<html>
 <ul>
 Main Author 2007-2008: Jan Brug&aring;rd, MathCore Engineering AB<br>Main Author 2006: Erik Ulfhielm<br>
 Main Author 2004-2005: Emma Larsdotter Nilsson<br><br>

 Copyright (c) 2005-2008 MathCore Engineering AB, Link&ouml;pings universitet and Modelica Association<br><br>

 The BioChem package is free software and can be redistributed<br>
 and/or modified under the terms of the Modelica License with<br>
 the additional provision that changed parts of BioChem also<br>
 must be made available under this License.<br>
 </ul>
 </html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Ubi;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*s1.c^nS1*s1.V;
    end Ubi;

  end UniBi;

  package TriUni "A+B+C -> D reactions"
    extends Icons.Library;
    annotation(Documentation(info="<html>
 <p>This package contains models for stoichiometric reactions with three reactants and one product.</p>
 </html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    model Tuifi "Tri-uni irrerversible forward inhibition reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Tui;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1/iF1.c*s1.c^nS1*s2.c^nS2*s3.c^nS3*s1.V;
    end Tuifi;

    model Tuifafi "Tri-uni irrerversible forward activation, forward inhibition reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Tui;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*aF1.c/iF1.c*s1.c^nS1*s2.c^nS2*s3.c^nS3*s1.V;
    end Tuifafi;

    model Tuifa "Tri-uni irrerversible forward activation reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Tui;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*aF1.c*s1.c^nS1*s2.c^nS2*s3.c^nS3*s1.V;
    end Tuifa;

    model Tui "Tri-uni irrerversible reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Tui;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*s1.c^nS1*s2.c^nS2*s3.c^nS3*s1.V;
    end Tui;

  end TriUni;

  package TriTri "A+B+C -> D+E+F reactions"
    extends Icons.Library;
    annotation(Documentation(info="<html>
 <p>This package contains models for stoichiometric reactions with three reactants and three products.</p>
 </html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    model Ttifi "Tri-tri irrerversible forward inhibition reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Tti;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1/iF1.c*s1.c^nS1*s2.c^nS2*s3.c^nS3*s1.V;
    end Ttifi;

    model Ttifafi "Tri-tri irrerversible forward activation, forward inhibition reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Tti;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*aF1.c/iF1.c*s1.c^nS1*s2.c^nS2*s3.c^nS3*s1.V;
    end Ttifafi;

    model Ttifa "Tri-tri irrerversible forward activation reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Tti;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*aF1.c*s1.c^nS1*s2.c^nS2*s3.c^nS3*s1.V;
    end Ttifa;

    model Tti "Tri-tri irrerversible reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Tti;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*s1.c^nS1*s2.c^nS2*s3.c^nS3*s1.V;
    end Tti;

  end TriTri;

  package TriBi "A+B+C -> D+E reactions"
    extends Icons.Library;
    annotation(Documentation(info="<html>
 <p>This package contains models for stoichiometric reactions with three reactants and two products</p>
 </html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    model Tbifi "Tri-bi irrerversible forward inhibition reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Tbi;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1/iF1.c*s1.c^nS1*s2.c^nS2*s3.c^nS3*s1.V;
    end Tbifi;

    model Tbifafi "Tri-bi irrerversible forward activation, forward inhibition reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Tbi;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*aF1.c/iF1.c*s1.c^nS1*s2.c^nS2*s3.c^nS3*s1.V;
    end Tbifafi;

    model Tbifa "Tri-bi irrerversible forward activation reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Tbi;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*aF1.c*s1.c^nS1*s2.c^nS2*s3.c^nS3*s1.V;
    end Tbifa;

    model Tbi "Tri-bi irrerversible reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Tbi;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*s1.c^nS1*s2.c^nS2*s3.c^nS3*s1.V;
    end Tbi;

  end TriBi;

  package BiUni "A+B -> C reactions"
    extends Icons.Library;
    annotation(Documentation(info="<html>
 <p>This package contains models for stoichiometric reactions with two reactants and one product.</p>
 </html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    model Buifi "Bi-uni irrerversible forward inhibition reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Bui;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1/iF1.c*s1.c^nS1*s2.c^nS2*s1.V;
    end Buifi;

    model Buifafi "Bi-uni irrerversible forward activation, forward inhibition reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Bui;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*aF1.c/iF1.c*s1.c^nS1*s2.c^nS2*s1.V;
    end Buifafi;

    model Buifa "Bi-uni irrerversible forward activation reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Bui;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*aF1.c*s1.c^nS1*s2.c^nS2*s1.V;
    end Buifa;

    model Bui "Bi-uni irrerversible reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Bui;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*s1.c^nS1*s2.c^nS2*s1.V;
    end Bui;

  end BiUni;

  package BiTri "A+B -> C+D+E reactions"
    extends Icons.Library;
    annotation(Documentation(info="<html>
 <p>This package contains models for stoichiometric reactions with two reactants and three products.</p>
 </html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    model Btifi "Bi-tri irrerversible forward inhibition reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Bti;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1/iF1.c*s1.c^nS1*s2.c^nS2*s1.V;
    end Btifi;

    model Btifafi "Bi-tri irrerversible forward activation, forward inhibition reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Bti;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*aF1.c/iF1.c*s1.c^nS1*s2.c^nS2*s1.V;
    end Btifafi;

    model Btifa "Bi-tri irrerversible forward activation reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Bti;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*aF1.c*s1.c^nS1*s2.c^nS2*s1.V;
    end Btifa;

    model Bti "Bi-tri irrerversible reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Bti;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*s1.c^nS1*s2.c^nS2*s1.V;
    end Bti;

  end BiTri;

  package BiBi "A+B -> C+D reactions"
    extends Icons.Library;
    annotation(Documentation(info="<html>
 <p>This package contains models for stoichiometric reactions with two reactants and two products.</p>
 </html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    model Bbifi "Bi-bi irrerversible forward inhibition reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Bbi;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1/iF1.c*s1.c^nS1*s2.c^nS2*s1.V;
    end Bbifi;

    model Bbifafi "Bi-bi irrerversible forward activation, forward inhibition reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Bbi;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      extends BioChem.Interfaces.Reactions.Modifiers.InhibitorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*aF1.c/iF1.c*s1.c^nS1*s2.c^nS2*s1.V;
    end Bbifafi;

    model Bbifa "Bi-bi irrerversible forward activation reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Bbi;
      extends BioChem.Interfaces.Reactions.Modifiers.ActivatorForward;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*aF1.c*s1.c^nS1*s2.c^nS2*s1.V;
    end Bbifa;

    model Bbi "Bi-bi irrerversible reaction"
      annotation(Documentation(), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
      extends BioChem.Interfaces.Reactions.Bbi;
      parameter BioChem.Units.ReactionCoefficient k1=1 "Forwards reaction coefficient for the reaction";
    equation
      rr=k1*s1.c^nS1*s2.c^nS2*s1.V;
    end Bbi;

  end BiBi;

end Irreversible;
