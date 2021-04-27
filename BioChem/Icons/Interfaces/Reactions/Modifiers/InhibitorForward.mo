within BioChem.Icons.Interfaces.Reactions.Modifiers;

partial model InhibitorForward "Basics for a forward inhibitor in a reaction edge"
  extends BioChem.Icons.Base;
  annotation(
    Icon(graphics = {Line(points = {{0, 56.25}, {0, 6.25}}, color = {0, 0, 255}, arrow = {Arrow.None, Arrow.Open}, arrowSize = 25)}));
end InhibitorForward;
