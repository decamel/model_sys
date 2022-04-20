double lawFx(value) => (value + 2) / (value - 2) * -1;
double lawFxR(left, right, average) =>
    ((2 * right - 2) / (right + 1)) - ((2 * left - 2) / (left + 1));
