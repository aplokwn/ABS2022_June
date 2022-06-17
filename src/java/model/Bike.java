/**
 * Bike class, POJO for handling bike json file
 * Can modified to match the final requirements
 * Include basic getter and setter, to String method
 * 
 * @author aphks
 */

package model;

public class Bike {
    
    
    private Integer bikeId;
    private String photoPath;
    private String maker;
    private String model;
    private String size;
    private double price;
    
    public Bike(){
        
    }
    
    
    public Bike (Integer bikeId, String photoPath, String maker, String model, String size, double price) {
        this.bikeId = bikeId;
        this.photoPath = photoPath;
        this.price = price;
        this.maker = maker;
        this.model = model;
        this.size = size;
    
}
    
    

    
    public Integer getBikeId() {
        return bikeId;
    }

    public void setBikeId(Integer bikeId) {
        this.bikeId = bikeId;
    }

    public String getPhotoPath() {
        return photoPath;
    }

    public void setPhotoPath(String photoPath) {
        this.photoPath = photoPath;
    }

    public String getMaker() {
        return maker;
    }

    public void setMaker(String maker) {
        this.maker = maker;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
    

    
    
     public String toString() { 
      return "Bike [ bikeId: "+bikeId+", photoPath: "+ photoPath+ ", maker: "+ maker +
              ", Model: " + model + ", Size" +  size + ", Price: " + price + " ]"; 
      

   }  
    
}
