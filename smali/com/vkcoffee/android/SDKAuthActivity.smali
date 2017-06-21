.class public Lcom/vkcoffee/android/SDKAuthActivity;
.super Lcom/vkcoffee/android/VKActivity;
.source "SDKAuthActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/SDKAuthActivity$WebClient;,
        Lcom/vkcoffee/android/SDKAuthActivity$ChromeClient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "vk_sdk_auth"


# instance fields
.field private contentView:Landroid/widget/FrameLayout;

.field private error:Lcom/vkcoffee/android/ui/ErrorView;

.field private progress:Landroid/widget/ProgressBar;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/vkcoffee/android/VKActivity;-><init>()V

    .line 196
    return-void
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/SDKAuthActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/SDKAuthActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkcoffee/android/SDKAuthActivity;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/SDKAuthActivity;)Lcom/vkcoffee/android/ui/ErrorView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/SDKAuthActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkcoffee/android/SDKAuthActivity;->error:Lcom/vkcoffee/android/ui/ErrorView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/SDKAuthActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/SDKAuthActivity;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vkcoffee/android/SDKAuthActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic lambda$onCreate$666(Landroid/view/View;)Z
    .locals 1
    .param p0, "v"    # Landroid/view/View;

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method private loadPage()V
    .locals 21

    .prologue
    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/SDKAuthActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v8

    .line 96
    .local v8, "pkg":Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 98
    .local v2, "certFp":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/SDKAuthActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/16 v15, 0x40

    invoke-virtual {v14, v8, v15}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 99
    .local v4, "info":Landroid/content/pm/PackageInfo;
    iget-object v14, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v15, 0x0

    aget-object v11, v14, v15

    .line 100
    .local v11, "sig":Landroid/content/pm/Signature;
    const-string/jumbo v14, "SHA1"

    invoke-static {v14}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 101
    .local v6, "md":Ljava/security/MessageDigest;
    invoke-virtual {v11}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/security/MessageDigest;->update([B)V

    .line 102
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v10

    .line 103
    .local v10, "sha":[B
    const-string/jumbo v2, ""

    .line 104
    array-length v15, v10

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v15, :cond_0

    aget-byte v9, v10, v14

    .line 105
    .local v9, "sb":B
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "%02X"

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 104
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 107
    .end local v4    # "info":Landroid/content/pm/PackageInfo;
    .end local v6    # "md":Ljava/security/MessageDigest;
    .end local v9    # "sb":B
    .end local v10    # "sha":[B
    .end local v11    # "sig":Landroid/content/pm/Signature;
    :catch_0
    move-exception v13

    .line 108
    .local v13, "x":Ljava/lang/Exception;
    const-string/jumbo v14, "vk_sdk_auth"

    invoke-static {v14, v13}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    .end local v13    # "x":Ljava/lang/Exception;
    :cond_0
    new-instance v7, Ljava/util/LinkedHashMap;

    invoke-direct {v7}, Ljava/util/LinkedHashMap;-><init>()V

    .line 112
    .local v7, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v14, "client_id"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/SDKAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v16

    const-string/jumbo v17, "client_id"

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string/jumbo v14, "scope"

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/SDKAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    const-string/jumbo v16, "scope"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string/jumbo v14, "redirect_uri"

    const-string/jumbo v15, "https://oauth.vk.com/blank.html"

    invoke-virtual {v7, v14, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string/jumbo v14, "display"

    const-string/jumbo v15, "android"

    invoke-virtual {v7, v14, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string/jumbo v14, "response_type"

    const-string/jumbo v15, "token"

    invoke-virtual {v7, v14, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string/jumbo v14, "access_token"

    sget-object v15, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    invoke-virtual {v7, v14, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string/jumbo v14, "sdk_package"

    invoke-virtual {v7, v14, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string/jumbo v14, "sdk_fingerprint"

    invoke-virtual {v7, v14, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string/jumbo v14, "lang"

    invoke-static {}, Lcom/vkcoffee/android/Global;->getDeviceLang()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/SDKAuthActivity;->getIntent()Landroid/content/Intent;

    move-result-object v14

    const-string/jumbo v15, "revoke"

    invoke-virtual {v14, v15}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 123
    const-string/jumbo v14, "revoke"

    const-string/jumbo v15, "1"

    invoke-virtual {v7, v14, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    :cond_1
    new-instance v14, Landroid/net/Uri$Builder;

    invoke-direct {v14}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v15, "https"

    invoke-virtual {v14, v15}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string/jumbo v15, "oauth.vk.com"

    invoke-virtual {v14, v15}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v14

    const-string/jumbo v15, "/authorize"

    invoke-virtual {v14, v15}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 127
    .local v1, "bldr":Landroid/net/Uri$Builder;
    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 128
    .local v3, "e":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 129
    .local v5, "k":Ljava/lang/String;
    invoke-virtual {v7, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v1, v5, v14}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 131
    .end local v5    # "k":Ljava/lang/String;
    :cond_2
    const-string/jumbo v14, "sig"

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/vkcoffee/android/SDKAuthActivity;->getSig(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v14, v15}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 132
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v14

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 134
    .local v12, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/SDKAuthActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v14, v12}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 135
    return-void
.end method


# virtual methods
.method public getSig(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "/authorize?"

    .line 83
    .local v3, "src":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 84
    .local v0, "e":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .local v2, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 86
    .local v1, "key":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 88
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&"

    invoke-static {v5, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/vkcoffee/android/Global;->secret:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-static {v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method synthetic lambda$onCreate$667(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/SDKAuthActivity;->error:Lcom/vkcoffee/android/ui/ErrorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/ErrorView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/vkcoffee/android/SDKAuthActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    .line 72
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 138
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 139
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 140
    invoke-direct {p0}, Lcom/vkcoffee/android/SDKAuthActivity;->loadPage()V

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/SDKAuthActivity;->setResult(I)V

    .line 143
    invoke-virtual {p0}, Lcom/vkcoffee/android/SDKAuthActivity;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x8

    const/4 v2, 0x1

    const/high16 v4, 0x42200000    # 40.0f

    const/4 v6, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/vkcoffee/android/SDKAuthActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 42
    const-string/jumbo v0, "Be sure to call this using startActivityForResult()"

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 43
    invoke-virtual {p0}, Lcom/vkcoffee/android/SDKAuthActivity;->finish()V

    .line 79
    :goto_0
    return-void

    .line 47
    :cond_0
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkcoffee/android/SDKAuthActivity;->progress:Landroid/widget/ProgressBar;

    .line 49
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkcoffee/android/SDKAuthActivity;->contentView:Landroid/widget/FrameLayout;

    .line 50
    iget-object v0, p0, Lcom/vkcoffee/android/SDKAuthActivity;->contentView:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 52
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkcoffee/android/SDKAuthActivity;->webView:Landroid/webkit/WebView;

    .line 53
    iget-object v0, p0, Lcom/vkcoffee/android/SDKAuthActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/vkcoffee/android/SDKAuthActivity$WebClient;

    invoke-direct {v1, p0, v6}, Lcom/vkcoffee/android/SDKAuthActivity$WebClient;-><init>(Lcom/vkcoffee/android/SDKAuthActivity;Lcom/vkcoffee/android/SDKAuthActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 54
    iget-object v0, p0, Lcom/vkcoffee/android/SDKAuthActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/vkcoffee/android/SDKAuthActivity$ChromeClient;

    invoke-direct {v1, p0, v6}, Lcom/vkcoffee/android/SDKAuthActivity$ChromeClient;-><init>(Lcom/vkcoffee/android/SDKAuthActivity;Lcom/vkcoffee/android/SDKAuthActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 55
    iget-object v0, p0, Lcom/vkcoffee/android/SDKAuthActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 56
    iget-object v0, p0, Lcom/vkcoffee/android/SDKAuthActivity;->webView:Landroid/webkit/WebView;

    invoke-static {}, Lcom/vkcoffee/android/SDKAuthActivity$$Lambda$1;->lambdaFactory$()Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 57
    iget-object v0, p0, Lcom/vkcoffee/android/SDKAuthActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 58
    iget-object v0, p0, Lcom/vkcoffee/android/SDKAuthActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkcoffee/android/SDKAuthActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 59
    iget-object v0, p0, Lcom/vkcoffee/android/SDKAuthActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkcoffee/android/SDKAuthActivity;->progress:Landroid/widget/ProgressBar;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    const/16 v5, 0x11

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    const v0, 0x7f030083

    invoke-static {p0, v0, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/ErrorView;

    iput-object v0, p0, Lcom/vkcoffee/android/SDKAuthActivity;->error:Lcom/vkcoffee/android/ui/ErrorView;

    .line 62
    iget-object v0, p0, Lcom/vkcoffee/android/SDKAuthActivity;->error:Lcom/vkcoffee/android/ui/ErrorView;

    invoke-virtual {v0, v7}, Lcom/vkcoffee/android/ui/ErrorView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/vkcoffee/android/SDKAuthActivity;->contentView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/vkcoffee/android/SDKAuthActivity;->error:Lcom/vkcoffee/android/ui/ErrorView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 65
    iget-object v0, p0, Lcom/vkcoffee/android/SDKAuthActivity;->contentView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/SDKAuthActivity;->setContentView(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lcom/vkcoffee/android/SDKAuthActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, v7}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/vkcoffee/android/SDKAuthActivity;->error:Lcom/vkcoffee/android/ui/ErrorView;

    invoke-static {p0}, Lcom/vkcoffee/android/SDKAuthActivity$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/SDKAuthActivity;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/ErrorView;->setOnRetryListener(Landroid/view/View$OnClickListener;)V

    .line 74
    sget-object v0, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 75
    invoke-direct {p0}, Lcom/vkcoffee/android/SDKAuthActivity;->loadPage()V

    goto/16 :goto_0

    .line 77
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkcoffee/android/AuthActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/SDKAuthActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method
