// binary_search_ext.c

#include "ruby.h"

// C function to perform binary search on a sorted array
int binary_search_c(VALUE arr, int target) {
    long left = 0;
    long right = RARRAY_LEN(arr) - 1;
    while (left <= right) {
        long mid = (left + right) / 2;
        int mid_val = NUM2INT(rb_ary_entry(arr, mid));
        if (mid_val == target) {
            return mid;
        } else if (mid_val < target) {
            left = mid + 1;
        } else {
            right = mid - 1;
        }
    }
    return -1;  // Target not found
}

// Ruby method definition
VALUE binary_search_c_wrapper(VALUE self, VALUE arr, VALUE target) {
    return INT2NUM(binary_search_c(arr, NUM2INT(target)));
}

// Ruby extension initialization
void Init_binary_search_ext() {
    // Define the Ruby module containing the method
    VALUE rb_module = rb_define_module("BinarySearch");

    // Define the Ruby method and associate it with the C function
    rb_define_module_function(rb_module, "binary_search", binary_search_c_wrapper, 2);
}
