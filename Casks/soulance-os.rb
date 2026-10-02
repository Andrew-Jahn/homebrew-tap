cask "soulance-os" do
  version "0.1.7"

  url "https://github.com/Andrew-Jahn/soulance-os-releases/releases/download/soulance-v0.1.7/Soulance-OS-0.1.7-arm64.dmg"
  sha256 "5d26901a716bfdd35ff5f652f9039da6adf3d23863604ccf5eb6ba1cdb5a5b43"
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
