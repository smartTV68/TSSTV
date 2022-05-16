/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package it.tss.mavenproject2;
import com.mongodb.client.MongoCollection; 
import org.bson.Document; 
import com.mongodb.client.MongoDatabase; 
import com.mongodb.MongoClient; 
import com.mongodb.client.FindIterable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;



/**
 *
 * @author tss
 */
public class MainMongoDB {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        //connessione
        MongoClient mongo = new MongoClient( "localhost" , 27017 ); 
        //schemadb
        MongoDatabase database = mongo.getDatabase("dbregistro");
        //tabella collection
        
        MongoCollection<Document> registri = database.getCollection("registri");
        //ora siamo sulla tabella vuota
        //creo record document
        Document document = new Document("titolo", "TSS Java")
	.append("codice", "C1-112-2022-0")
	.append("anno gestione", "2021-2022");
        //insert nuovo record
        registri.insertOne(document);
        
        Document document2 = new Document("titolo", "TSS Reti")
	.append("codice", "C1-112-2022-1")
	.append("anno gestione", "2021-2022");
        //insert nuovo record
        Document document3 = new Document("titolo", "TSS web")
	.append("codice", "C1-112-2022-2")
	.append("anno gestione", "2021-2022");
        //insert nuovo record
      
        List<Document> list = new ArrayList<>();
		
                list.add(document2);
		list.add(document3);
		registri.insertMany(list);
                
                FindIterable<Document> results = registri.find();
		int i = 1;
		// Getting the iterator
		Iterator doc = results.iterator();
		while (doc.hasNext()) {
			System.out.println(doc.next());
			i++;
		}
	}
                       
        
    }
    
