package Controller;

import Model.Game;
import Model.Gamers;
import Model.Genre;
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
import java.text.SimpleDateFormat;
import org.bson.Document;
import java.util.ArrayList;
import java.util.Date;
import java.util.Random;

public class JavaMongo {

    private static final String CONNECTION_STRING = "mongodb+srv://viet81918:conchode239@cluster0.hzr2fsy.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0";
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
            ArrayList<Game> gamesList = getAllGames();
         System.out.println("List all Games: ");
        for (Game g : gamesList)
        System.out.println(g);
            ArrayList<Genre> genresList = getAllGenres();
         System.out.println("List all Genres: ");
        for (Genre g1 : genresList)
        System.out.println(g1);
    }
    
      public static void addGame(Game game) {
        try (MongoClient mongoClient = MongoClients.create(getConnection())) {
            MongoDatabase fpteamDB = mongoClient.getDatabase("FPTeam");
            MongoCollection<Document> gamesCollection = fpteamDB.getCollection("Games");
         
            Document gameDoc = new Document()
                    .append("ID", game.getId())
                    .append("Name", game.getName())
                    .append("Price", game.getPrice())
                    .append("Publish_day", game.getPublishDay())
                    .append("Number_of_buyers", game.getNumberOfBuyers())
                    .append("LinkTrailer", game.getLinkTrailer())
                    .append("AvatarLink", game.getAvatarLink())
                    .append("GameLink", game.getGameLink())
                    .append("Description", game.getDescription())
                    .append("Minimum_CPU", game.getMinimumCPU())
                    .append("Minimum_RAM", game.getMinimumRAM())
                    .append("Minimum_GPU", game.getMinimumGPU())
                    .append("Maximum_CPU", game.getMaximumCPU())
                    .append("Maximum_RAM", game.getMaximumRAM())
                    .append("Maximum_GPU", game.getMaximumGPU());

            gamesCollection.insertOne(gameDoc);
            System.out.println("Game added successfully to MongoDB.");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
       public static void addGenreToGame(String gameId, String genreType) {
        try (MongoClient mongoClient = MongoClients.create(getConnection())) {
            MongoDatabase fpteamDB = mongoClient.getDatabase("FPTeam");
            MongoCollection<Document> gameGenresCollection = fpteamDB.getCollection("Game_Has_Genre");

            Document gameGenreDoc = new Document()
                    .append("ID_Game", gameId)
                    .append("Type_of_genres", genreType);

            gameGenresCollection.insertOne(gameGenreDoc);
            System.out.println("Genre '" + genreType + "' added to game ID: " + gameId);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
     
    public static ArrayList<Game> getAllGames() {
        MongoClientSettings settings = getConnection();
        ArrayList<Game> gamesList = new ArrayList<>();

        try (MongoClient mongoClient = MongoClients.create(settings)) {
            MongoDatabase fpteamDB = mongoClient.getDatabase("FPTeam");
            MongoCollection<Document> gamesCollection = fpteamDB.getCollection("Games");
            MongoCursor<Document> cursor = gamesCollection.find().iterator();

            while (cursor.hasNext()) {
                Document doc = cursor.next();

                // Parse price
                Double price = doc.getDouble("Price");

                // Parse number of buyers
                Integer numberOfBuyers = doc.getInteger("Number_of_buyers");

                // Parse nested fields for configuration
              

                Game game = new Game(
                        doc.getString("ID"),
                        doc.getString("Name"),
                        price,
                        doc.getString("Publish_day"),
                        numberOfBuyers,
                        doc.getString("LinkTrailer"),
                        doc.getString("AvatarLink"),
                        doc.getString("GameLink"),
                        doc.getString("Description"),
                        doc.getString("Minimum_CPU"),
                        doc.getString("Minimum_RAM"),
                        doc.getString("Minimum_GPU"),
                        doc.getString("Maximum_CPU"),
                        doc.getString("Maximum_RAM"),
                        doc.getString("Maximum_GPU")
                );
                gamesList.add(game);
            }
            cursor.close();
        } catch (MongoException e) {
            e.printStackTrace();
        }

        return gamesList;
    }
 public static ArrayList<Genre> getAllGenres() {
        ArrayList<Genre> genresList = new ArrayList<>();
        
        try (MongoClient mongoClient = MongoClients.create(CONNECTION_STRING)) {
                MongoDatabase fpteamDB = mongoClient.getDatabase("FPTeam");
            MongoCollection<Document> Collection = fpteamDB.getCollection("Genres");

            MongoCursor<Document> cursor = Collection.find().iterator();
            while (cursor.hasNext()) {
                Document doc = cursor.next();
                Genre genre = new Genre(
                    doc.getString("Type_of_Genre"),
                    doc.getString("Description")
                );
                genresList.add(genre);
            }
            cursor.close();
        } catch (MongoException e) {
            e.printStackTrace();
        }

        return genresList;
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
