{
  outputs = {self}: {
    templates = {
      stego-toolkit = {
        path = ./stego-toolkit;
      };

    defaultTemplate = self.templates.flakeonly;
  };
}
