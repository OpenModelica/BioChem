within BioChem.Reactions.Activation;

model Uai "Irreversible substrate activation"
  extends BioChem.Interfaces.Reactions.Uui;
  parameter BioChem.Units.Concentration KSa = 1 "Dissociation constant of substrate-activation site";
  parameter BioChem.Units.Concentration KSc = 1 "Dissociation constant of substrate-active site";
  parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
equation
  rr = vF * s1.c / KSa * s1.c / KSa / (1 + s1.c / KSc + s1.c / KSa * s1.c / KSa + s1.c / KSa);
  annotation(
    Documentation(info = "<html>
 <p>
 Irreversible substrate activation.
 </p>
 </html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Uai;
