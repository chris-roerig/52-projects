import std.stdio;

void main()
{
    string name;

    write("What is your name? ");
    readf("%s\n", &name);

    writeln("Hello ", name, "!");
}

