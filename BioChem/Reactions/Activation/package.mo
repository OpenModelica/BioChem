within BioChem.Reactions;
package Activation "Activation kinetics reactions"
  extends Icons.Library;
  model Umar "Reversible mixed activation kinetics"
    extends BioChem.Interfaces.Reactions.Uur;
    extends BioChem.Interfaces.Reactions.Modifiers.Activator;
    parameter BioChem.Units.Concentration Kas=1 "Activation constant";
    parameter BioChem.Units.Concentration Kac=1 "Activation constant";
    parameter BioChem.Units.Concentration KmS=1 "Forward Michaelis-Menten constant";
    parameter BioChem.Units.Concentration KmP=1 "Backward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
    parameter BioChem.Units.ReactionRate vR=1 "Backward maximum velocity";
  equation
    rr=(vF*s1.c/KmS - vR*p1.c/KmP)/(1 + Kas/a1.c + (s1.c/KmS + p1.c/KmP)*(1 + Kac/a1.c));
    annotation(Documentation(info="<html>
 <p>
 Reversible mixed activation kinetics.
 </p>
 </html>"));
  end Umar;

  model Umai "Irreversible mixed activation kinetics"
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.Activator;
    parameter BioChem.Units.Concentration Kac=1 "Activation constant";
    parameter BioChem.Units.Concentration Kas=1 "Activation constant";
    parameter BioChem.Units.Concentration KmS=1 "Forward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
  equation
    rr=vF*s1.c*a1.c/(s1.c*(a1.c + Kac) + KmS*(a1.c + Kas));
    annotation(Documentation(info="<html>
 <p>
 Irreversible mixed activation kinetics.
 </p>
 </html>"));
  end Umai;

  model Uctr "Reversible catalytic activation"
    extends BioChem.Interfaces.Reactions.Uur;
    extends BioChem.Interfaces.Reactions.Modifiers.Activator;
    parameter BioChem.Units.Concentration Ka=1 "Activation constant";
    parameter BioChem.Units.Concentration KmS=1 "Forward Michaelis-Menten constant";
    parameter BioChem.Units.Concentration KmP=1 "Backward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
    parameter BioChem.Units.ReactionRate vR=1 "Backward maximum velocity";
  equation
    rr=(vF*s1.c/KmS - vR*p1.c/KmP)/(1 + Ka/a1.c + (s1.c/KmS + p1.c/KmP)*(1 + Ka/a1.c));
    annotation(Documentation(info="<html>
 <p>
 Reversible catalytic activation.
 </p>
 </html>"));
  end Uctr;

  model Ucti "Irreversible catalytic activation"
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.Activator;
    parameter BioChem.Units.Concentration Ka=1 "Activation constant";
    parameter BioChem.Units.Concentration KmS=1 "Forward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
  equation
    rr=vF*s1.c*a1.c/((a1.c + Ka)*(s1.c + KmS));
    annotation(Documentation(info="<html>
 <p>
 Irreversible catalytic activation.
 </p>
 </html>"));
  end Ucti;

  model Uar "Reversible specific activation kinetics"
    extends BioChem.Interfaces.Reactions.Uur;
    extends BioChem.Interfaces.Reactions.Modifiers.Activator;
    parameter BioChem.Units.Concentration Ka=1 "Activation constant";
    parameter BioChem.Units.Concentration KmS=1 "Forward Michaelis-Menten constant";
    parameter BioChem.Units.Concentration KmP=1 "Backward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
    parameter BioChem.Units.ReactionRate vR=1 "Backward maximum velocity";
  equation
    rr=(vF*s1.c/KmS - vR*p1.c/KmP)/(1 + s1.c/KmS + p1.c/KmP + Ka/a1.c);
    annotation(Documentation(info="<html>
 <p>
 Reversible specific activation kinetics.
 </p>
 </html>"));
  end Uar;

  model Uaii "Irreversible specific activation kinetics"
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.Activator;
    parameter BioChem.Units.Concentration Ka=1 "Activation constant";
    parameter BioChem.Units.Concentration KmS=1 "Forward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
  equation
    rr=vF*s1.c*a1.c/(a1.c*(KmS + s1.c) + KmS*Ka);
    annotation(Documentation(info="<html>
 <p>
 Irreversible specific activation kinetics.
 </p>
 </html>"));
  end Uaii;

  model Uai "Irreversible substrate activation"
    extends BioChem.Interfaces.Reactions.Uui;
    parameter BioChem.Units.Concentration KSa=1 "Dissociation constant of substrate-activation site";
    parameter BioChem.Units.Concentration KSc=1 "Dissociation constant of substrate-active site";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
  equation
    rr=vF*s1.c/KSa*s1.c/KSa/(1 + s1.c/KSc + s1.c/KSa*s1.c/KSa + s1.c/KSa);
    annotation(Documentation(info="<html>
 <p>
 Irreversible substrate activation.
 </p>
 </html>"));
  end Uai;

  annotation(Documentation(info="<html>
<h1>Activation</h1>
 <p>
This package contains models for irreversible and reversible activation reaction kinetics.
 </p>

<br>
<img src=\"modelica://BioChem/Resources/Images/Activation.png\" >
<br>
 </html>", revisions=""));
end Activation;
