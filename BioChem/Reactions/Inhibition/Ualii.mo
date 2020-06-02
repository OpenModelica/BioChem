within BioChem.Reactions.Inhibition;

model Ualii "Irreversible allosteric inhibition"
  extends BioChem.Interfaces.Reactions.Uui;
  extends BioChem.Interfaces.Reactions.Modifiers.Inhibitor;
  parameter Real Kii = 1 "Dissociation constant of the inhibitor from the inactive form of the enzyme";
  parameter Real Ks = 1 "Dissociation constant of the substrate from the active form of the enzyme";
  parameter Real L = 1 "Equibrilium constant between active and inactive enzyme";
  parameter Integer n = 1 "Number of binding sites for substrate and inhibitor";
  parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
equation
  rr = vF * s1.c / Ks * (1 + s1.c / Ks) ^ (n - 1) / (L * (1 + i1.c / Kii) ^ n + (1 + s1.c / Ks) ^ n);
  annotation(
    Documentation(info = "<html>
 <p>
 Irreversible allosteric inhibition.
 </p>
 </html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Ualii;
