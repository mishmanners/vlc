/*****************************************************************************
 * Copyright (C) 2019 VLC authors and VideoLAN
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * ( at your option ) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston MA 02110-1301, USA.
 *****************************************************************************/
pragma Singleton
import QtQuick 2.11

Item {
    id: vlc_style

    readonly property real scale: mainInterface.intfScaleFactor

    FontMetrics { id: fontMetrics_xxsmall;  font.pixelSize: dp(6, scale);  }
    FontMetrics { id: fontMetrics_xsmall;   font.pixelSize: dp(8, scale);  }
    FontMetrics { id: fontMetrics_small;    font.pixelSize: dp(10, scale); }
    FontMetrics { id: fontMetrics_normal;   font.pixelSize: dp(12, scale); }
    FontMetrics { id: fontMetrics_large;    font.pixelSize: dp(14, scale); }
    FontMetrics { id: fontMetrics_xlarge;   font.pixelSize: dp(16, scale); }
    FontMetrics { id: fontMetrics_xxlarge;  font.pixelSize: dp(20, scale); }
    FontMetrics { id: fontMetrics_xxxlarge; font.pixelSize: dp(24, scale); }

    property alias self: vlc_style

    property VLCColors colors: VLCColors {}

    // When trying to force night/dark theme colors for items,
    // this can be used:
    property VLCColors nightColors: VLCColors { state: "night" }
    property VLCColors dayColors: VLCColors { state: "day" }

    // Sizes
    property double margin_xxxsmall: dp(2, scale);
    property double margin_xxsmall: dp(4, scale);
    property double margin_xsmall: dp(8, scale);
    property double margin_small: dp(12, scale);
    property double margin_normal: dp(16, scale);
    property double margin_large: dp(24, scale);
    property double margin_xlarge: dp(32, scale);
    property double margin_xxlarge: dp(36, scale);

    property int fontSize_xsmall: fontMetrics_xsmall.font.pixelSize
    property int fontSize_small:  fontMetrics_small.font.pixelSize
    property int fontSize_normal: fontMetrics_normal.font.pixelSize
    property int fontSize_large:  fontMetrics_large.font.pixelSize
    property int fontSize_xlarge: fontMetrics_xlarge.font.pixelSize
    property int fontSize_xxlarge: fontMetrics_xxlarge.font.pixelSize
    property int fontSize_xxxlarge: fontMetrics_xxxlarge.font.pixelSize

    property int fontHeight_xsmall: Math.ceil(fontMetrics_xsmall.lineSpacing)
    property int fontHeight_small:  Math.ceil(fontMetrics_small.lineSpacing)
    property int fontHeight_normal: Math.ceil(fontMetrics_normal.lineSpacing)
    property int fontHeight_large:  Math.ceil(fontMetrics_large.lineSpacing)
    property int fontHeight_xlarge: Math.ceil(fontMetrics_xlarge.lineSpacing)
    property int fontHeight_xxlarge: Math.ceil(fontMetrics_xxlarge.lineSpacing)
    property int fontHeight_xxxlarge: Math.ceil(fontMetrics_xxxlarge.lineSpacing)


    property int heightAlbumCover_xsmall: dp(32, scale);
    property int heightAlbumCover_small: dp(64, scale);
    property int heightAlbumCover_normal: dp(128, scale);
    property int heightAlbumCover_large: dp(255, scale);
    property int heightAlbumCover_xlarge: dp(512, scale);

    property int listAlbumCover_height: dp(32, scale)
    property int listAlbumCover_width: listAlbumCover_height * 16.0/9
    property int listAlbumCover_radius: dp(3, scale)
    property int trackListAlbumCover_width: dp(32, scale)
    property int trackListAlbumCover_heigth: dp(32, scale)
    property int trackListAlbumCover_radius: dp(2, scale)

    property int tableCoverRow_height: Math.max(listAlbumCover_height, fontHeight_normal) + margin_xsmall * 2
    property int tableRow_height: fontHeight_normal + margin_small * 2

    property int icon_xsmall: dp(8, scale);
    property int icon_small: dp(16, scale);
    property int icon_normal: dp(32, scale);
    property int icon_medium: dp(48, scale);
    property int icon_large: dp(64, scale);
    property int icon_xlarge: dp(128, scale);

    property int icon_topbar: dp(38, scale)
    property int icon_checkedDelegate: dp(40, scale)

    property int play_cover_small: dp(24, scale)
    property int play_cover_normal: dp(48, scale)

    property int cover_xxsmall: dp(32, scale);
    property int cover_xsmall: dp(64, scale);
    property int cover_small: dp(96, scale);
    property int cover_normal: dp(128, scale);
    property int cover_large: dp(160, scale);
    property int cover_xlarge: dp(192, scale);

    property int heightBar_xxxsmall: dp(2, scale);
    property int heightBar_xxsmall: dp(4, scale);
    property int heightBar_xsmall: dp(8, scale);
    property int heightBar_small: dp(16, scale);
    property int heightBar_normal: dp(32, scale);
    property int heightBar_medium: dp(48, scale);
    property int heightBar_large: dp(64, scale);
    property int heightBar_xlarge: dp(128, scale);
    property int heightBar_xxlarge: dp(256, scale);

    property int minWindowWidth: dp(500, scale);
    property int maxWidthPlaylist: dp(400, scale);
    property int defaultWidthPlaylist: dp(300, scale);
    property int closedWidthPlaylist: dp(20, scale);

    property int widthSearchInput: dp(200, scale);
    property int widthSortBox: dp(150, scale);
    property int widthTeletext: dp(280, scale);
    property int widthExtendedSpacer: dp(128, scale);
    property int heightInput: dp(22, scale);

    property int scrollbarWidth: dp(4, scale);
    property int scrollbarHeight: dp(100, scale);

    property int selectedBorder: 2

    property real network_normal: dp(100, scale)

    property int miniPlayerHeight: dp(76, scale)

    property int expandAlbumTracksHeight: dp(200, scale)

    //combobox
    property int combobox_width_small: dp(64, scale)
    property int combobox_width_normal: dp(96, scale)
    property int combobox_width_large: dp(128, scale)

    property int combobox_height_small: dp(16, scale)
    property int combobox_height_normal: dp(24, scale)
    property int combobox_height_large: dp(30, scale)

    //button
    property int button_width_small: dp(64, scale)
    property int button_width_normal: dp(96, scale)
    property int button_width_large: dp(128, scale)

    property int table_section_width: dp(32, scale)
    property int table_section_text_margin: dp(10, scale)

    property int gridCover_network_width: colWidth(1)
    property int gridCover_network_height: gridCover_network_width
    property int gridCover_network_border: dp(3, scale)

    property int gridCover_music_width: colWidth(1)
    property int gridCover_music_height: gridCover_music_width
    property int gridCover_music_border: dp(3, scale)

    property int gridCover_video_width: colWidth(2)
    property int gridCover_video_height: ( gridCover_video_width * 10.0 ) / 16
    property int gridCover_video_border: dp(4, scale)

    property int gridCover_video_width_large: dp(406, scale)
    property int gridCover_video_height_large: ( gridCover_video_width_large * 10.0 ) / 16
    
    property int gridCover_radius: dp(4, scale)

    property int expandCover_music_height: dp(171, scale)
    property int expandCover_music_width: dp(171, scale)
    property int expandCover_music_radius: gridCover_radius
    property int expandDelegate_border: dp(1, scale)

    property int artistGridCover_radius: dp(90, scale)

    //GridItem
    property int gridItem_network_width: VLCStyle.gridCover_network_width
    property int gridItem_network_height: VLCStyle.gridCover_network_height + VLCStyle.margin_xsmall + VLCStyle.fontHeight_normal + VLCStyle.margin_xsmall + VLCStyle.fontHeight_normal

    property int gridItem_music_width: VLCStyle.gridCover_music_width
    property int gridItem_music_height: VLCStyle.gridCover_music_height + VLCStyle.margin_xsmall + VLCStyle.fontHeight_normal + VLCStyle.margin_xsmall + VLCStyle.fontHeight_small

    property int gridItem_video_width: VLCStyle.gridCover_video_width
    property int gridItem_video_height: VLCStyle.gridCover_video_height + VLCStyle.margin_xxsmall + VLCStyle.fontHeight_normal + VLCStyle.fontHeight_normal

    property int gridItem_video_width_large: VLCStyle.gridCover_video_width_large
    property int gridItem_video_height_large: VLCStyle.gridCover_video_height_large + VLCStyle.margin_xxsmall + VLCStyle.fontHeight_large +
                                              VLCStyle.margin_xxsmall + VLCStyle.fontHeight_normal

    property int gridItemSelectedBorder: dp(8, scale)

    property int column_width: dp(114, scale)
    property int column_margin_width: dp(32, scale)

    property int table_cover_border: dp(2, scale)

    property int artistBanner_height: dp(200, scale)

    //global application size, updated by the root widget
    property int appWidth: 0
    property int appHeight: 0

    //global application margin "safe area"
    property int applicationHorizontalMargin: mainInterface.clientSideDecoration ? dp(5, scale) : 0
    property int applicationVerticalMargin: mainInterface.clientSideDecoration ? dp(5, scale) : 0

    property int globalToolbar_height: dp(40, scale)
    property int localToolbar_height: dp(48, scale)
    property int banner_icon_size: dp(28, scale)

    property int bannerTabButton_width_small: banner_icon_size
    property int bannerTabButton_width_large: column_width

    property int bannerButton_height: dp(32, scale)
    property int bannerButton_width: dp(40, scale)

    //timings
    property int delayToolTipAppear: 500;
    property int timingPlaylistClose: 1000;
    property int timingPlaylistOpen: 1000;
    property int timingGridExpandOpen: 200;
    property int timingListExpandOpen: 200;

    //default arts
    property url noArtCover: "qrc:///noart.png";
    property url noArtAlbum: "qrc:///noart_album.svg";
    property url noArtArtist: "qrc:///noart_artist.svg";
    property url noArtArtistSmall: "qrc:///noart_artist_small.svg";
    property url noArtAlbumCover: "qrc:///noart_albumCover.svg";
    property url noArtArtistCover: "qrc:///noart_artistCover.svg";
    property url noArtVideoCover: "qrc:///noart_videoCover.svg";

    //device pixel
    function dp(px, scale) {
        if (typeof scale === "undefined")
            scale = mainInterface.intfScaleFactor

        var scaledPx = Math.round(px * scale)
        if (scaledPx < 0)
            return Math.min(-1, scaledPx)
        else if (scaledPx > 0)
            return Math.max(1, scaledPx)
        else // scaledPx == 0
            return 0
    }

    function colWidth(nb) {
      return nb * VLCStyle.column_width + ( nb - 1 ) * VLCStyle.column_margin_width;
    }

    //Returns the number columns fitting in given width
    function gridColumnsForWidth(width) {
        return Math.floor((width + column_margin_width) / (column_width + column_margin_width))
    }

}
