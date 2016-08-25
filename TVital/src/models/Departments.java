package models;

public enum Departments {
	Evolve, Cleaners, DOJ, Research,Enterprise, GOV;
	
	  @Override
	  public String toString() {
	    switch(this) {
	      case Evolve: return "Evolve";
	      case Cleaners: return "Cleaners";
	      case DOJ: return "DOJ";
	      case Research: return "Research";
	      case Enterprise: return "Enterprise";
	      case GOV: return "GOV";
	      default: throw new IllegalArgumentException();
	    }
}
}
