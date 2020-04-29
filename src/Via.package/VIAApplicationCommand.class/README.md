I am an abstract class for commands to the (GUI-) application. ApplicationCommands can be executed, typically through the unique URL of that command.

IMPORTANT: In the executeOnApplication methods you should not use any seaside calls, since this will lead to "task not delegated" errors from within the main task.