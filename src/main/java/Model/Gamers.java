package MOdel;

public class Gamers {

    private String ID;
    private String Name;
    private String Email;
    private String Password;
    private int Money;
    private String AvatarLink;

    // Default constructor
    public Gamers() {
    }

    // Parameterized constructor
    public Gamers(String ID, String Name, String Email, String Password, int Money, String AvatarLink) {
        this.ID = ID;
        this.Name = Name;
        this.Email = Email;
        this.Password = Password;
        this.Money = Money;
        this.AvatarLink = AvatarLink;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getPassword() {
        return Password;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public int getMoney() {
        return Money;
    }

    public void setMoney(int Money) {
        this.Money = Money;
    }

    public String getAvatarLink() {
        return AvatarLink;
    }

    public void setAvatarLink(String AvatarLink) {
        this.AvatarLink = AvatarLink;
    }

    @Override
    public String toString() {
        return "Gamer{" +
                "ID='" + ID + '\'' +
                ", Name='" + Name + '\'' +
                ", Email='" + Email + '\'' +
                ", Password='" + Password + '\'' +
                ", Money=" + Money +
                ", AvatarLink='" + AvatarLink + '\'' +
                '}';
    }
}
