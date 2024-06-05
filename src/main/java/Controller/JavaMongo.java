package Controller;

import MOdel.Gamers;
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
                // Query the collection and iterate over the cursor to print each document
                try (MongoCursor<Document> cursor = gamersCollection.find().iterator()) {
                    // Query the collection and iterate over the cursor to print each document
                    while (cursor.hasNext()) {
                        Document doc = cursor.next();
                        Gamers gamers = new Gamers(
                                doc.getString("ID"),
                                doc.getString("Name"),
                                doc.getString("Email"),
                                doc.getString("Password"),
                                doc.getInteger("Money", 0)
                        );
                        gamersList.add(gamers);
                    }
                }
            } catch (MongoException e) {
                e.printStackTrace();
            }
        }

        return gamersList;
    }
    
}
