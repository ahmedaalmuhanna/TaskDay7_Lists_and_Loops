/*******************************************************************************************

* Programmer: AHMED ALMUHANNA                                                             *

* Programming Assignment: CLASS 7                                                         *

* Date:JUNE 13, 2022                                                                      *

* Description: FOR LOOP, WHERE(), FIRSTWHERE() AND FINDODD() FUNCTION                     *

*******************************************************************************************/

// void main() {
//   ////////////////////////////////////EXPLNATION////////////////////////////////////////////
//   List<String> countries = ['Kuwait', "USA", 'UAE'];
//   // int i = 0;
//   // print(countries);
//   // countries.add("BHR");
//   // print(countries);
//   // print(countries[2]);

//   // for (String country in countries) {
//   //   // FOR EACH
//   //   print(country.toLowerCase());
//   // }
//   // print('\n\n\n');
//   // for (i; i <= 3; i++) {
//   //   print(countries[i]);
//   // }
//   // // countries.where((element) => false)
//   // print(countries.where((element) => element.startsWith("U")));
//   // print(countries.where((element) => element.startsWith("U")).toList());

//   ///// maps
//   //countries.map((e) => print(e)).toList();
// }
//import 'dart:svg';

////////////////////////////////////TASKS////////////////////////////////////////////////

void main() {
  List<int> num = [4, 2, 22, 4, 58];
  // sum(num);
  // print(filterVisitors(num, 1));
  int firstOddNumber = findOdds(num);
  print(firstOddNumber);
}
//////////////////////////////////////////////FUNCTIONS////////////////////////////////

/*********************************************************************************************
* -Description: THIS FUNCTION TAKES AN INT LIST AND FIND THE LARGER NUMBER IN THE LIST        *
* -FUNCTIONALITY: A FOR LOOP IS USED IN THIS FUNCTION TO CHECK EACH INDEX WITH THE INDEX      *
*  AFTER IT. BY SUING IF STATEMENT, WE CAN COMPARE THE INDEX WITH INDEX+1.                    * 
* -RETURN : AN INT LIST CALLED theList()                                                      *                    
*********************************************************************************************/

int largerNumber(List<int> myList) {
  int number = 0;
  for (int i = 0; i < 4; i++) {
    if (myList[i] < myList[i + 1]) {
      number = myList[i + 1];
      print(number);
    }
  }
  print('Larger number: $number \n ');
  return number;
}

/*********************************************************************************************
* -Description: THIS FUNCTION TAKES AN INT LIST AND SUM ALL ELEMENTS IN THE LIST AND SAVE IT  *
*  IN sum                                                                                     *
* -FUNCTIONALITY: THE FUNCTION TAKES THE FIRST ELEMENT AND SUM IT WITH ZERO, WHEN i==0,       *
*  WHEN i>0, IT STARTS ADDING THE NEXT ELEMENT WITH SUM                                       * 
* -RETURN : AN INT  CALLED sum                                                                *                    
*********************************************************************************************/
int sum(List<int> myList) {
  int sum = 0;
  for (int i = 0; i < 5; i++) {
    sum += myList[i];
    print(sum);
  }
  print("the sumation for the list $myList is $sum");
  return sum;
}

/*********************************************************************************************
* -Description: THIS FUNCTION TAKES A LIST AND AN INT AS AN INPUT AND RETURN A LIST           *
* -FUNCTIONALITY: IT COMPARES THE AGES IN THE LIST WITH THE MINIMUM AGE AND SAVE IT IN A LIST * 
*  CALLED THE LIST VIA toList() FUNCTION                                                      *
* -RETURN : AN INT LIST CALLED theList()                                                      *                    
*********************************************************************************************/

List filterVisitors(List<int> ages, int minAge) {
  List<int> theList = ages.where((age) => age > minAge).toList();
  print("the ages older than $minAge are/is :$theList\n");

  return theList;
}
/*********************************************************************************************
* -Description: THIS FUNCTION TAKES A LIST AS AN INPUT AND RETURN AN INT                      *
* -FUNCTIONALITY: IT USES firstWhere() TO FIND THE FIRST ODD NUMBER AND SAVE IT IN firstOdd   * 
* -RETURN : AN INT CALLED theList()                                                           *                    
*********************************************************************************************/

int findOdds(List<int> num) {
  int firstOdd = 0;
  firstOdd = num.firstWhere((number) => (number % 2 != 0), orElse: (() => 77));
  print("the first ood number is: $firstOdd");
  return firstOdd;
}
