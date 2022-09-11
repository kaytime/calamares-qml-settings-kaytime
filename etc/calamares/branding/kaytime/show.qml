import QtQuick 2.0;
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.2

import calamares.slideshow 1.0;

Presentation
{
    id: presentation

    Timer {
        interval: 5000
        running: false
        repeat: true
        onTriggered: presentation.goToNextSlide()
    }
    
    Image {
        id: background
        source: "calamares_background.svg"
        anchors.fill: parent
    }
    
    Image {
        id: image
        source: "calamares_install_image.svg"
        width: 256
        height: 256
        fillMode: Image.PreserveAspectFit
        anchors.left: parent.horizontalCenter
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
    }

    Slide {
        
        ColumnLayout {
            anchors.leftMargin: 18
            anchors.left: parent.left
            anchors.right: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            Label {
                Layout.fillWidth: true

                text: qsTr("Welcome to the #NXWorld")
                font.pixelSize: 22
                font.bold: true
                color: "white"
            }

            Rectangle {
                height: 3
                width: 24
                radius: 2

                color: "white"
            }
            
            Text {
                Layout.fillWidth: true
                Layout.topMargin: 16

                font.pixelSize: 12
                color: "white"
                text: qsTr("Nitrux is a Linux desktop distribution directly based on Debian. It uses the Calamares installer and includes NX Desktop and NX Firewall on top of the KDE Plasma 5 desktop environment and KDE Applications. Nitrux emphasizes the use of AppImages to manage end-user software. Nitrux also does not use systemD as its init system; instead, it uses OpenRC.\n\n"
                           + "Nitrux includes a suite of convergent applications called Maui Apps. We use MauiKit, our convergent, cross-platform UI framework, to create these applications. Both MauiKit and the Maui Apps are entirely free and open-source software.")
                wrapMode: Text.WordWrap
            }
        }
    }

    Slide {
        
        ColumnLayout {
            anchors.leftMargin: 18
            anchors.left: parent.left
            anchors.right: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            Label {
                Layout.fillWidth: true

                text: qsTr("Everything you need to get started.")
                font.pixelSize: 22
                font.bold: true
                color: "white"
            }

            Rectangle {
                height: 3
                width: 24
                radius: 2

                color: "white"
            }
            
            Text {
                Layout.fillWidth: true
                Layout.topMargin: 16

                font.pixelSize: 12
                color: "white"
                text: qsTr("Nitrux is a complete Operating System that ships the essential apps and services for the daily use: office applications, PDF reader, image editor"
                           + ", music and video players, etc.\n\n"
                           + "Nitrux includes a selection of applications carefully picked to perform the best when using your computer:\n\n"
                           + " • Index, the file manager.\n"
                           + " • Nota, a simple text editor.\n"
                           + " • Station, the terminal emulator.\n"
                           + " • Pix, an image gallery.\n"
                           + " • VVave, music player.\n"
                           + " • Buho, a note-taking application.\n"
                           + " • Shelf, simple and light PDF viewer.\n"
                           + " • Clip, a video player.\n"
                           + " • Firefox, ethical web browser.\n"
                           + " • ... And more.")
                wrapMode: Text.WordWrap
            }
        }
    }

    Slide {
        
        ColumnLayout {
            anchors.leftMargin: 18
            anchors.left: parent.left
            anchors.right: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter

            Label {
                Layout.fillWidth: true

                text: qsTr("Explore a universe of apps with AppImage.")
                font.pixelSize: 22
                font.bold: true
                color: "white"
            }

            Rectangle {
                height: 3
                width: 24
                radius: 2

                color: "white"
            }
            
            Text {
                Layout.fillWidth: true
                Layout.topMargin: 16

                font.pixelSize: 12
                color: "white"
                text: qsTr("AppImage provides a way for upstream developers to offer “native” binaries for Linux users just the same way they could do for other operating systems. It allows packaging applications for any common Linux based operating system, e.g., Ubuntu, Debian, OpenSUSE, RHEL, CentOS, Fedora, etc.\n\n"
                           + "AppImages come with all dependencies that cannot be assumed to be part of each target system in"
                           + "a recent enough version and will run on most Linux distributions without further modifications.\n\n"
                           + "An AppImage has these advantages:\n"
                           + " • Just one format for all major distributions.\n"
                           + " • Works out of the box, no installation of runtimes needed.\n"
                           + " • No root needed.\n"
                           + " • One app = one file = super simple for users.\n"
                           + " • Binary delta updates, e.g., for continuous builds (only download the binary diff) using AppImageUpdate.\n"
                           + " • Can GPG2-sign your AppImages (inside the file).\n")
                wrapMode: Text.WordWrap
            }
        }
    }
}
