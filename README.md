# BIG MOON Haskeller's blog

[![CircleCI](https://circleci.com/gh/e-bigmoon/haskell-blog.svg?style=svg)](https://circleci.com/gh/e-bigmoon/haskell-blog)
[![Build status](https://ci.appveyor.com/api/projects/status/uyh62oq0ccn2ge46?svg=true)](https://ci.appveyor.com/project/waddlaw/haskell-blog)
[![Netlify Status](https://api.netlify.com/api/v1/badges/9fdf0837-5e38-4dc5-a035-bde11f5d0b83/deploy-status)](https://app.netlify.com/sites/haskell/deploys)

## ページ

`pages` フォルダーに新しいページを追加します。

## 記事

それぞれのブログ記事は `タイトル` と `要約` を設定する必要があります。

要約の設定方法については[このチュートリアル](https://jaspervdj.be/hakyll/tutorials/using-teasers-in-hakyll.html)を参考にしてください。

また、必要に応じてタグ・著者・翻訳者を設定しましょう。

```md
---
title: Haskell で暗号学的ハッシュを扱う
author: Michael Snoyman
translator: pythonissam
tags: fpcomplete
---

Great original post: [CRYPTOGRAPHIC HASHING IN HASKELL.](https://www.fpcomplete.com/blog/2017/09/cryptographic-hashing-haskell).

ここは本文であり、要約として使われる

<!--more-->

<!--more--> よりあとの文章は、本文として利用されますが、要約としては利用されません
```

### 注意点

翻訳記事は原則、原著者の許諾を受けた上で翻訳する。`Twitter` のダイレクトメッセージやメール、ブログコメント等で連絡すれば、基本的にOKがもらえます。

また、翻訳記事を投稿する際は、必ず以下の内容を設定します。

- `author` にオリジナル記事の著者名
- `translator` に翻訳者の名前
- 本文にオリジナル記事へのリンク

また、投稿後は本人への連絡ないし、オリジナル記事のコメント欄等へ翻訳した旨を連絡すること。

## Windows でのビルド方法

`Windows` では `hakyll-sass` パッケージを使ってビルドすることができません。

そのため、ローカルで `sass` を実行し `css` をビルドします。

```sh
$ sass -I sass --scss ./css/main.scss ./css/main.css
...
```

## License

Copyright © 2017–2019 BIGMOON

All rights reserved.
