#!/bin/sh

install_resource()
{
  case $1 in
    *.storyboard)
      echo "ibtool --reference-external-strings-file --errors --warnings --notices --output-format human-readable-text --compile ${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/`basename \"$1\" .storyboard`.storyboardc ${PODS_ROOT}/$1 --sdk ${SDKROOT}"
      ibtool --reference-external-strings-file --errors --warnings --notices --output-format human-readable-text --compile "${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/`basename \"$1\" .storyboard`.storyboardc" "${PODS_ROOT}/$1" --sdk "${SDKROOT}"
      ;;
    *.xib)
        echo "ibtool --reference-external-strings-file --errors --warnings --notices --output-format human-readable-text --compile ${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/`basename \"$1\" .xib`.nib ${PODS_ROOT}/$1 --sdk ${SDKROOT}"
      ibtool --reference-external-strings-file --errors --warnings --notices --output-format human-readable-text --compile "${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/`basename \"$1\" .xib`.nib" "${PODS_ROOT}/$1" --sdk "${SDKROOT}"
      ;;
    *.framework)
      echo "rsync -rp ${PODS_ROOT}/$1 ${CONFIGURATION_BUILD_DIR}/${FRAMEWORKS_FOLDER_PATH}"
      rsync -rp "${PODS_ROOT}/$1" "${CONFIGURATION_BUILD_DIR}/${FRAMEWORKS_FOLDER_PATH}"
      ;;
    *.xcdatamodeld)
      echo "xcrun momc ${PODS_ROOT}/$1 ${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/`basename $1 .xcdatamodeld`.momd"
      xcrun momc "${PODS_ROOT}/$1" "${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}/`basename $1 .xcdatamodeld`.momd"
      ;;
    *)
      echo "rsync -av --exclude '*/.svn/*' ${PODS_ROOT}/$1 ${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}"
      rsync -av --exclude '*/.svn/*' "${PODS_ROOT}/$1" "${CONFIGURATION_BUILD_DIR}/${UNLOCALIZED_RESOURCES_FOLDER_PATH}"
      ;;
  esac
}
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/bubble-default-incoming-green.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/bubble-default-incoming-green@2x.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/bubble-default-incoming-selected.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/bubble-default-incoming-selected@2x.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/bubble-default-incoming.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/bubble-default-incoming@2x.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/bubble-default-outgoing-green.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/bubble-default-outgoing-green@2x.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/bubble-default-outgoing-selected.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/bubble-default-outgoing-selected@2x.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/bubble-default-outgoing.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/bubble-default-outgoing@2x.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/bubble-square-incoming-selected.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/bubble-square-incoming-selected@2x.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/bubble-square-incoming.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/bubble-square-incoming@2x.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/bubble-square-outgoing-selected.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/bubble-square-outgoing-selected@2x.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/bubble-square-outgoing.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/bubble-square-outgoing@2x.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/bubble-typing.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/bubble-typing@2x.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/input-bar.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/input-bar@2x.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/input-field.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/input-field@2x.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/send-highlighted.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/send-highlighted@2x.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/send.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Images/send@2x.png'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Sounds/messageReceived.aiff'
install_resource 'JSMessagesViewController/JSMessagesTableViewController/Resources/Sounds/messageSent.aiff'
install_resource 'ObjectiveDDP/ObjectiveDDP/libcrypto.a'
