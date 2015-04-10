within BioChem.Reactions;

package HyperbolicModifier "Hyperbolic modifier kinetics reactions"
  extends BioChem.Icons.Library;

  model Uhmi "Irreversible general hyperbolic modifier kinetics"
    extends BioChem.Interfaces.Reactions.Uui;
    extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
    parameter Real a = 1 "ratio of dissociation constants, ES+M->ESM over E+M->EM";
    parameter Real b = 1 "ratio of rate constants, ESM->EM+P over ES->E+P";
    parameter Real Kd = 1 "dissociation constant of E+M->EM";
    parameter BioChem.Units.Concentration KmS = 1 "forward Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF = 1 "forward maximum velocity";
  equation
    rr = vF * s1.c / KmS * (1 + b * m1.c / (a * Kd)) / (1 + m1.c / Kd + s1.c / KmS * (1 + m1.c / (a * Kd)));
    annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Uhmi;

  model Uhmr "Reversible general hyperbolic modifier kinetics"
    extends BioChem.Interfaces.Reactions.Uur;
    extends BioChem.Interfaces.Reactions.Modifiers.Modifier;
    parameter Real a = 1 "ratio of dissociation constants, ES+M->ESM over E+M->EM";
    parameter Real b = 1 "ratio of rate constants, ESM->EM+P over ES->E+P";
    parameter Real Kd = 1 "dissociation constant of E+M->EM";
    parameter BioChem.Units.Concentration KmS = 1 "forward Michaelis-Menten constant";
    parameter BioChem.Units.Concentration KmP = 1 "reverse Michaelis-Menten constant";
    parameter BioChem.Units.ReactionRate vF = 1 "forward maximum velocity";
    parameter BioChem.Units.ReactionRate vR = 1 "reverse maximum velocity";
  equation
    rr = (vF * s1.c / KmS - vR * p1.c / KmP) * (1 + b * m1.c / (a * Kd)) / (1 + m1.c / Kd + (s1.c / KmS + p1.c / KmP) * (1 + m1.c / (a * Kd)));
    annotation(Documentation(info = "", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
  end Uhmr;
  annotation(Documentation(info = "<p>This package contains models for irreversible and reversible hyperbolic modifier reaction kinetics.
 <p><img src=\"modelica://BioChem/Resources/Images/Hyper.png\" >
  ", revisions = ""), Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})), Diagram(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {10, 10})));
end HyperbolicModifier;