within BioChem.Reactions;
package MichaelisMenten "Michaelis-Menten kinetics reactions"
  extends BioChem.Icons.Library;
  model Uur "Uni-uni reversible simple Michaelis-Menten"
    extends BioChem.Interfaces.Reactions.Uur;
    parameter BioChem.Units.Concentration KmS=1 "Forward Michaelis-Menten constant";
    parameter BioChem.Units.Concentration KmP=1 "Reverse Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
    parameter BioChem.Units.ReactionRate vR=1 "Reverse maximum velocity";
  equation
    rr=(vF*s1.c/KmS - vR*p1.c/KmP)/(1 + s1.c/KmS + p1.c/KmP);
    annotation(Documentation(info="<html>
 <p>
 Uni-uni reversible simple Michaelis-Menten.
 </p>
 </html>"));
  end Uur;

  model Uui "Uni-uni irreversible simple Michaelis-Menten"
    extends BioChem.Interfaces.Reactions.Uui;
    parameter BioChem.Units.Concentration KmS=1 "Forward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
  equation
    rr=vF*s1.c/(KmS + s1.c);
    annotation(Documentation(info="<html>
 <p>
 Uni-uni irreversible simple Michaelis-Menten.
 </p>
 </html>"));
  end Uui;

  model Uuhr "Uni-Uni reversible simple Michaelis-Menten with Haldane adjustment"
    extends BioChem.Interfaces.Reactions.Uur;
    parameter Real Keq=1 "Equilibrum constant";
    parameter BioChem.Units.Concentration KmS=1 "Forward Michaelis-Menten constant";
    parameter BioChem.Units.Concentration KmP=1 "Reverse Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
  equation
    rr=vF/KmS*(s1.c - p1.c/Keq)/(1 + s1.c/KmS + p1.c/KmP);
    annotation(Documentation(info="<html>
 <p>
 Uni-Uni reversible simple Michaelis-Menten with Haldane adjustment.
 </p>
 </html>"));
  end Uuhr;

  model Isouur "Iso uni-uni"
    extends BioChem.Interfaces.Reactions.Uur;
    parameter Real Keq=1 "Equilibrum constant";
    parameter Real Kii=1 "Isoinhibition constant";
    parameter BioChem.Units.Concentration KmS=1 "Forward Michaelis-Menten constant";
    parameter BioChem.Units.Concentration KmP=1 "Reverse Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
  equation
    rr=vF*(s1.c - p1.c/Keq)/(s1.c*(1 + p1.c/Kii) + KmS*(1 + p1.c/KmP));
    annotation(Documentation(info="<html>
 <p>
 Iso uni-uni.
 </p>
 </html>"));
  end Isouur;

  annotation(Documentation(info="<html>
<h1>MichaelisMenten</h1>
 <p>
This package contains irreversible and reversible Michaelis-Menten reactions. Currently the library is limited to one-substrate and one-product reactions.
Michaelis-Menten kinetics describes the kinetics of many enzymes. It is named after Leonor Michaelis and Maud Menten. This kinetic model is relevant to situations where the concentration of enzyme is much lower than the concentration of substrate (i.e. where enzyme concentration is the limiting factor), and when the enzyme is not allosteric.
 </p>

<br>
<img src=\"modelica://BioChem/Resources/Images/MichaelisMenten.png\" >
<br>
 </html>", revisions=""));
end MichaelisMenten;
