.class public Lcom/vkcoffee/android/VideoEmbedPlayerActivity;
.super Lcom/vkcoffee/android/VKActivity;
.source "VideoEmbedPlayerActivity.java"


# instance fields
.field private baseDomain:Ljava/lang/String;

.field private canShowProgress:Z

.field private content:Landroid/widget/FrameLayout;

.field private progress:Lcom/vkcoffee/android/ui/CircularProgressBar;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vkcoffee/android/VKActivity;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->canShowProgress:Z

    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/VideoEmbedPlayerActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->baseDomain:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/VideoEmbedPlayerActivity;)Lcom/vkcoffee/android/ui/CircularProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->progress:Lcom/vkcoffee/android/ui/CircularProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/VideoEmbedPlayerActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/VideoEmbedPlayerActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->content:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/VideoEmbedPlayerActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->canShowProgress:Z

    return v0
.end method

.method static synthetic access$402(Lcom/vkcoffee/android/VideoEmbedPlayerActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/VideoEmbedPlayerActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    iput-boolean p1, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->canShowProgress:Z

    return p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/high16 v6, 0x428c0000    # 70.0f

    .line 34
    invoke-super {p0, p1}, Lcom/vkcoffee/android/VKActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->webView:Landroid/webkit/WebView;

    .line 37
    iget-object v2, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 39
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->content:Landroid/widget/FrameLayout;

    .line 40
    iget-object v2, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->content:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 41
    new-instance v2, Lcom/vkcoffee/android/ui/CircularProgressBar;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/ui/CircularProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->progress:Lcom/vkcoffee/android/ui/CircularProgressBar;

    .line 42
    iget-object v2, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->content:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->progress:Lcom/vkcoffee/android/ui/CircularProgressBar;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {v6}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    invoke-static {v6}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v6

    const/16 v7, 0x11

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v2, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->content:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->setContentView(Landroid/view/View;)V

    .line 46
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "\\."

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "domainParts":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->baseDomain:Ljava/lang/String;

    .line 50
    iget-object v2, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$1;-><init>(Lcom/vkcoffee/android/VideoEmbedPlayerActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 71
    iget-object v2, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->webView:Landroid/webkit/WebView;

    new-instance v3, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$2;-><init>(Lcom/vkcoffee/android/VideoEmbedPlayerActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 122
    iget-object v2, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lcom/vkcoffee/android/VKActivity;->onDestroy()V

    .line 146
    iget-object v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->webView:Landroid/webkit/WebView;

    .line 148
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Lcom/vkcoffee/android/VKActivity;->onPause()V

    .line 128
    iget-object v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V

    .line 129
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 133
    invoke-super {p0}, Lcom/vkcoffee/android/VKActivity;->onResume()V

    .line 134
    iget-object v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V

    .line 135
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 136
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 137
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1006

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method
