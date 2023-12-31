//
import 'dart:math';

void main(List<String> args) {
  print(DrawingBook.pageCount(271, 271)); // ==> 1
}

/// عندي كتاب بيبدا من صفحة 1 لحد
/// (n)
/// لو عايز افتحه علي صفحه معينه
/// (p)
/// هحتاج اقلب كام مره لو من بداية الكتاب او من اخره واختار الرقم الاقل

class DrawingBook {
  static int pageCount(int n, int p) {
    // ex 20, 11
    int flipsFromFront = p ~/ 2; // from beggining to target 11~/2 = 5
    int flipsFromEnd = (n ~/ 2) - flipsFromFront; // from beggining to the end of the book - from beggining to the target 20~/2 =10, 10 - 5 = 5
    print("from start $flipsFromFront from end $flipsFromEnd");
    return min(flipsFromFront, flipsFromEnd);
  }
}
/**
 A teacher asks the class to open their books to a page number. A student can either start turning pages from the front of the book or from the back of the book. They always turn pages one at a time. When they open the book, page  is always on the right side:

image

When they flip page , they see pages  and . Each page except the last page will always be printed on both sides. The last page may only be printed on the front, given the length of the book. If the book is  pages long, and a student wants to turn to page , what is the minimum number of pages to turn? They can start at the beginning or the end of the book.

Given n and p, find and print the minimum number of pages that must be turned in order to arrive at page p.
ex n=5 , p=3 ==> 
 */
