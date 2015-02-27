

void setup(){
  int[] array = {8,3,5,2,4,1};
  int[] array1 = bubbleSort(array);
  int[] array2 = selectionSort(array);
  println(array1);
  println(array2);
}

void swap(int[] array, int a, int b){
  int temp = array[a];
  array[a] = array[b];
  array[b] = temp;
}

int[] bubbleSort(int[] array){
  int temp;
  for(int i = 0; i < array.length; i++){
    for(int j = 0; j < array.length-1; j++){
      if(array[j] > array[j+1]){
        temp = array[j];
        array[j] = array[j+1];
        array[j+1] = temp;
      }
    }
  }
  return array;
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

int[] mergeSort(int[] array){
  
}

int[] bogoBogoSort(int[] array){
  return array;
}
