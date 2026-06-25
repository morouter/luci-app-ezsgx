include $(TOPDIR)/rules.mk

PKG_NAME:=sing-box
PKG_VERSION:=2.0.0
PKG_RELEASE:=$(shell date +"%Y%m%d%H%M%S")
PKG_LICENSE:=GPL-3.0

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
