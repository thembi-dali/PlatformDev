public class dmlDemo {
    
    public static void CreateContactList(){
        List<Contact> conList = new List<Contact> {
            new Contact(FirstName='Dwayne',LastName='Johnson',Department='Technology'),
            new Contact(FirstName='Sam',LastName='Jackson',Department='Finance'),
            new Contact()};
                
   //Bulk insert all contacts with one DML call
   Database.SaveResult[] srList = Database.insert(conList, false);
   //Iterate through each returned result
        for(Database.SaveResult sr : srList) {
            if (sr.isSuccess()) {
                //Operation was successful, so get the ID of the record
                System.debug('Successfully inserted contact. Contact ID: ' + sr.getId());
            } else {
                //Operaton failed, so get all errors
                for(Database.Error err : sr.getErrors()) {
                    System.debug('The following error has occurred.');
                    System.debug(err.getStatusCode() + ': ' + err.getMessage());
                    System.debug('Contact fields that affected this error: ' + err.getFields());
                }
            }
        }
   }
}