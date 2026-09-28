cask "soulance-os" do
  version "0.1.5"

  url "https://github.com/Andrew-Jahn/soulance-os-releases/releases/download/soulance-v0.1.5/Soulance-OS-0.1.5-arm64.dmg"
  sha256 "a01a1003a54cc79fb7c92bf32fb159f7a08df927fc4020d92dd621587cd71be8"
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
