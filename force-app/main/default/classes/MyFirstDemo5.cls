public class MyFirstDemo5 {
    
    public static void method1() {
        
        List<Account> accList = [SELECT Id, Name, (SELECT Id FROM Employees__r) FROM Account LIMIT 10];
        
        if(!accList.isEmpty()){
            for(Account acc : accList){
                Integer count=0;
                for(Employee__c emp : acc.Employees__r){
                  count = count + 1;  
                }
                acc.Total_Contacts__c = count;
            }
        }
        if(!accList.isEmpty()){
            update accList;
        }
    }
}