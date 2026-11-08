# homebrew-tap

[Sogon](https://sogon.dev/)과 [마디](#마디-madi) 설치용 Homebrew 탭. Sogon은 메뉴 바에서 말하면 받아쓰고,
LLM으로 다듬어 커서 자리에 넣어 주는 macOS 앱입니다.

## 설치

```bash
brew install --cask ddiiwoong/tap/sogon
```

탭을 따로 추가하지 않아도 됩니다 — 이 한 줄이 탭을 붙이고 설치까지 합니다.

`Brewfile`에서는:

```ruby
cask "ddiiwoong/tap/sogon", trusted: true
```

### 짧은 이름(`brew install sogon`)을 쓰지 않는 이유

Homebrew 7은 공식 탭이 아닌 곳의 cask를 읽기 전에 신뢰를 확인합니다. 짧은 이름으로는 어느
탭인지 특정되지 않아 거절됩니다.

```
Error: Refusing to load cask ddiiwoong/tap/sogon from untrusted tap ddiiwoong/tap.
```

위처럼 **전체 이름**(`ddiiwoong/tap/sogon`)을 적으면 그것이 동의로 간주되어 통과합니다.
짧은 이름을 쓰고 싶으면 탭을 한 번 신뢰해 두세요.

```bash
brew trust ddiiwoong/tap
brew install --cask sogon
```

전체 이름은 다른 탭에 같은 이름의 cask가 생겨도 가려지지 않는다는 장점도 있습니다.

## 요구 사항

- Apple Silicon (arm64)
- macOS 14 Sonoma 이상

받는 DMG는 서명·공증·staple이 되어 있어 `xattr` 우회가 필요하지 않습니다. 업데이트는 앱이
Sparkle로 직접 처리하므로(`auto_updates true`) `brew upgrade`를 돌리지 않아도 됩니다.

DMG를 직접 받으려면 [릴리스 페이지](https://github.com/ddiiwoong/sogon-site/releases/latest)를
쓰세요.

## 마디 (Madi)

[마디](https://github.com/ddiiwoong/madi)는 렌더된 문서에서 바로 고치는 macOS 마크다운 편집기입니다.

```bash
brew install --cask ddiiwoong/tap/madi
```

macOS 14 Sonoma 이상, Apple Silicon · Intel. DMG는 서명·공증·staple이 되어 있습니다. 앱이 스스로
업데이트하지 않으므로 새 판은 `brew upgrade --cask ddiiwoong/tap/madi`로 받습니다. DMG를 직접 받으려면
[릴리스 페이지](https://github.com/ddiiwoong/madi/releases/latest)를 쓰세요.

---

Homebrew tap for [Sogon](https://sogon.dev/), a macOS menu-bar speech-to-text app.

```bash
brew install --cask ddiiwoong/tap/sogon
```

Use the fully-qualified token. Homebrew 7 refuses to load a cask from an untrusted third-party
tap, and naming the tap in full counts as consent; a bare `sogon` is rejected unless you run
`brew trust ddiiwoong/tap` first.

Requires Apple Silicon and macOS 14 or newer. The app updates itself through Sparkle, so
`brew upgrade` is not needed. Direct DMG downloads are on the
[releases page](https://github.com/ddiiwoong/sogon-site/releases/latest).

It also carries [Madi](https://github.com/ddiiwoong/madi), a native macOS Markdown editor that edits
the rendered document in place (macOS 14 or newer, Apple Silicon and Intel):

```bash
brew install --cask ddiiwoong/tap/madi
```

Madi does not update itself; run `brew upgrade --cask ddiiwoong/tap/madi` for new versions.
