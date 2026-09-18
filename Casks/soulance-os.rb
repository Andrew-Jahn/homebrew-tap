cask "soulance-os" do
  version "0.1.2"

  url "https://github.com/Andrew-Jahn/soulance-os-releases/releases/download/soulance-v0.1.2/Soulance-OS-0.1.2-arm64.dmg"
  sha256 "2130a6e3aded91931aec76c2c4be11502359cc77bf6ceda4fa88b4b1193c339b"
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
