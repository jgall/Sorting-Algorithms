

void setup(){
  int[] array = {8,3,5,2,4,1};
  int[] array1 = selectionSort(array);
  
  println(array1);
}

void swap(int[] array, int a, int b){
  int temp = array[a];
  array[a] = array[b];
  array[b] = temp;
}

int[] selectionSort(int[] array){
  int temp;
  int smallest = 0;
  for(int i = 0; i < array.length-1; i++){
    smallest = i;
    for(int j = i; j < array.length; j++){
      if(array[smallest]>array[j]){
        smallest = j;
      }
    }
    //swaps two things in the array (a, b)
    temp = array[smallest];
    array[smallest] = array[i];
    array[i] = temp;
  }
  return array;
  
}
