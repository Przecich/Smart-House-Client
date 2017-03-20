package house;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;


import org.apache.http.HttpResponse;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;

import org.apache.http.impl.client.HttpClientBuilder;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URI;
import java.nio.charset.StandardCharsets;
import java.util.stream.Collectors;

public class HouseService {

    public static Room currentRoom;
    public static Room getRoom(String name){
        String line=getJSONResponse("http://localhost:8080/house?room="+name);

        System.out.println(line);
        final GsonBuilder builder = new GsonBuilder();
        final Gson gson = builder.create();
        Room room = gson.fromJson(line, Room.class);


        return room;
    }

    private static String getJSONResponse(String req){
        String line;
        try {
            HttpClient httpClient = HttpClientBuilder.create().build();
            HttpGet request = new HttpGet(req);
            HttpResponse response = httpClient.execute(request);
            BufferedReader rd = new BufferedReader(new InputStreamReader(response.getEntity().getContent(), StandardCharsets.UTF_8));

            line = rd.lines().collect(Collectors.joining());
        }catch (IOException e){
            line="";
        }
        return line;
    }
    public static void sendRoom(Room room){
        final GsonBuilder builder = new GsonBuilder();
        final Gson gson = builder.create();
        String jsonString=gson.toJson(room);
        try {
            URI uri = new URI("http://localhost:8080/room");
            HttpURLConnection conn = (HttpURLConnection) uri.toURL().openConnection();
            conn.setDoOutput(true);
            conn.setRequestMethod("PUT");
            System.out.println(jsonString);
            conn.addRequestProperty("Content-Type", "application/json");
            conn.addRequestProperty("Accept","application/json");
            OutputStreamWriter out = new OutputStreamWriter(conn.getOutputStream());
            out.write(jsonString);
            out.close();
            System.out.println("EXCEPTIONAL");
            System.err.println(conn.getResponseCode());

        }catch (Exception e){

        }
    }
}
