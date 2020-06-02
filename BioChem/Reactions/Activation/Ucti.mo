within BioChem.Reactions.Activation;

model Ucti "Irreversible catalytic activation"
  extends BioChem.Interfaces.Reactions.Uui;
  extends BioChem.Interfaces.Reactions.Modifiers.Activator;
  parameter BioChem.Units.Concentration Ka = 1 "Activation constant";
  parameter BioChem.Units.Concentration KmS = 1 "Forward Michaelis-Menten constant";
  parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
equation
  rr = vF * s1.c * a1.c / ((a1.c + Ka) * (s1.c + KmS));
  annotation(
    Documentation(info = "<html>
 <p>
 Irreversible catalytic activation.
 </p>
 </html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Ucti;
