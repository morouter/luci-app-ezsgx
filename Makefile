include $(TOPDIR)/rules.mk

PKG_NAME:=sing-box
PKG_VERSION:=1.14.0
PKG_RELEASE:=34
PKG_LICENSE:=GPL-3.0

LUCI_TITLE:=sing-box rebuild binary for OpenWrt, with high performance
LUCI_PKGARCH:=x86_64

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
