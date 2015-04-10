within BioChem.Reactions;

package Inhibition "Inhibition kinetics reactions"
  extends BioChem.Icons.Library;

  model Usii "Irreversible substrate inhibition kinetics"
    extends BioChem.Interfaces.Reactions.Uui;
    parameter BioChem.Units.Concentration Ki = 1 "inhibition constant for the substrate";
    parameter Real KmS = 1 "forward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF = 1 "forward maximum velocity";
  equation
    rr = vF * s1.c / KmS / (1 + s1.c / KmS + s1.c ^ 2 / Ki);
    annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Usii;

  model Usir "Reversible substrate inhibition kinetics"
    extends BioChem.Interfaces.Reactions.Uur;
    parameter BioChem.Units.Concentration Ki = 1 "inhibition constant for the substrate";
    parameter Real KmS = 1 "forward Michaelis-Menten constant";
    parameter Real KmP = 1 "reverse Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF = 1 "forward maximum velocity";
    parameter BioChem.Units.ReactionRate vR = 1 "reversible maximum velocity";
  equation
    rr = (vF * s1.c / KmS - vR * p1.c / KmP) / (1 + s1.c / KmS + p1.c / KmP + s1.c ^ 2 / Ki);
    annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Usir;

  model Ucii "Irreversible competitive inhibition kinetics"
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Ki = 1 "inhibition constant for the substrate";
    parameter Real KmS = 1 "forward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF = 1 "forward maximum velocity";
  equation
    rr = vF * s1.c / KmS / (1 + s1.c / KmS + i1.c / Ki);
    annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Ucii;

  model Ucir "Competitive inhibition (reversible)"
    extends BioChem.Interfaces.Reactions.Uur;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Ki = 1 "inhibition constant for the substrate";
    parameter Real KmS = 1 "forward Michaelis-Menten constant";
    parameter Real KmP = 1 "reverse Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF = 1 "forward maximum velocity";
    parameter BioChem.Units.ReactionRate vR = 1 "reverse maximum velocity";
  equation
    rr = (vF * s1.c / KmS - vR * p1.c / KmP) / (1 + s1.c / KmS + p1.c / KmP + i1.c / Ki);
    annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Ucir;

  model Unii "Irreversible non-competitive inhibition kinetics"
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Ki = 1 "inhibition constant for the substrate";
    parameter Real KmS = 1 "forward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF = 1 "forward maximum velocity";
  equation
    rr = vF * s1.c / KmS / (1 + i1.c / Ki + s1.c / KmS * (1 + i1.c / Ki));
    annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Unii;

  model Unir "Non-competitive inhibition (reversible)"
    extends BioChem.Interfaces.Reactions.Uur;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Ki = 1 "inhibition constant for the substrate";
    parameter Real KmS = 1 "forward Michaelis-Menten constant";
    parameter Real KmP = 1 "reverse Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF = 1 "forward maximum velocity";
    parameter BioChem.Units.ReactionRate vR = 1 "reverse maximum velocity";
  equation
    rr = (vF * s1.c / KmS - vR * p1.c / KmP) / (1 + i1.c / Ki + (s1.c / KmS + p1.c / KmP) * (1 + i1.c / Ki));
    annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Unir;

  model Umi "Irreversible mixed inhibition kinetics"
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Kic = 1 "catalytic inhibition constant";
    parameter Real Kis = 1 "specific inhibition constant";
    parameter Real KmS = 1 "forward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF = 1 "forward maximum velocity";
  equation
    rr = vF * s1.c / KmS / (1 + i1.c / Kis + s1.c / KmS * (1 + i1.c / Kic));
    annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Umi;

  model Umr "Reversible mixed inhibition kinetics"
    extends BioChem.Interfaces.Reactions.Uur;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Kis = 1 "specific (competitive) inhibition constant";
    parameter Real Kic = 1 "catalytic (non-competitive) inhibition constant";
    parameter Real KmS = 1 "forward Michaelis-Menten constant";
    parameter Real KmP = 1 "reverse Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF = 1 "forward maximum velocity";
    parameter BioChem.Units.ReactionRate vR = 1 "reverse maximum velocity";
  equation
    rr = (vF * s1.c / KmS - vR * p1.c / KmP) / (1 + i1.c / Kis + (s1.c / KmS + p1.c / KmP) * (1 + i1.c / Kic));
    annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Umr;

  model Uuci "Irreversible uncompetitive inhibition"
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Ki = 1 "inhibition constant for the substrate";
    parameter Real KmS = 1 "forward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF = 1 "forward maximum velocity";
  equation
    rr = vF * s1.c / KmS / (1 + s1.c / KmS * (1 + i1.c / Ki));
    annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Uuci;

  model Uucr "Uncompetitive inhibition (reversible)"
    extends BioChem.Interfaces.Reactions.Uur;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Ki = 1 "inhibition constant for the substrate";
    parameter Real KmS = 1 "forward Michaelis-Menten constant";
    parameter Real KmP = 1 "reverse Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF = 1 "forward maximum velocity";
    parameter BioChem.Units.ReactionRate vR = 1 "reverse maximum velocity";
  equation
    rr = (vF * s1.c / KmS - vR * p1.c / KmP) / (1 + (s1.c / KmS + p1.c / KmP) * (1 + i1.c / Ki));
    annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Uucr;

  model Ualii "Irreversible allosteric inhibition"
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
    parameter Real Kii = 1 "dissociation constant of the inhibitor from the inactive form of the enzyme";
    parameter Real Ks = 1 "dissociation constant of the substrate from the active form of the enzyme";
    parameter Real L = 1 "equibrilium constant between active and inactive enzyme";
    parameter Integer n = 1 "number of binding sites for substrate and inhibitor";
    parameter BioChem.Units.ReactionRate vF = 1 "forward maximum velocity";
  equation
    rr = vF * s1.c / Ks * (1 + s1.c / Ks) ^ (n - 1) / (L * (1 + i1.c / Kii) ^ n + (1 + s1.c / Ks) ^ n);
    annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Ualii;
  annotation(Documentation(info = "<p>In this package, different types of irreversible and reversible inhibition reaction kinetics are collected, for example, competitive, non-competitive, and uncompetitive.</p>
 <p><img src=\"modelica://BioChem/Resources/Images/Inhibition.png\" ></p>
  ", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end Inhibition;