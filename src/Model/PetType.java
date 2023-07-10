package Model;

public enum PetType {

    Cat,
    Dog,
    Hamster;

    public static PetType getType (int typeId){
        return switch (typeId) {
            case 1 -> Cat;
            case 2 -> Dog;
            case 3 -> Hamster;
            default -> null;
        };
    }
}