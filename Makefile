include $(TOPDIR)/rules.mk

PKG_NAME:=sing-box
PKG_VERSION:=0.1.0
PKG_RELEASE:=$(shell date +"%Y%m%d%H%M%S")
PKG_LICENSE:=GPL-3.0

LUCI_TITLE:=sing-box rebuild binary for OpenWrt, with high performance
LUCI_PKGARCH:=x86_64

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
