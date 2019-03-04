#include <iostream>
#include "main.h"

void prepare_counter(Counter* counter) {
    if (!counter->get_flag()) {
        counter->change_flag();
    }

    counter->increase();
}

void print_value(int value, bool flag) {
    if (flag) {
        std::cout << "Your flag is true, so here's your value: " << value << '\n';
    } else {
        std::cout << "Sorry, no value today\n";
    }
}

int main() {
    auto* c = new Counter();

    std::cout << c->get_value() << '\n';

    while (c->get_value() < 10) {
        c->increase();
    }

    print_value(c->get_value(), c->get_flag());

    prepare_counter(c);

    print_value(c->get_value(), c->get_flag());
    
    delete c;

    return 0;
}
