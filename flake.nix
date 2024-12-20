{
  outputs = { self }: {
    templates = {
      stego-toolkit = {
        path = ./stego-toolkit;
        description = "Impermanent flake";
      };
    };
    defaultTemplate = self.templates.stego-toolkit;
  };
}
