set -e
cargo fmt
cargo build --release -p jam --target wasm32-unknown-unknown
cp target/wasm32-unknown-unknown/release/jam.wasm shell/game.wasm
rm -f breaking.zip
zip -r breaking.zip shell