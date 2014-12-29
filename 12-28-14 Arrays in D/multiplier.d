import std.stdio;
import std.algorithm;
import std.string;

void main()
{
    double multiplier  = getMultiplier();
    double[] factors   = getFactors();

    if( shouldSort() )
    {
        writeln("Sorting the factor list\n");
        sort(factors);
    }

    writeln("Generating results\n");

    int count;
    while(count < factors.length)
    {
        double factor  = factors[count];
        double product = getProduct(factor, multiplier);

        printMessage(factor, multiplier, product);
        ++count;
    }

    writeln("\nAll done!");
}

double getNumberFromInput()
{
    double number;
    write("Number to multiply: ");
    readf(" %s", &number);

    return number;
}

double[] getFactors()
{
    double factor;
    double[] factors;

    writeln("Enter 0 to continue\n");

    while(true)
    {
        factor = getNumberFromInput();

        if(factor == 0) break;

        factors ~= factor;
    }
    
    return factors;
}

double getMultiplier()
{
    double multiplier;

    write("Enter the multiplier: ");
    readf(" %s", &multiplier);

    return multiplier;
}

double getProduct(double factor, double multiplier)
{
    return factor * multiplier;
}

void printMessage(double factor, double multiplier, double product)
{
    writeln(factor, " * ", multiplier, " = ", product);  
}

bool shouldSort()
{
    string input;

    write("Sort the factors list? [y/n]: ");
    readf(" %s\n", &input);

    return input == "y";
}
