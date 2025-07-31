set -e
cargo fmt
#cargo build -p jam --target wasm32-unknown-unknown
cargo build --release -p jam --target wasm32-unknown-unknown
#cp target/wasm32-unknown-unknown/debug/jam.wasm shell/game.wasm
cp target/wasm32-unknown-unknown/release/jam.wasm shell/game.wasm
rm -f shell.zip
zip -r shell.zip shell