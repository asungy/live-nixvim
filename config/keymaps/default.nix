let
  options = desc: {
    silent = true;
    noremap = true;
    desc = desc;
  };
in
[
  {
    action = "k<S-j>";
    key = "<S-k>";
    mode = "n";
    options = options "Join current line with one above it";
  }
  {
    action = "<gv";
    key = "<";
    mode = "v";
    options = options "Stay in indent mode when indenting to the left";
  }
  {
    action = ">gv";
    key = ">";
    mode = "v";
    options = options "Stay in indent mode when indenting to the right";
  }
  {
    action = ":m .+1<CR>==";
    key = "<A-j>";
    mode = "v";
    options = options "Move text down in visual mode";
  }
  {
    action = ":m .-2<CR>==";
    key = "<A-k>";
    mode = "v";
    options = options "Move text up in visual mode";
  }
  {
    action = ":move '>+1<CR>gv-gv";
    key = "<A-j>";
    mode = "x";
    options = options "Move text down in visual block mode";
  }
  {
    action = ":move '>-2<CR>gv-gv";
    key = "<A-k>";
    mode = "x";
    options = options "Move text up in visual block mode";
  }
  {
    action = "<C-w>h";
    key = "<C-h>";
    mode = "n";
    options = options "Navigate to left adjacent buffer";
  }
  {
    action = "<C-w>j";
    key = "<C-j>";
    mode = "n";
    options = options "Navigate to bottom adjacent buffer";
  }
  {
    action = "<C-w>k";
    key = "<C-k>";
    mode = "n";
    options = options "Navigate to top adjacent buffer";
  }
  {
    action = "<C-w>l";
    key = "<C-l>";
    mode = "n";
    options = options "Navigate to right adjacent buffer";
  }
  {
    action = "<CMD>resize +2<CR>";
    key = "<C-Up>";
    mode = "n";
    options = options "Resize up";
  }
  {
    action = "<CMD>resize -2<CR>";
    key = "<C-Down>";
    mode = "n";
    options = options "Resize down";
  }
  {
    action = "<CMD>vertical resize -2<CR>";
    key = "<C-Left>";
    mode = "n";
    options = options "Resize left";
  }
  {
    action = "<CMD>vertical resize +2<CR>";
    key = "<C-Right>";
    mode = "n";
    options = options "Resize right";
  }
  {
    action = "gt";
    key = "<S-l>";
    mode = "n";
    options = options "Navigate to right tab";
  }
  {
    action = "gT";
    key = "<S-h>";
    mode = "n";
    options = options "Navigate to left tab";
  }
  {
    action = "<CMD>NvimTreeToggle<CR>";
    key = "<C-n>";
    mode = "n";
    options = options "Toggle file explorer";
  }
  {
    action = "<Nop>";
    key = "<C-LeftMouse>";
    mode = "n";
    options = options "Unmap Ctrl+Left-Click";
  }
  {
    action = "<Nop>";
    key = "<Space>";
    mode = "";
    options = options "Unmap Space (which is the leader key)";
  }
  {
    action = "<CMD>vsplit<CR>";
    key = "<leader>vs";
    mode = "n";
    options = options "Vertically split window";
  }
  {
    action = "<CMD>tabnew<CR>";
    key = "<leader>nt";
    mode = "n";
    options = options "Create new tab";
  }
  {
    action = "<CMD>MaximizerToggle!<CR>";
    key = "<leader>mt";
    mode = "n";
    options = options "Toggle window maximization";
  }
  {
    action = "<CMD>terminal<CR>";
    key = "<leader>tr";
    mode = "n";
    options = options "Open terminal";
  }
]
