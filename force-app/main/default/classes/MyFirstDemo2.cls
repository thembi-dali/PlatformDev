public class MyFirstDemo2 {
    
    public MyFirstDemo2(){
        System.debug('Inside Constructor');
    }
    
    public static void method1(){
        Map<Integer, String> intToStrMap1 = new Map<Integer, String>();
        Map<Integer, String> intToStrMap2 = new Map<Integer, String>();
        
        intToStrMap1.put(1,'Red');
        intToStrMap1.put(2,'Green');
        intToStrMap1.put(3,'Purple');
        
        intToStrMap2.put(1,'Red');
        intToStrMap2.put(2,'Green');
        intToStrMap2.put(3,'Purple');
        
        if(intToStrMap1.equals(intToStrMap2)){
            System.debug('Equals');
        }else{
            System.debug('Not equals');
        }
    }
}