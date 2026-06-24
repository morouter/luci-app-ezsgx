include $(TOPDIR)/rules.mk

PKG_NAME:=sing-box
GOHOSTOS:=$(shell go env GOHOSTOS)
GOHOSTARCH:=$(shell go env GOHOSTARCH)
PKG_VERSION:=$(shell CGO_ENABLED=0 GOOS=$(GOHOSTOS) GOARCH=$(GOHOSTARCH) go run github.com/sagernet/sing-box/cmd/internal/read_tag@latest)
PKG_RELEASE:=0
PKG_LICENSE:=GPL-3.0-or-later

LUCI_TITLE:=sing-box rebuild binary for OpenWrt, with high performance
LUCI_PKGARCH:=x86_64
LUCI_DEPENDS:= \
  +ca-bundle \
  +kmod-inet-diag \
  +kmod-tun \
  +firewall4 \
  +kmod-nft-queue

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
