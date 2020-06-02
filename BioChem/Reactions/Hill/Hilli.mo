within BioChem.Reactions.Hill;

model Hilli "Irreversible Hill kinetics"
  extends BioChem.Interfaces.Reactions.Uui;
  parameter Real h = 1 "Hill Coefficient";
  parameter BioChem.Units.Concentration sHalf = 1 "Substrate concentration such that v = vF/2";
  parameter BioChem.Units.ReactionRate vF = 1 "Forward maximum velocity";
equation
  rr = vF * s1.c ^ h / (sHalf ^ h + s1.c ^ h);
  annotation(
    Documentation(info = "<html>
 <p>
 Irreversible Hill kinetics.
 </p>
 </html>"),
    Icon(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Hilli;
