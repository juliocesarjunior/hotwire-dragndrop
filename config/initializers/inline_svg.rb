# frozen_string_literal: true

require Rails.root.join("lib/inline_svg/vite_asset_finder")

InlineSvg.configure do |config|
  config.asset_finder = InlineSvg::ViteAssetFinder
end
