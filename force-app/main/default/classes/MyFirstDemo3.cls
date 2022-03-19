public class MyFirstDemo3 {
    
    public static void method1(){
        List<Account> accList = [SELECT Id, Name, Phone FROM Account LIMIT 2];
        
        Set<Id> accIds = new Set<Id>();
        Map<Id, Account> accIdToAccountMap = new Map<Id, Account>();
        
        if(!accList.isEmpty()){
            for(Account acc : accList) {
                accIds.add(acc.Id);   
            }
        }
        
        if(!accList.isEmpty()){
            for(Account acc : accList) {
                accIdToAccountMap.put(acc.Id, acc);   
            }
        }
        
        System.debug('List >>>>>' + accList);
        System.debug('Set >>>>>' + accIds);
        System.debug('Map >>>>>' + accIdToAccountMap);
    }
}