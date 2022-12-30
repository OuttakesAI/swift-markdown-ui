import SwiftUI

extension Theme {
  public static let docC = Theme()
    .text {
      ForegroundColor(.text)
    }
    .link {
      ForegroundColor(.link)
    }
    .heading1 { label in
      label
        .markdownBlockMargins(top: .em(0.8), bottom: .zero)
        .markdownTextStyle {
          FontWeight(.semibold)
          FontSize(.em(2))
        }
    }
    .heading2 { label in
      label
        .lineSpacing(.em(0.0625))
        .markdownBlockMargins(top: .em(1.6), bottom: .zero)
        .markdownTextStyle {
          FontWeight(.semibold)
          FontSize(.em(1.88235))
        }
    }
    .heading3 { label in
      label
        .lineSpacing(.em(0.07143))
        .markdownBlockMargins(top: .em(1.6), bottom: .zero)
        .markdownTextStyle {
          FontWeight(.semibold)
          FontSize(.em(1.64706))
        }
    }
    .heading4 { label in
      label
        .lineSpacing(.em(0.083335))
        .markdownBlockMargins(top: .em(1.6), bottom: .zero)
        .markdownTextStyle {
          FontWeight(.semibold)
          FontSize(.em(1.41176))
        }
    }
    .heading5 { label in
      label
        .lineSpacing(.em(0.09091))
        .markdownBlockMargins(top: .em(1.6), bottom: .zero)
        .markdownTextStyle {
          FontWeight(.semibold)
          FontSize(.em(1.29412))
        }
    }
    .heading6 { label in
      label
        .lineSpacing(.em(0.235295))
        .markdownBlockMargins(top: .em(1.6), bottom: .zero)
        .markdownTextStyle {
          FontWeight(.semibold)
        }
    }
    .paragraph { label in
      label
        .lineSpacing(.em(0.235295))
        .markdownBlockMargins(top: .em(0.8), bottom: .zero)
    }
    .blockquote { label in
      label
        .padding(.all, .rem(0.94118))
        .frame(maxWidth: .infinity, alignment: .leading)
        .background {
          ZStack {
            RoundedRectangle.container
              .fill(Color.asideNoteBackground)
            RoundedRectangle.container
              .strokeBorder(Color.asideNoteBorder)
          }
        }
        .markdownBlockMargins(top: .em(1.6), bottom: .zero)
    }
    .codeBlock { label in
      ScrollView(.horizontal) {
        label
          .lineSpacing(.em(0.333335))
          .markdownTextStyle {
            FontFamilyVariant(.monospaced)
            FontSize(.rem(0.88235))
          }
          .padding(.vertical, 8)
          .padding(.leading, 14)
      }
      .background(Color.codeBackground)
      .clipShape(.container)
      .markdownBlockMargins(top: .em(0.8), bottom: .zero)
    }
    .image { label in
      label
        .frame(maxWidth: .infinity)
        .markdownBlockMargins(top: .em(1.6), bottom: .em(1.6))
    }
    .listItem { label in
      label.markdownBlockMargins(top: .em(0.8))
    }
    .taskListMarker { _ in
      // DocC renders task lists as bullet lists
      ListBullet.disc
        .frame(minWidth: .em(1.5), alignment: .trailing)
    }
    .table { label in
      label
        .markdownTableBorderStyle(.init(.horizontalLines, color: .grid))
        .markdownBlockMargins(top: .em(1.6), bottom: .zero)
    }
    .tableCell { configuration in
      configuration.label
        .markdownTextStyle {
          if configuration.row == 0 {
            FontWeight(.semibold)
          }
        }
        .lineSpacing(.em(0.235295))
        .padding(.all, .rem(0.58824))
    }
    .thematicBreak {
      Divider()
        .overlay(Color.grid)
        .markdownBlockMargins(top: .em(2.35), bottom: .em(2.35))
    }
}

extension Shape where Self == RoundedRectangle {
  fileprivate static var container: Self {
    .init(cornerRadius: 15, style: .continuous)
  }
}

extension Color {
  fileprivate static let text = Color(
    light: Color(rgba: 0x1d1d_1fff), dark: Color(rgba: 0xf5f5_f7ff)
  )
  fileprivate static let secondaryLabel = Color(
    light: Color(rgba: 0x6e6e_73ff), dark: Color(rgba: 0x8686_8bff)
  )
  fileprivate static let link = Color(
    light: Color(rgba: 0x0066_ccff), dark: Color(rgba: 0x2997_ffff)
  )
  fileprivate static let asideNoteBackground = Color(
    light: Color(rgba: 0xf5f5_f7ff), dark: Color(rgba: 0x3232_32ff)
  )
  fileprivate static let asideNoteBorder = Color(
    light: Color(rgba: 0x6969_69ff), dark: Color(rgba: 0x9a9a_9eff)
  )
  fileprivate static let codeBackground = Color(
    light: Color(rgba: 0xf5f5_f7ff), dark: Color(rgba: 0x3333_36ff)
  )
  fileprivate static let grid = Color(
    light: Color(rgba: 0xd2d2_d7ff), dark: Color(rgba: 0x4242_45ff)
  )
}
