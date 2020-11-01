package model;

import java.util.ArrayList;
import java.util.List;

public class DBUtils {
    public static int ID=0;
    private static List<Customer> list = new ArrayList<>();

    static {
        initData();
    }

    private static void initData(){
        add(new Customer("Nguyen ","Linh Chi","0862628647","Nghe An"));
        add(new Customer("Dao Huu","Toan","0869613108","Hai Phong"));
        add(new Customer("Nguyen","Dung","0123456789","Ha Tinh"));
        add(new Customer("Lo Thi ","Huyen","0987654321","Phu Tho"));
        add(new Customer("Nguyen","Thanh","0456789123","Hai Duong"));
    }

    public static void add(Customer customer) {
        list.add(customer);
    }

    public static void edit(Customer customer) {
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getID() == customer.getID()) {
                list.set(i, customer);
            }
        }
    }

    public static void delete(int ID) {
        for (int i = 0; i < list.size(); i++) {
            if (list.get(i).getID() == ID) {
                list.remove(list.get(i));
            }
        }
    }

    public static List<Customer> getList(){
        return list;
    }

    public static Customer getCustomerByID(int ID){
        for (Customer temp: list){
            if(temp.getID() == ID){
                return temp;
            }
        }
        return null;
    }
}
