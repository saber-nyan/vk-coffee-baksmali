.class public Lcom/vkcoffee/android/fragments/WikiViewFragment;
.super Lme/grishka/appkit/fragments/LoaderFragment;
.source "WikiViewFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/fragments/BackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/WikiViewFragment$HistoryEntry;,
        Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback;,
        Lcom/vkcoffee/android/fragments/WikiViewFragment$WebChrome;,
        Lcom/vkcoffee/android/fragments/WikiViewFragment$WebClient;
    }
.end annotation


# instance fields
.field private curMeta:Landroid/os/Bundle;

.field private injectedScript:Z

.field private shareActionProvider:Landroid/widget/ShareActionProvider;

.field private toolbarProgress:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lme/grishka/appkit/fragments/LoaderFragment;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment;->injectedScript:Z

    .line 42
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/WikiViewFragment;IIZ)V
    .locals 0

    .prologue
    .line 243
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->loadPage(IIZ)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/fragments/WikiViewFragment;)Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment;->toolbarProgress:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;

    return-object v0
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/fragments/WikiViewFragment;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment;->injectedScript:Z

    return v0
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/fragments/WikiViewFragment;)V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->injectScript()V

    return-void
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/fragments/WikiViewFragment;Z)V
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment;->injectedScript:Z

    return-void
.end method

.method static synthetic access$5(Lcom/vkcoffee/android/fragments/WikiViewFragment;ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 239
    invoke-direct {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->loadPage(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$6(Lcom/vkcoffee/android/fragments/WikiViewFragment;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment;->curMeta:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic access$7(Lcom/vkcoffee/android/fragments/WikiViewFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->displayPage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8(Lcom/vkcoffee/android/fragments/WikiViewFragment;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayPage(Ljava/lang/String;)V
    .locals 1
    .param p1, "html"    # Ljava/lang/String;

    .prologue
    .line 272
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment;->injectedScript:Z

    .line 273
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method private doLoadPage(Lcom/vkcoffee/android/api/pages/PagesGetHTML;Z)V
    .locals 2
    .param p1, "req"    # Lcom/vkcoffee/android/api/pages/PagesGetHTML;
    .param p2, "useHistory"    # Z

    .prologue
    .line 248
    new-instance v0, Lcom/vkcoffee/android/fragments/WikiViewFragment$1;

    invoke-direct {v0, p0, p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment$1;-><init>(Lcom/vkcoffee/android/fragments/WikiViewFragment;Landroid/app/Fragment;)V

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/api/pages/PagesGetHTML;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 254
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 255
    return-void
.end method

.method private injectScript()V
    .locals 2

    .prologue
    .line 267
    const-string v0, "vk"

    const-string v1, "Injecting script!"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment;->webView:Landroid/webkit/WebView;

    const-string v1, "javascript:{var phts=document.getElementsByClassName(\'al_photo\');var phUrls=[];for(var i=0;i<phts.length;i++){phUrls.push(phts[i].getElementsByTagName(\'img\')[0].attributes[\'data-src_big\'].value);phts[i].setAttribute(\'data-index\', i);phts[i].onclick=function(){window.vknative.openPhotos(phUrls, parseInt(this.attributes[\'data-index\'].value));return false;}}var auds={oids:[], aids:[], durations:[], artists:[], titles:[], urls:[]};var adivs=document.getElementsByClassName(\'audio_item\');for(var i=0;i<adivs.length;i++){auds.oids.push(parseInt(adivs[i].attributes[\'data-id\'].value.split(\'_\')[0]));auds.aids.push(parseInt(adivs[i].attributes[\'data-id\'].value.split(\'_\')[1]));auds.durations.push(parseInt(adivs[i].getElementsByClassName(\'ai_dur\')[0].attributes[\'data-dur\'].value));auds.artists.push(adivs[i].getElementsByClassName(\'ai_artist\')[0].innerText);auds.titles.push(adivs[i].getElementsByClassName(\'ai_title\')[0].innerText);auds.urls.push(adivs[i].getElementsByTagName(\'input\')[0].value);adivs[i].setAttribute(\'data-index\', i);adivs[i].onclick=function(){window.vknative.playAudio(auds.oids, auds.aids, auds.artists, auds.titles, auds.urls, auds.durations, parseInt(this.attributes[\'data-index\'].value));return false;}}void(0);};"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method private loadNote(II)V
    .locals 2
    .param p1, "oid"    # I
    .param p2, "nid"    # I

    .prologue
    .line 258
    new-instance v0, Lcom/vkcoffee/android/api/pages/NotesGetById;

    invoke-direct {v0, p1, p2}, Lcom/vkcoffee/android/api/pages/NotesGetById;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/fragments/WikiViewFragment$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment$2;-><init>(Lcom/vkcoffee/android/fragments/WikiViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/pages/NotesGetById;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 263
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 258
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 264
    return-void
.end method

.method private loadPage()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 226
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "oid"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v4}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->loadPage(Ljava/lang/String;Z)V

    .line 233
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pid"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 229
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "oid"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, v4}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->loadPage(ILjava/lang/String;Z)V

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "oid"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "pid"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v0, v1, v4}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->loadPage(IIZ)V

    goto :goto_0
.end method

.method private loadPage(IIZ)V
    .locals 4
    .param p1, "oid"    # I
    .param p2, "id"    # I
    .param p3, "useHistory"    # Z

    .prologue
    .line 244
    new-instance v0, Lcom/vkcoffee/android/api/pages/PagesGetHTML;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "site"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/vkcoffee/android/api/pages/PagesGetHTML;-><init>(IIZ)V

    invoke-direct {p0, v0, p3}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->doLoadPage(Lcom/vkcoffee/android/api/pages/PagesGetHTML;Z)V

    .line 245
    return-void
.end method

.method private loadPage(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "oid"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "useHistory"    # Z

    .prologue
    .line 240
    new-instance v0, Lcom/vkcoffee/android/api/pages/PagesGetHTML;

    invoke-direct {v0, p1, p2}, Lcom/vkcoffee/android/api/pages/PagesGetHTML;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0, p3}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->doLoadPage(Lcom/vkcoffee/android/api/pages/PagesGetHTML;Z)V

    .line 241
    return-void
.end method

.method private loadPage(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "useHistory"    # Z

    .prologue
    .line 236
    new-instance v0, Lcom/vkcoffee/android/api/pages/PagesGetHTML;

    invoke-direct {v0, p1}, Lcom/vkcoffee/android/api/pages/PagesGetHTML;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, p2}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->doLoadPage(Lcom/vkcoffee/android/api/pages/PagesGetHTML;Z)V

    .line 237
    return-void
.end method


# virtual methods
.method protected doLoadData()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 214
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "nid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "oid"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "nid"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->loadNote(II)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->loadPage()V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 169
    const v0, 0x7f0300c6

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->setLayout(I)V

    .line 170
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/LoaderFragment;->onAttach(Landroid/app/Activity;)V

    .line 171
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->setHasOptionsMenu(Z)V

    .line 172
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->loadData()V

    .line 173
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 278
    const/4 v0, 0x0

    .line 281
    :goto_0
    return v0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 281
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 205
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment;->webView:Landroid/webkit/WebView;

    .line 206
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 207
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebClient;

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebClient;-><init>(Lcom/vkcoffee/android/fragments/WikiViewFragment;Lcom/vkcoffee/android/fragments/WikiViewFragment$WebClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 208
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebChrome;

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebChrome;-><init>(Lcom/vkcoffee/android/fragments/WikiViewFragment;Lcom/vkcoffee/android/fragments/WikiViewFragment$WebChrome;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 209
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback;

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback;-><init>(Lcom/vkcoffee/android/fragments/WikiViewFragment;Lcom/vkcoffee/android/fragments/WikiViewFragment$WebCallback;)V

    const-string v2, "vknative"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v3, 0x0

    .line 176
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "site"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    const v1, 0x7f100219

    const v2, 0x7f08053a

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 178
    .local v0, "item":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 179
    const v1, 0x7f020023

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 181
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x1

    .line 184
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x7f100219

    if-ne v1, v2, :cond_0

    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkcoffee/android/SendActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 186
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment;->curMeta:Landroid/os/Bundle;

    const-string v3, "url"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const-string v1, "_internal"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 188
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 191
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return v4
.end method

.method public onRefresh()V
    .locals 0

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->loadData()V

    .line 223
    return-void
.end method

.method public onToolbarNavigationClick()V
    .locals 1

    .prologue
    .line 195
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 196
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 199
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/LoaderFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 200
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f020318

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/WikiViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->buildCounterDrawable(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 201
    const v0, 0x7f100279

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/WikiViewFragment;->toolbarProgress:Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;

    .line 202
    return-void
.end method
