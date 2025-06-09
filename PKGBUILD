# Maintainer: David Birks <david@birks.dev>

pkgname=somo
pkgver=1.0.0
pkgrel=1
pkgdesc='A human-friendly alternative to netstat for socket and port monitoring'
url='https://github.com/theopfr/somo'
license=('UNLICENCED')
makedepends=('cargo')
depends=()
arch=('x86_64')
source=("https://github.com/theopfr/somo/archive/refs/tags/v${pkgver}.tar.gz")
sha256sums=('334946fcd0dfa056effbe45ec8be37c72a3bcae50ba7b9464806b0ac7615285c')
options=('!debug')

prepare() {
    cd "$pkgname-$pkgver"
    export RUSTUP_TOOLCHAIN=stable
    cargo fetch --locked --target "$(rustc -vV | sed -n 's/host: //p')"
}

build() {
    cd "$pkgname-$pkgver"
    export RUSTUP_TOOLCHAIN=stable
    export CARGO_TARGET_DIR=target
    cargo build --frozen --release --all-features
}

check() {
    cd "$pkgname-$pkgver"
    export RUSTUP_TOOLCHAIN=stable
    cargo test --frozen --all-features
}

package() {
    install -Dm0755 -t "$pkgdir/usr/bin/" "$pkgname-$pkgver/target/release/$pkgname"
}
