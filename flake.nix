{
  outputs = { self }: {
    templates = {
      stego-toolkit = {
        path = ./stego-toolkit;
      };
    };
  };

  templates.default = "stego-toolkit";
}
