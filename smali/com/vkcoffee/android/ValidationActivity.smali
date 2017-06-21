.class public Lcom/vkcoffee/android/ValidationActivity;
.super Lcom/vkcoffee/android/activities/TabletsDialogActivity;
.source "ValidationActivity.java"


# static fields
.field public static final VRESULT_CANCEL:I = 0x1

.field public static final VRESULT_NONE:I = 0x0

.field public static final VRESULT_RETRY:I = 0x2

.field public static result:I


# instance fields
.field private phoneEntered:Z

.field private progress:Landroid/app/ProgressDialog;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/vkcoffee/android/ValidationActivity;->result:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/ValidationActivity;->phoneEntered:Z

    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/ValidationActivity;)Landroid/webkit/WebView;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ValidationActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vkcoffee/android/ValidationActivity;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/ValidationActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ValidationActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/vkcoffee/android/ValidationActivity;->phoneEntered:Z

    return p1
.end method

.method static synthetic access$200(Lcom/vkcoffee/android/ValidationActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/ValidationActivity;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vkcoffee/android/ValidationActivity;->progress:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vkcoffee/android/ValidationActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/ValidationActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/vkcoffee/android/ValidationActivity;->progress:Landroid/app/ProgressDialog;

    return-object p1
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 176
    invoke-super {p0}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->finish()V

    .line 180
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .prologue
    .line 187
    sget v0, Lcom/vkcoffee/android/ValidationActivity;->result:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ValidationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "return_result"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    const/4 v0, 0x1

    sput v0, Lcom/vkcoffee/android/ValidationActivity;->result:I

    .line 190
    :cond_0
    invoke-super {p0}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->onBackPressed()V

    .line 191
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    .line 31
    invoke-super {p0, p1}, Lcom/vkcoffee/android/activities/TabletsDialogActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ValidationActivity;->webView:Landroid/webkit/WebView;

    .line 34
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 35
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 36
    iget-object v0, p0, Lcom/vkcoffee/android/ValidationActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 37
    iget-object v0, p0, Lcom/vkcoffee/android/ValidationActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/ValidationActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/vkcoffee/android/ValidationActivity$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ValidationActivity$1;-><init>(Lcom/vkcoffee/android/ValidationActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 123
    iget-object v0, p0, Lcom/vkcoffee/android/ValidationActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/vkcoffee/android/ValidationActivity$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/ValidationActivity$2;-><init>(Lcom/vkcoffee/android/ValidationActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 167
    iget-object v0, p0, Lcom/vkcoffee/android/ValidationActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/ValidationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/vkcoffee/android/ValidationActivity;->webView:Landroid/webkit/WebView;

    const v1, 0x7f0f001c

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundResource(I)V

    .line 170
    iget-object v0, p0, Lcom/vkcoffee/android/ValidationActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/ValidationActivity;->setContentView(Landroid/view/View;)V

    .line 171
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkcoffee/android/ValidationActivity;->progress:Landroid/app/ProgressDialog;

    .line 172
    iget-object v0, p0, Lcom/vkcoffee/android/ValidationActivity;->progress:Landroid/app/ProgressDialog;

    const v1, 0x7f080293

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/ValidationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 173
    return-void
.end method
