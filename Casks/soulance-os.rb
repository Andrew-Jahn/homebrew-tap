cask "soulance-os" do
  version "0.1.6"

  url "https://github.com/Andrew-Jahn/soulance-os-releases/releases/download/soulance-v0.1.6/Soulance-OS-0.1.6-arm64.dmg"
  sha256 "55d2f9848250dd1d800b0df0de6b5fdf569ef0cff8a5a333f377307a7244e5e7"
  depends_on arch: :arm64

  name "Soulance OS"
  desc "Агент со знаниями компании"
  homepage "https://os.soulance.ru"

  app "Soulance OS.app"

  # Сборка подписана «для себя», а не сертификатом Apple, поэтому
  # ставить нужно с --no-quarantine — иначе macOS скажет, что файл
  # повреждён.
  caveats <<~EOS
    Ставь командой:
      brew install --cask --no-quarantine soulance-os
  EOS
end
