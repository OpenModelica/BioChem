within BioChem.Reactions;

package Inhibition "Inhibition kinetics reactions"
  extends Icons.Library;
  model Uucr "Uncompetitive inhibition (reversible)"
    extends BioChem.Interfaces.Reactions.Uur;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Ki=1 "Inhibition constant for the substrate";
    parameter Real KmS=1 "Forward Michaelis-Menten constant";
    parameter Real KmP=1 "Reverse Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
    parameter BioChem.Units.ReactionRate vR=1 "Reverese maximum velocity";
  equation
    rr=(vF*s1.c/KmS - vR*p1.c/KmP)/(1 + (s1.c/KmS + p1.c/KmP)*(1 + i1.c/Ki));
    annotation(Documentation(info="<html>
 <p>
 Uncompetitive inhibition (reversible).
 </p>
 </html>"));
  end Uucr;

  model Uuci "Irreversible uncompetitive inhibition"
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Ki=1 "Inhibition constant for the substrate";
    parameter Real KmS=1 "Forward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
  equation
    rr=vF*s1.c/KmS/(1 + s1.c/KmS*(1 + i1.c/Ki));
    annotation(Documentation(info="<html>
 <p>
 Irreversible uncompetitive inhibition.
 </p>
 </html>"));
  end Uuci;

  model Usir "Reversible substrate inhibition kinetics"
    extends BioChem.Interfaces.Reactions.Uui;
    parameter BioChem.Units.Concentration Ki=1 "Inhibition constant for the substrate";
    parameter Real KmS=1 "Forward Michaelis-Menten constant";
    parameter Real KmP=1 "Reverese Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
    parameter BioChem.Units.ReactionRate vR=1 "Reversible maximum velocity";
  equation
    rr=(vF*s1.c/KmS - vR*p1.c/KmP)/(1 + s1.c/KmS + p1.c/KmP + s1.c^2/Ki);
    annotation(Documentation(info="<html>
 <p>
 Reversible substrate inhibition kinetics.
 </p>
 </html>"));
  end Usir;

  model Usii "Irreversible substrate inhibition kinetics"
    extends BioChem.Interfaces.Reactions.Uui;
    parameter BioChem.Units.Concentration Ki=1 "Inhibition constant for the substrate";
    parameter Real KmS=1 "Forward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
  equation
    rr=vF*s1.c/KmS/(1 + s1.c/KmS + s1.c^2/Ki);
    annotation(Documentation(info="<html>
 <p>
 Irreversible substrate inhibition kinetics.
 </p>
 </html>"));
  end Usii;

  model Unir "Noncompetitive inhibition (reversible)"
    extends BioChem.Interfaces.Reactions.Uur;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Ki=1 "Inhibition constant for the substrate";
    parameter Real KmS=1 "Forward Michaelis-Menten constant";
    parameter Real KmP=1 "Reverse Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
    parameter BioChem.Units.ReactionRate vR=1 "Reverese maximum velocity";
  equation
    rr=(vF*s1.c/KmS - vR*p1.c/KmP)/(1 + i1.c/Ki + (s1.c/KmS + p1.c/KmP)*(1 + i1.c/Ki));
    annotation(Documentation(info="<html>
 <p>
 Noncompetitive inhibition (reversible).
 </p>
 </html>"));
  end Unir;

  model Unii "Irreversible non-competitive inhibition kinetics"
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Ki=1 "Inhibition constant for the substrate";
    parameter Real KmS=1 "Forward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
  equation
    rr=vF*s1.c/KmS/(1 + i1.c/Ki + s1.c/KmS*(1 + i1.c/Ki));
    annotation(Documentation(info="<html>
 <p>
 Irreversible non-competitive inhibition kinetics.
 </p>
 </html>"));
  end Unii;

  model Umr "Reversible mixed inhibition kinetics"
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
    annotation(Documentation(info="<html>
 <p>
 Reversible mixed inhibition kinetics.
 </p>
 </html>"));
  end Umr;

  model Umi "Irreversible mixed inhibition kinetics"
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Kic=1 "Catalytic inhibition constant";
    parameter Real Kis=1 "Specific inhibition constant";
    parameter Real KmS=1 "Forward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
  equation
    rr=vF*s1.c/KmS/(1 + i1.c/Kis + s1.c/KmS*(1 + i1.c/Kic));
    annotation(Documentation(info="<html>
 <p>
 Irreversible mixed inhibition kinetics.
 </p>
 </html>"));
  end Umi;

  model Ucir "Competitive inhibition (reversible)"
    extends BioChem.Interfaces.Reactions.Uur;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Ki=1 "Inhibition constant for the substrate";
    parameter Real KmS=1 "Forward Michaelis-Menten constant";
    parameter Real KmP=1 "Reverse Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
    parameter BioChem.Units.ReactionRate vR=1 "Reverese maximum velocity";
  equation
    rr=(vF*s1.c/KmS - vR*p1.c/KmP)/(1 + s1.c/KmS + p1.c/KmP + i1.c/Ki);
    annotation(Documentation(info="<html>
 <p>
 Competitive inhibition (reversible).
 </p>
 </html>"));
  end Ucir;

  model Ucii "Irreversible competitive inhibition kinetics"
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Ki=1 "Inhibition constant for the substrate";
    parameter Real KmS=1 "Forward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
  equation
    rr=vF*s1.c/KmS/(1 + s1.c/KmS + i1.c/Ki);
    annotation(Documentation(info="<html>
 <p>
 Irreversible competitive inhibition kinetics.
 </p>
 </html>"));
  end Ucii;

  model Ualii "Irreversible allosteric inhibition"
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Kii=1 "Dissociation constant of the inhibitor from the inactive form of the enzyme";
    parameter Real Ks=1 "Dissociation constant of the substrate from the active form of the enzyme";
    parameter Real L=1 "Equibrilium constant between active and inactive enzyme";
    parameter Integer n=1 "Number of binding sites for substrate and inhibitor";
    parameter BioChem.Units.ReactionRate vF=1 "Forward maximum velocity";
  equation
    rr=vF*s1.c/Ks*(1 + s1.c/Ks)^(n - 1)/(L*(1 + i1.c/Kii)^n + (1 + s1.c/Ks)^n);
    annotation(Documentation(info="<html>
 <p>
 Irreversible allosteric inhibition.
 </p>
 </html>"));
  end Ualii;

  annotation(Documentation(info="<html>
<h1>Inhibition</h1>
 <p>
In this package, different types of irreversible and reversible inhibition reaction kinetics are collected, e.g. competitive, non-competitive and uncompetitive.
 </p>

<br>
<img src=\"modelica://BioChem/Resources/Images/Inhibition.png\" >
<br>
 </html>", revisions=""));
end Inhibition;
