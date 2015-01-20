within BioChem.Reactions;

package Activation "Activation kinetics reactions"
  extends BioChem.Icons.Library;

  model Uai "Irreversible substrate activation"
    extends BioChem.Interfaces.Reactions.Uui;
    parameter BioChem.Units.Concentration KSa = 1 "dissociation constant of substrate-activation site";
    parameter BioChem.Units.Concentration KSc = 1 "dissociation constant of substrate-active site";
    parameter BioChem.Units.ReactionRate vF = 1 "forward maximum velocity";
  equation
    rr = vF * s1.c / KSa * s1.c / KSa / (1 + s1.c / KSc + s1.c / KSa * s1.c / KSa + s1.c / KSa);
    annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Uai;

  model Uaii "Irreversible specific activation kinetics"
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.Activator;
    parameter BioChem.Units.Concentration Ka = 1 "activation constant";
    parameter BioChem.Units.Concentration KmS = 1 "forward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF = 1 "forward maximum velocity";
  equation
    rr = vF * s1.c * a1.c / (a1.c * (KmS + s1.c) + KmS * Ka);
    annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Uaii;

  model Uar "Reversible specific activation kinetics"
    extends BioChem.Interfaces.Reactions.Uur;
    extends BioChem.Interfaces.Reactions.Modifiers.Activator;
    parameter BioChem.Units.Concentration Ka = 1 "activation constant";
    parameter BioChem.Units.Concentration KmS = 1 "forward Michaelis-Menten constant";
    parameter BioChem.Units.Concentration KmP = 1 "backward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF = 1 "forward maximum velocity";
    parameter BioChem.Units.ReactionRate vR = 1 "backward maximum velocity";
  equation
    rr = (vF * s1.c / KmS - vR * p1.c / KmP) / (1 + s1.c / KmS + p1.c / KmP + Ka / a1.c);
    annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Uar;

  model Ucti "Irreversible catalytic activation"
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.Activator;
    parameter BioChem.Units.Concentration Ka = 1 "activation constant";
    parameter BioChem.Units.Concentration KmS = 1 "forward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF = 1 "forward maximum velocity";
  equation
    rr = vF * s1.c * a1.c / ((a1.c + Ka) * (s1.c + KmS));
    annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Ucti;

  model Uctr "Reversible catalytic activation"
    extends BioChem.Interfaces.Reactions.Uur;
    extends BioChem.Interfaces.Reactions.Modifiers.Activator;
    parameter BioChem.Units.Concentration Ka = 1 "activation constant";
    parameter BioChem.Units.Concentration KmS = 1 "forward Michaelis-Menten constant";
    parameter BioChem.Units.Concentration KmP = 1 "backward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF = 1 "forward maximum velocity";
    parameter BioChem.Units.ReactionRate vR = 1 "backward maximum velocity";
  equation
    rr = (vF * s1.c / KmS - vR * p1.c / KmP) / (1 + Ka / a1.c + (s1.c / KmS + p1.c / KmP) * (1 + Ka / a1.c));
    annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Uctr;

  model Umai "Irreversible mixed activation kinetics"
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.Activator;
    parameter BioChem.Units.Concentration Kac = 1 "activation constant";
    parameter BioChem.Units.Concentration Kas = 1 "activation constant";
    parameter BioChem.Units.Concentration KmS = 1 "forward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF = 1 "forward maximum velocity";
  equation
    rr = vF * s1.c * a1.c / (s1.c * (a1.c + Kac) + KmS * (a1.c + Kas));
    annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Umai;

  model Umar "Reversible mixed activation kinetics"
    extends BioChem.Interfaces.Reactions.Uur;
    extends BioChem.Interfaces.Reactions.Modifiers.Activator;
    parameter BioChem.Units.Concentration Kas = 1 "activation constant";
    parameter BioChem.Units.Concentration Kac = 1 "activation constant";
    parameter BioChem.Units.Concentration KmS = 1 "forward Michaelis-Menten constant";
    parameter BioChem.Units.Concentration KmP = 1 "backward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF = 1 "forward maximum velocity";
    parameter BioChem.Units.ReactionRate vR = 1 "backward maximum velocity";
  equation
    rr = (vF * s1.c / KmS - vR * p1.c / KmP) / (1 + Kas / a1.c + (s1.c / KmS + p1.c / KmP) * (1 + Kac / a1.c));
    annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Umar;
  annotation(Documentation(info = "<p>This package contains models for irreversible and reversible activation reaction kinetics.</p>
 <p><img src=\"../../Images/Activation.png\"></p>
  ", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end Activation;