package Controller;

import Model.Gamers;
import Model.Users;
import com.mongodb.BasicDBObject;
import com.mongodb.ConnectionString;
import com.mongodb.MongoClientSettings;
import com.mongodb.MongoException;
import com.mongodb.ServerApi;
import com.mongodb.ServerApiVersion;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;
import java.util.ArrayList;

public class JavaMongo {

    private static final String CONNECTION_STRING = "mongodb+srv://viet81918:conchode239@cluster0.hzr2fsy.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";

     
     public static void main(String[] args) {
        ArrayList<Gamers> gamersList = getAllGamers();
        System.out.println("List of Gamers:");
        for (Gamers gamer : gamersList) {
            System.out.println(gamer);
        }
        ArrayList<Users> usersList = getAllUser();
         System.out.println("List all users: ");
        for (Users u : usersList)
        System.out.println(u);
    }
    
     public static MongoClientSettings getConnection(){
           ServerApi serverApi = ServerApi.builder()
                .version(ServerApiVersion.V1)
                .build();

        MongoClientSettings settings = MongoClientSettings.builder()
                .applyConnectionString(new ConnectionString(CONNECTION_STRING))
                .serverApi(serverApi)
                .build();
        return settings;
     }
    public static ArrayList<Gamers> getAllGamers() {
        

        MongoClientSettings settings = getConnection();

        ArrayList<Gamers> gamersList = new ArrayList<>();

          try (MongoClient mongoClient = MongoClients.create(settings)) {
            try {
                // Access the "FPTeam" database
                MongoDatabase fpteamDB = mongoClient.getDatabase("FPTeam");

                // Access the "Gamers" collection
                MongoCollection<Document> gamersCollection = fpteamDB.getCollection("Gamers");
                MongoCursor<Document> cursor = gamersCollection.find().iterator();

                // Query the collection and iterate over the cursor to print each document
                while (cursor.hasNext()) {
                    Document doc = cursor.next();
                    Gamers gamers = new Gamers(
                            doc.getString("ID"),
                            doc.getString("Name"),
                            doc.getString("Email"),
                            doc.getString("Password"),
                            doc.getInteger("Role"),
                            doc.getInteger("Money", 0),
                            doc.getString("AvatarLink")  // Get AvatarLink from the document
                            
                    );
                    gamersList.add(gamers);
                }
                cursor.close();
            } catch (MongoException e) {
                e.printStackTrace();
            }
        }

        return gamersList;
    }
    
   
    public static ArrayList<Users> getAllUser() {
       
        MongoClientSettings settings = getConnection();

        ArrayList<Users> usersList = new ArrayList<>();

          try (MongoClient mongoClient = MongoClients.create(settings)) {
            try {
                // Access the "FPTeam" database
                MongoDatabase fpteamDB = mongoClient.getDatabase("FPTeam");

                // Access the "Gamers" collection
                MongoCollection<Document> usersCollection = fpteamDB.getCollection("Users");
                MongoCursor<Document> cursor = usersCollection.find().iterator();

                // Query the collection and iterate over the cursor to print each document
                while (cursor.hasNext()) {
                    Document doc = cursor.next();
                    Users users = new Users(
                            doc.getString("ID"),
                            doc.getString("Name"),
                            doc.getString("Email"),
                            doc.getString("Password"),
                            doc.getInteger("Role")
                            
                    );
                    usersList.add(users);
                }
                cursor.close();
            } catch (MongoException e) {
                e.printStackTrace();
            }
        }

        return usersList;
    }

    public static Users getUserById(String id) {
    MongoClientSettings settings = getConnection();

    try (MongoClient mongoClient = MongoClients.create(settings)) {
        // Truy cập cơ sở dữ liệu "FPTeam"
        MongoDatabase fpteamDB = mongoClient.getDatabase("FPTeam");

        // Truy cập bộ sưu tập "Users"
        MongoCollection<Document> usersCollection = fpteamDB.getCollection("Users");

        // Tạo một bộ lọc để truy vấn người dùng dựa trên ID
        BasicDBObject query = new BasicDBObject();
        query.put("ID", id);

        // Thực hiện truy vấn và lấy ra kết quả
        Document userDoc = usersCollection.find(query).first();

        if (userDoc != null) {
            // Tạo một đối tượng Users từ thông tin trong document
            Users user = new Users(
                userDoc.getString("ID"),
                userDoc.getString("Name"),
                userDoc.getString("Email"),
                userDoc.getString("Password"),
                userDoc.getInteger("Role")
            );

            // Trả về đối tượng Users đã tạo
            return user;
        }
    } catch (MongoException e) {
        e.printStackTrace();
    }

    // Trả về null nếu không tìm thấy người dùng với ID đã cung cấp
    return null;
    }
    
    public static void CreateNewAccount(String name, String password, String email, int role){
        MongoClientSettings settings = getConnection();
        try(MongoClient mongoClient = MongoClients.create(settings)){
            
        MongoDatabase fpteamDB = mongoClient.getDatabase("FPTeam");

                // Access the "Gamers" collection
        MongoCollection<Document> usersCollection = fpteamDB.getCollection("Users");
        
        MongoCollection<Document> gamersCollection = fpteamDB.getCollection("Gamers");
        
        Document user = new Document("Name", name)
                        .append("Password", password)
                        .append("Email", email)
                        .append("Role", role);
        usersCollection.insertOne(user);
        
        Document gamer = new Document("Name", name)
                        .append("Password", password)
                        .append("Email", email)
                        .append("Role", role);
        gamersCollection.insertOne(gamer);
        }catch (MongoException e) {
        e.printStackTrace();
         }
    }
}
