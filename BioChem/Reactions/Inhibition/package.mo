within BioChem.Reactions;
package Inhibition "Inhibition kinetics reactions"
  extends Icons.Library;
  annotation(Documentation(info="<html>
<h1>Inhibition</h1>
 <p>
In this package, different types of irreversible and reversible inhibition reaction kinetics are collected, e.g. competitive, non-competitive and uncompetitive.
 </p>

<br>
<img src=\"modelica://BioChem/Resources/Images/Inhibition.png\" >
<br>



 </html>", revisions=""), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
  model Uucr "Uncompetitive inhibition (reversible)"
    annotation(Documentation(info="<html>
 <p>
 Uncompetitive inhibition (reversible).
 </p>
 </html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    extends BioChem.Interfaces.Reactions.Uur;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Ki=1 "Inhibition constant for the substrate";
    parameter Real KmS=1 "Forward Michaelis-Menten constant";
    parameter Real KmP=1 "Reverse Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
    parameter BioChem.Units.ReactionRate vR=1 "Reverese maximum velocity";
  equation
    rr=(vF*s1.c/KmS - vR*p1.c/KmP)/(1 + (s1.c/KmS + p1.c/KmP)*(1 + i1.c/Ki));
  end Uucr;

  model Uuci "Irreversible uncompetitive inhibition"
    annotation(Documentation(info="<html>
 <p>
 Irreversible uncompetitive inhibition.
 </p>
 </html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Ki=1 "Inhibition constant for the substrate";
    parameter Real KmS=1 "Forward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
  equation
    rr=vF*s1.c/KmS/(1 + s1.c/KmS*(1 + i1.c/Ki));
  end Uuci;

  model Usir "Reversible substrate inhibition kinetics"
    annotation(Documentation(info="<html>
 <p>
 Reversible substrate inhibition kinetics.
 </p>
 </html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    extends BioChem.Interfaces.Reactions.Uui;
    parameter BioChem.Units.Concentration Ki=1 "Inhibition constant for the substrate";
    parameter Real KmS=1 "Forward Michaelis-Menten constant";
    parameter Real KmP=1 "Reverese Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
    parameter BioChem.Units.ReactionRate vR=1 "Reversible maximum velocity";
  equation
    rr=(vF*s1.c/KmS - vR*p1.c/KmP)/(1 + s1.c/KmS + p1.c/KmP + s1.c^2/Ki);
  end Usir;

  model Usii "Irreversible substrate inhibition kinetics"
    annotation(Documentation(info="<html>
 <p>
 Irreversible substrate inhibition kinetics.
 </p>
 </html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    extends BioChem.Interfaces.Reactions.Uui;
    parameter BioChem.Units.Concentration Ki=1 "Inhibition constant for the substrate";
    parameter Real KmS=1 "Forward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
  equation
    rr=vF*s1.c/KmS/(1 + s1.c/KmS + s1.c^2/Ki);
  end Usii;

  model Unir "Noncompetitive inhibition (reversible)"
    annotation(Documentation(info="<html>
 <p>
 Noncompetitive inhibition (reversible).
 </p>
 </html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    extends BioChem.Interfaces.Reactions.Uur;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Ki=1 "Inhibition constant for the substrate";
    parameter Real KmS=1 "Forward Michaelis-Menten constant";
    parameter Real KmP=1 "Reverse Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
    parameter BioChem.Units.ReactionRate vR=1 "Reverese maximum velocity";
  equation
    rr=(vF*s1.c/KmS - vR*p1.c/KmP)/(1 + i1.c/Ki + (s1.c/KmS + p1.c/KmP)*(1 + i1.c/Ki));
  end Unir;

  model Unii "Irreversible non-competitive inhibition kinetics"
    annotation(Documentation(info="<html>
 <p>
 Irreversible non-competitive inhibition kinetics.
 </p>
 </html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Ki=1 "Inhibition constant for the substrate";
    parameter Real KmS=1 "Forward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
  equation
    rr=vF*s1.c/KmS/(1 + i1.c/Ki + s1.c/KmS*(1 + i1.c/Ki));
  end Unii;

  model Umr "Reversible mixed inhibition kinetics"
    annotation(Documentation(info="<html>
 <p>
 Reversible mixed inhibition kinetics.
 </p>
 </html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    extends BioChem.Interfaces.Reactions.Uur;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Kis=1 "Specific (competitive) inhibition constant";
    parameter Real Kic=1 "Catalytic (non-competitive) inhibition constant";
    parameter Real KmS=1 "Forward Michaelis-Menten constant";
    parameter Real KmP=1 "Reverse Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
    parameter BioChem.Units.ReactionRate vR=1 "Reverese maximum velocity";
  equation
    rr=(vF*s1.c/KmS - vR*p1.c/KmP)/(1 + i1.c/Kis + (s1.c/KmS + p1.c/KmP)*(1 + i1.c/Kic));
  end Umr;

  model Umi "Irreversible mixed inhibition kinetics"
    annotation(Documentation(info="<html>
 <p>
 Irreversible mixed inhibition kinetics.
 </p>
 </html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Kic=1 "Catalytic inhibition constant";
    parameter Real Kis=1 "Specific inhibition constant";
    parameter Real KmS=1 "Forward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
  equation
    rr=vF*s1.c/KmS/(1 + i1.c/Kis + s1.c/KmS*(1 + i1.c/Kic));
  end Umi;

  model Ucir "Competitive inhibition (reversible)"
    annotation(Documentation(info="<html>
 <p>
 Competitive inhibition (reversible).
 </p>
 </html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    extends BioChem.Interfaces.Reactions.Uur;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Ki=1 "Inhibition constant for the substrate";
    parameter Real KmS=1 "Forward Michaelis-Menten constant";
    parameter Real KmP=1 "Reverse Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
    parameter BioChem.Units.ReactionRate vR=1 "Reverese maximum velocity";
  equation
    rr=(vF*s1.c/KmS - vR*p1.c/KmP)/(1 + s1.c/KmS + p1.c/KmP + i1.c/Ki);
  end Ucir;

  model Ucii "Irreversible competitive inhibition kinetics"
    annotation(Documentation(info="<html>
 <p>
 Irreversible competitive inhibition kinetics.
 </p>
 </html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Ki=1 "Inhibition constant for the substrate";
    parameter Real KmS=1 "Forward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
  equation
    rr=vF*s1.c/KmS/(1 + s1.c/KmS + i1.c/Ki);
  end Ucii;

  model Ualii "Irreversible allosteric inhibition"
    annotation(Documentation(info="<html>
 <p>
 Irreversible allosteric inhibition.
 </p>
 </html>"), Icon(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})), Diagram(coordinateSystem(extent={{-100,100},{100,-100}}, preserveAspectRatio=true, grid={10,10})));
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Kii=1 "Dissociation constant of the inhibitor from the inactive form of the enzyme";
    parameter Real Ks=1 "Dissociation constant of the substrate from the active form of the enzyme";
    parameter Real L=1 "Equibrilium constant between active and inactive enzyme";
    parameter Integer n=1 "Number of binding sites for substrate and inhibitor";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
  equation
    rr=vF*s1.c/Ks*(1 + s1.c/Ks)^(n - 1)/(L*(1 + i1.c/Kii)^n + (1 + s1.c/Ks)^n);
  end Ualii;

end Inhibition;
