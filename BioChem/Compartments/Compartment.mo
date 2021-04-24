within BioChem.Compartments;

model Compartment "Default compartment (constant volume)"
  extends BioChem.Icons.Compartments.Compartment;
  extends BioChem.Interfaces.Compartments.Compartment(V(stateSelect=StateSelect.prefer));
equation
  der(V)=0 "Compartment volume is constant";
end Compartment;
