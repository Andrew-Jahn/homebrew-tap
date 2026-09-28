cask "soulance-os" do
  version "0.1.3"

  url "https://github.com/Andrew-Jahn/soulance-os-releases/releases/download/soulance-v0.1.3/Soulance-OS-0.1.3-arm64.dmg"
  sha256 "9f1af7973bf5dac959151060d70252797efd26ce8b232ab7f57550cd0f7d4c6a"
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
