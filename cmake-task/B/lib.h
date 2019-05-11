struct Counter {
public:
    Counter();

    void increase();
    void change_flag();

    int get_value();
    bool get_flag();

private:
    bool flag;
    int value;
};