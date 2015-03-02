

void setup() {
  int[] array = {
    8, 3, 5, 2, 4, 1, 10, 44, 24, 23
  };
  //int[] array1 = bubbleSort(array);
  //int[] array2 = selectionSort(array);
  int[] array3 = mergeSort(array);
  //println("bubbleSort:");
  //println(array1);
  //println("selectionSort:");
  //println(array2);
  println("mergeSort:");
  println(array3);
}

void swap(int[] array, int a, int b) {
  int temp = array[a];
  array[a] = array[b];
  array[b] = temp;
}

int[] bubbleSort(int[] array) {
  int temp;
  for (int i = 0; i < array.length; i++) {
    for (int j = 0; j < array.length-1; j++) {
      if (array[j] > array[j+1]) {
        temp = array[j];
        array[j] = array[j+1];
        array[j+1] = temp;
      }
    }
  }
  return array;
}

int[] selectionSort(int[] array) {
  int temp;
  int smallest = 0;
  for (int i = 0; i < array.length-1; i++) {
    smallest = i;
    for (int j = i; j < array.length; j++) {
      if (array[smallest]>array[j]) {
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

int[] mergeSort(int[] array) {
  if (array.length==1) return array;
  int[] array1 = new int[array.length/2];
  int[] array2 = new int[array.length -array.length/2];
  for (int i = 0; i < array.length/2; i++) {
    array1[i] = array[i];
  }
  for (int i = 0; i < array.length - array.length/2; i++) {
    array2[i] = array[i+array.length/2];
  }
  return merge(mergeSort(array1), mergeSort(array2));
}


int[] merge(int[] array1, int[] array2) {
  int index1 = 0, index2 = 0;
  int[] finalArray = new int[array1.length+array2.length];
  while (array1.length > index1 || array2.length > index2) {
    if(array1.length == 0){
     finalArray[index1+index2] = array2[index2];
     index2++;
    } else if(array2.length == 0) {
      finalArray[index1+index2] = array1[index1];
      index1++;
    } else if (array1[index1] < array2[index2]) {
      finalArray[index1+index2] = array1[index1];
      index1++;
    } else {
      finalArray[index1+index2] = array2[index2];
      index2++;
    }
  }
  return finalArray;
}

int[] bogoBogoSort(int[] array) {
  return array;
}

