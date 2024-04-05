{ pkgs, ... }: {

  ##########################################################################
  # 
  #  Install all apps and packages here.
  #
  #  NOTE: Your can find all available options in:
  #    https://daiderd.com/nix-darwin/manual/index.html
  # 
  # TODO Fell free to modify this file to fit your needs.
  #
  ##########################################################################

  # Install packages from nix's official package repository.
  #
  # The packages installed here are available to all users, and are reproducible across machines, and are rollbackable.
  # But on macOS, it's less stable than homebrew.
  #
  # Related Discussion: https://discourse.nixos.org/t/darwin-again/29331
  environment.systemPackages = with pkgs; [
    neovim
    git
    just # use Justfile to simplify nix-darwin's commands 
  ];
  environment.variables.EDITOR = "nvim";

  # TODO To make this work, homebrew need to be installed manually, see https://brew.sh
  # 
  # The apps installed by homebrew are not managed by nix, and not reproducible!
  # But on macOS, homebrew has a much larger selection of apps than nixpkgs, especially for GUI apps!
  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = false;
      # 'zap': uninstalls all formulae(and related files) not listed here.
      cleanup = "zap";
    };

    # Applications to install from Mac App Store using mas.
    # You need to install all these Apps manually first so that your apple account have records for them.
    # otherwise Apple Store will refuse to install them.
    # For details, see https://github.com/mas-cli/mas 
    masApps = {
      # TODO Feel free to add your favorite apps here.

      Xcode = 497799835;
      # Wechat = 836500024;
      # NeteaseCloudMusic = 944848654;
      # QQ = 451108668;
      # WeCom = 1189898970;  # Wechat for Work
      # TecentMetting = 1484048379;
      # QQMusic = 595615424;
    };

    taps = [
      "homebrew/cask-fonts"
      "homebrew/services"
      "homebrew/cask-versions"
      "osx-cross/avr"
      "osx-cross/arm"
      "derailed/k9s"
      "felixkratz/formulae"
      "filosottile/musl-cross"
      "graalvm/tap"
      "helm/tap"
      "homebrew/bundle"
      "jkfran/killport"
      "koekeishiya/formulae"
      "lutzifer/tap"
      "messense/macos-cross-toolchains"
      "nikitabobko/tap"
      "osx-cross/arm"
      "osx-cross/avr"
      "qmk/qmk"
      "quarkusio/tap"
    ];

    # `brew install`
    # TODO Feel free to add your favorite apps here.
    brews = [
      "wget" # download tool
      "curl" # no not install curl via nixpkgs, it's not working well on macOS!
      "aria2" # download tool
      "httpie" # http client

      "act"
      "ansible"
      "aom"
      "aria2"
      "aribb24"
      "arm-gcc-bin@8"
      "arm-none-eabi-binutils"
      "arm-none-eabi-gcc@8"
      "asciiquarium"
      "autoconf"
      "automake"
      "avr-binutils"
      "avr-gcc@8"
      "avrdude"
      "aws-iam-authenticator"
      "bat"
      "bdw-gc"
      "berkeley-db@5"
      "blueutil"
      "boost"
      "bootloadhid"
      "brotli"
      "c-ares"
      "ca-certificates"
      "cabextract"
      "cairo"
      "capstone"
      "cdrtools"
      "certifi"
      "cffi"
      "chart-releaser"
      "cjson"
      "clang-format"
      "cmake"
      "cmatrix"
      "confuse"
      "cryptography"
      "dav1d"
      "dfu-programmer"
      "dfu-util"
      "dive"
      "dtc"
      "dua-cli"
      "eksctl"
      "emacs"
      "espeak"
      "ffmpeg"
      "fish"
      "flac"
      "fontconfig"
      "freetype"
      "frei0r"
      "fribidi"
      "fzf"
      "gcc"
      "gdbm"
      "generate-json-schema"
      "geoipupdate"
      "gettext"
      "gh"
      "giflib"
      "git"
      "gitmoji"
      "gitui"
      "glib"
      "gmp"
      "gnu-sed"
      "gnupg"
      "gnutls"
      "go"
      "go-task"
      "gpgme"
      "gradle"
      "graphite2"
      "guile"
      "harfbuzz"
      "hcloud"
      "helm"
      "hid_bootloader_cli"
      "hidapi"
      "highway"
      "htop"
      "hwloc"
      "ical-buddy"
      "icu4c"
      "imath"
      "isl"
      "jansson"
      "jenv"
      "jpeg-turbo"
      "jpeg-xl"
      "jq"
      "jsoncpp"
      "jupyterlab"
      "k9s"
      "killport"
      "kubectx"
      "kubernetes-cli"
      "lame"
      "leptonica"
      "libarchive"
      "libass"
      "libassuan"
      "libb2"
      "libbluray"
      "libevent"
      "libftdi"
      "libgcrypt"
      "libgit2"
      "libgpg-error"
      "libiconv"
      "libidn2"
      "libimagequant"
      "libksba"
      "libmagic"
      "libmicrohttpd"
      "libmpc"
      "libnet"
      "libnghttp2"
      "libogg"
      "libpng"
      "libpq"
      "libpthread-stubs"
      "libraqm"
      "librist"
      "libsamplerate"
      "libslirp"
      "libsndfile"
      "libsodium"
      "libsoxr"
      "libssh"
      "libssh2"
      "libtasn1"
      "libtermkey"
      "libtiff"
      "libtool"
      "libunibreak"
      "libunistring"
      "libusb"
      "libusb-compat"
      "libuv"
      "libvidstab"
      "libvmaf"
      "libvorbis"
      "libvpx"
      "libvterm"
      "libx11"
      "libxau"
      "libxcb"
      "libxdmcp"
      "libxext"
      "libxrender"
      "little-cms2"
      "lsd"
      "luajit"
      "luv"
      "lz4"
      "lzo"
      "m4"
      "make"
      "maven"
      "mbedtls"
      "mdloader"
      "mpdecimal"
      "mpfr"
      "mpg123"
      "msgpack"
      "ncurses"
      "neofetch"
      "neovim"
      "nettle"
      "node"
      "npth"
      "numpy"
      "nvm"
      "octant"
      "oniguruma"
      "openblas"
      "opencore-amr"
      "openexr"
      "openjdk"
      "openjpeg"
      "openldap"
      "openssl@1.1"
      "openssl@3"
      "openvino"
      "opus"
      "p11-kit"
      "packer"
      "pandoc"
      "pango"
      "pcre2"
      "perl"
      "pinentry"
      "pixman"
      "pkg-config"
      "pnpm"
      "portaudio"
      "postgresql@14"
      "protobuf"
      "pugixml"
      "pycparser"
      "pyenv"
      "python-argcomplete"
      "python-certifi"
      "python-cryptography"
      "python-dateutil"
      "python-jinja"
      "python-lxml"
      "python-magic"
      "python-markupsafe"
      "python-packaging"
      "python-pathspec"
      "python-pyparsing"
      "python-pytz"
      "python-setuptools"
      "python@3.10"
      "python@3.11"
      "python@3.12"
      "pyyaml"
      "qemu"
      "qmk"
      "pillow"
      "quarkus"
      "rav1e"
      "rclone"
      "readline"
      "ripgrep"
      "rubberband"
      "screenresolution"
      "sdl2"
      "sevenzip"
      "six"
      "sketchybar"
      "skhd"
      "snappy"
      "speex"
      "spotify-tui"
      "sqlite"
      "srt"
      "starship"
      "structurizr-cli"
      "svt-av1"
      "switchaudio-osx"
      "tbb"
      "tcl-tk"
      "tcptraceroute"
      "teensy_loader_cli"
      "telnet"
      "terraform"
      "terraformer"
      "terragrunt"
      "tesseract"
      "tesseract-lang"
      "texinfo"
      "theora"
      "tokyo-cabinet"
      "tree"
      "tree-sitter"
      "unbound"
      "unibilium"
      "vde"
      "watch"
      "webp"
      "wget"
      "wimlib"
      "x264"
      "x265"
      "x86_64-unknown-linux-gnu"
      "x86_64-unknown-linux-musl"
      "xorgproto"
      "xvid"
      "xz"
      "yabai"
      "yadm"
      "yamllint"
      "yarn"
      "youtube-dl"
      "yq"
      "zeromq"
      "zimg"
      "zinit"
      "zoxide"
      "zstd"
    ];

    # `brew install --cask`
    # TODO Feel free to add your favorite apps here.
    casks = [
      "firefox"
      "google-chrome"
      "visual-studio-code"

      # IM & audio & remote desktop & meeting
      "telegram"
      "discord"

      "anki"
      "iina" # video player
      "raycast" # (HotKey: alt/option + space)search, caculate and run scripts(with many plugins)
      "stats" # beautiful system monitor
      "eudic" # 欧路词典

      # Development
      "insomnia" # REST client
      "wireshark" # network analyzer

      "1password-cli"
      "alt-tab"
      "bruno"
      "firefox"
      "font-hack-nerd-font"
      "kitty"
      "macgesture"
      "notion"
      "postman"
      "qmk-toolbox"
      "rar"
      "sf-symbols"
      "shortcat"
      "temurin11"
      "temurin17"
      "temurin21"
      "vlc"
    ];
  };
}
