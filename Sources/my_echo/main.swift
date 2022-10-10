import ArgumentParser

struct RootCommand: ParsableCommand {
    static var configuration = CommandConfiguration(
        commandName: "my_echo",
        abstract: "echo",
        version: "0.1.1"
    )

    @OptionGroup()
    var options: RootCommandOptions

    func run() throws {
        print(options.argument)
    }
}

struct RootCommandOptions:  ParsableArguments {
    @Argument()
    var argument: String
}

RootCommand.main()
