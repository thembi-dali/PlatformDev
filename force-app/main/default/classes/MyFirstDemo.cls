// DIFFERENT METHODS

//add(listElement)
//add(index, listElement)
//addAll(fromList)
//addAll(fromSet)
//clear()
//clone()
//contains(listElement)
//equals(list2)

//get(index)
//indexOf(listElement)
//isEmpty()
//remove(index)
//set(index, listElement)
//size()
//sort()

public class MyFirstDemo {
    
    public MyFirstDemo() {
        System.debug('Inside Constructor');
    }
    
    public void method1() {
        List<Integer> intList = new List<Integer>();
        //Set<Integer> intSet2 = new Set<Integer>();
        List<Integer> intList2 = new List<Integer>();
        
        intList.add(21);
        intList.add(2);
        intList.add(33);
        intList.sort();
    
        System.debug('intList ==>' + intList);
        if(intList.isEmpty()){
            System.debug('Empty');
        }else{
            System.debug('Not Empty');
        } 
    }
    
    
    // Set Method Examples
    public static void method2() {
        Set<Integer> intSet = new Set<Integer>();
        Set<Integer> intSet2 = new Set<Integer>();
        
        intSet2.add(28);
        intSet2.add(62);
        intSet2.add(62);
        System.debug('Set2 Contains >>>>>' + intSet2);
        
        intSet.add(11);
        intSet.add(12);
        intSet.add(12);
        intSet.addAll(intSet2);
        System.debug('Set Contains >>>>>' + intSet);
        
    }
    
    // Contain Method Examples
    public static void method3() {
        Set<Integer> intSet = new Set<Integer>();
        Set<Integer> intSet2 = new Set<Integer>();
        
        intSet.add(11);
        intSet.add(12);
        intSet.add(13);
        
            if(intSet.size() > 0){
                System.debug('Set Contains >>>>>' + intSet);
            }

    }
}