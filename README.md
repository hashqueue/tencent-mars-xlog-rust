# tencent-mars-xlog-rust
Tencent Xlog Rust decoding and decryption

### ubuntu22.04
ubuntu22.04下需要先安装musl-tools，因为 Rust 需要 musl-gcc 工具链来生成静态链接的可执行文件
```shell
sudo apt install musl-tools -y
musl-gcc --version
./build_linux.sh --out dist
cd dist/
ldd tencent-mars-xlog-util
```

### macOS
  - #### Manual installation
    * [Download Release tencent-mars-xlog-util-macos-universal-binaries.zip](https://github.com/0x1306a94/tencent-mars-xlog-rust/releases)
    ```sh
    unzip tencent-mars-xlog-util-macos-universal-binaries.zip
    cp tencent-mars-xlog-util /usr/local/bin/tencent-mars-xlog-util
    sudo chmod +x /usr/local/bin/tencent-mars-xlog-util
    ```
  - #### Homebrew installation
  ```sh
  brew tap 0x1306a94/homebrew-tap
  brew install tencent-mars-xlog-util
  ```

### Windows
[Download Release](https://github.com/0x1306a94/tencent-mars-xlog-rust/releases)
