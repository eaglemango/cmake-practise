#include "lib.h"

Counter::Counter() {
    flag = false;
    value = 0;
}

void Counter::increase() {
    ++value;
}

void Counter::change_flag()  {
    flag = !flag;
}


int Counter::get_value() {
    return value;
}

bool Counter::get_flag() {
    return flag;
}
