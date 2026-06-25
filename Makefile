include $(TOPDIR)/rules.mk

PKG_NAME:=sing-box
PKG_VERSION:=VERCION
PKG_RELEASE:=0
PKG_LICENSE:=GPL-3.0

LUCI_TITLE:=sing-box rebuild binary for OpenWrt, with high performance
LUCI_PKGARCH:=x86_64

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
