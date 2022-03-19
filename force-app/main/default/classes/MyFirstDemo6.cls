public class MyFirstDemo6 {
    
    public static void method1(){
        List<Contact> conList = [SELECT Id, FirstName, Phone, Account.Phone
                                 FROM Contact
                                 WHERE AccountId != null];
        
        if(!conList.isEmpty()){
            for(Contact con : conList){
                con.Phone = con.Account.Phone;
            }
        }
        if(!conList.isEmpty()){
            update conList;
        }
    }
}