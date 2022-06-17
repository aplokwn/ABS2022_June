package services;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import model.Bike;

/**
 * BikeLoader, a loader to load a JSON file into the web application then fetch
 * the content into list object with the Bike class that prepare the information
 * for the bike instock page. 
 * Json API using a free online resource: https://api.npoint.io/d90c46449cc256cd2425  
 *
 * @author april wan
 */
public class BikeLoader {

    public List<Bike> readJSON() throws FileNotFoundException, IOException {

        JsonObject jsonObject = new JsonObject();
        jsonObject.get("bike");

        // If the file is empty, there is no bike instock, 
        //return a empty list for servlet to handle page control
        if (jsonObject.isJsonNull()) {
            List<Bike> bikeList = Arrays.asList();
            return bikeList;
        } //Else if the file have content, create bike list for servlet to handle page control and display content
        else {
            Gson gson = new Gson();

            URL url = null;
            try {
                // Definition of the URL with the JSON-Strings
                url = new URL("https://api.npoint.io/d90c46449cc256cd2425");
            } 
            catch (MalformedURLException e) {
                e.printStackTrace();
            }

            //Test in local json file
            //Reader gsonReadesr = Files.newBufferedReader(Paths.get("absolute path to local json file"));
            
            Reader gsonReader = new InputStreamReader(url.openStream());

            Bike[] bike = gson.fromJson(gsonReader, Bike[].class);
            gsonReader.close();

            List<Bike> bikeList = Arrays.asList(bike);
            return bikeList;
        }

    }

    /**
     * Filter Brand and return a filtered Array List.
     *
     * @param asList Bike Array List
     * @param bikeSize bike size enter by user
     * @return filtered Bike Array List
     */
    public static List<Bike> filterSize(List<Bike> asList, String bikeSize) {
        List<Bike> filterList = new ArrayList<>();
        for (Bike each : asList) {
            if (each.getSize().equalsIgnoreCase(bikeSize)) {
                filterList.add(each);
            }
        }
        return filterList;
    }

    /**
     * Filter Brand and return a filtered Array List.
     *
     * @param asList Bike Array List
     * @param bikeModel bike model enter by user
     * @return filtered Bike Array List
     */
    public static List<Bike> filterModel(List<Bike> asList, String bikeModel) {
        List<Bike> filterList = new ArrayList<>();
        for (Bike each : asList) {
            if (each.getModel().equalsIgnoreCase(bikeModel)) {
                filterList.add(each);
            }
        }
        return filterList;
    }

    /**
     * Filter Brand and return a filtered Array List.
     *
     * @param asList Bike Array List
     * @param bikeMake bike brand enter by user
     * @return filtered Bike Array List
     */
    public static List<Bike> filterBrand(List<Bike> asList, String bikeMake) {
        List<Bike> filterList = new ArrayList<>();
        for (Bike each : asList) {
            if (each.getMaker().equalsIgnoreCase(bikeMake)) {
                filterList.add(each);
            }
        }
        return filterList;
    }

    /**
     * Filter price and return a filtered Array List.
     *
     * @param asList Bike Array List
     * @param minPric min price enter by user
     * @param maPrice max price inter by user
     * @return filtered Bike Array List
     */
    public static List<Bike> filterPrice(List<Bike> asList, double minPrice, double maxPrice) {
        List<Bike> filterList = new ArrayList<>();
        for (Bike each : asList) {
            if (each.getPrice() >= minPrice && each.getPrice() <= maxPrice) {
                filterList.add(each);
            }
        }
        return filterList;
    }

}
