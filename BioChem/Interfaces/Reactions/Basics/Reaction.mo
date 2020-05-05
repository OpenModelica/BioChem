within BioChem.Interfaces.Reactions.Basics;

partial model Reaction "Basics for a reaction edge"
  BioChem.Units.ReactionRate rr "Rate of the reaction" annotation(
    __MathCore_reactionrate = true);
  annotation(
    Icon(coordinateSystem(extent = {{-100, -100}, {100, 100}}, preserveAspectRatio = true, grid = {10, 10}), graphics = {Line(points = {{-50, 0}, {50, 0}}, color = {170, 0, 0}), Text(origin = {-4.44089e-15, 1.42109e-14}, fillColor = {77, 77, 77}, fillPattern = FillPattern.Solid, extent = {{-100, -150}, {97.9, -100}}, textString = "%name", fontName = "Arial")}),
    Diagram(coordinateSystem(extent = {{-100, 100}, {100, -100}}, preserveAspectRatio = true, grid = {10, 10})));
end Reaction;
