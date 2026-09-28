cask "soulance-os" do
  version "0.1.4"

  url "https://github.com/Andrew-Jahn/soulance-os-releases/releases/download/soulance-v0.1.4/Soulance-OS-0.1.4-arm64.dmg"
  sha256 "e151e205a40226d51a4a6044652135887d07fdb0a9a1e48aa7c3c6092899c2f3"
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
