within BioChem.Interfaces.Reactions.Basics;

partial model Reaction "Basics for a reaction edge"
  extends BioChem.Icons.Interfaces.Reactions.Basics.Reaction;
  BioChem.Units.ReactionRate rr "Rate of the reaction" annotation(
    __MathCore_reactionrate = true);
end Reaction;
