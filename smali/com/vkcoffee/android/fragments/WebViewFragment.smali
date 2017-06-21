.class public Lcom/vkcoffee/android/fragments/WebViewFragment;
.super Lme/grishka/appkit/fragments/LoaderFragment;
.source "WebViewFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/fragments/BackListener;


# static fields
.field private static final LINK_REDIR_RESULT:I = 0x65


# instance fields
.field private lastUrl:Ljava/lang/String;

.field private mChromeClient:Landroid/webkit/WebChromeClient;

.field private mClient:Landroid/webkit/WebViewClient;

.field private mWebView:Landroid/webkit/WebView;

.field private toolbarProgress:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lme/grishka/appkit/fragments/LoaderFragment;-><init>()V

    .line 33
    new-instance v0, Lcom/vkcoffee/android/fragments/WebViewFragment$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/WebViewFragment$1;-><init>(Lcom/vkcoffee/android/fragments/WebViewFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment;->mChromeClient:Landroid/webkit/WebChromeClient;

    .line 65
    new-instance v0, Lcom/vkcoffee/android/fragments/WebViewFragment$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/WebViewFragment$2;-><init>(Lcom/vkcoffee/android/fragments/WebViewFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment;->mClient:Landroid/webkit/WebViewClient;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/WebViewFragment;)Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment;->toolbarProgress:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/WebViewFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/WebViewFragment;->getScreenTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/WebViewFragment;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/WebViewFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/fragments/WebViewFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/WebViewFragment;->lastUrl:Ljava/lang/String;

    return-void
.end method

.method private getScreenTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "screen_title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doLoadData()V
    .locals 3

    .prologue
    .line 143
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 147
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 148
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 100
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/WebViewFragment;->lastUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 159
    const v0, 0x7f0300c6

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/WebViewFragment;->setLayout(I)V

    .line 160
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onAttach(Landroid/app/Activity;)V

    .line 161
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 155
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onCreate(Landroid/os/Bundle;)V

    .line 111
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/WebViewFragment;->getScreenTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/WebViewFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url_to_copy"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/WebViewFragment;->setHasOptionsMenu(Z)V

    .line 113
    return-void

    .line 112
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WebViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 138
    .local v0, "wv":Landroid/webkit/WebView;
    const v1, 0x7f100070

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setId(I)V

    .line 139
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 167
    const v0, 0x7f10000e

    const v1, 0x7f080101

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 168
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/LoaderFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 169
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-super {p0}, Lme/grishka/appkit/fragments/LoaderFragment;->onDestroyView()V

    .line 131
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 132
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 133
    iput-object v1, p0, Lcom/vkcoffee/android/fragments/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    .line 134
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 172
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f10000e

    if-eq v1, v2, :cond_0

    .line 173
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 177
    :goto_0
    return v1

    .line 175
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "url_to_copy"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WebViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipboardManager;

    invoke-static {v0, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 177
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 164
    return-void
.end method

.method public onToolbarNavigationClick()V
    .locals 1

    .prologue
    .line 106
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WebViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 107
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 116
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/LoaderFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 117
    const v0, 0x7f100070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    .line 118
    const v0, 0x7f100279

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment;->toolbarProgress:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;

    .line 119
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/WebViewFragment;->mClient:Landroid/webkit/WebViewClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 120
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/WebViewFragment;->mChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 121
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 122
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WebViewFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f020318

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WebViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->buildCounterDrawable(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 124
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WebViewFragment;->loadData()V

    .line 127
    :cond_0
    return-void
.end method
