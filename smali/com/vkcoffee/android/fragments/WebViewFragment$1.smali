.class Lcom/vkcoffee/android/fragments/WebViewFragment$1;
.super Landroid/webkit/WebChromeClient;
.source "WebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/WebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/WebViewFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/WebViewFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/WebViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/WebViewFragment;

    .line 33
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/fragments/WebViewFragment$1;)Lcom/vkcoffee/android/fragments/WebViewFragment;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/WebViewFragment;

    return-object v0
.end method


# virtual methods
.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "isDialog"    # Z
    .param p3, "isUserGesture"    # Z
    .param p4, "resultMsg"    # Landroid/os/Message;

    .prologue
    .line 49
    iget-object v0, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebView$WebViewTransport;

    .line 50
    .local v0, "t":Landroid/webkit/WebView$WebViewTransport;
    new-instance v1, Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 51
    .local v1, "w":Landroid/webkit/WebView;
    new-instance v2, Lcom/vkcoffee/android/fragments/WebViewFragment$1$1;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/fragments/WebViewFragment$1$1;-><init>(Lcom/vkcoffee/android/fragments/WebViewFragment$1;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 61
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 62
    const/4 v2, 0x1

    return v2
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/WebViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/WebViewFragment;->access$0(Lcom/vkcoffee/android/fragments/WebViewFragment;)Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;

    move-result-object v0

    mul-int/lit8 v1, p2, 0x64

    invoke-virtual {v0, v1}, Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;->setProgress(I)V

    .line 36
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/WebViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/WebViewFragment;->access$0(Lcom/vkcoffee/android/fragments/WebViewFragment;)Lme/zhanghai/android/materialprogressbar/MaterialProgressBar;

    move-result-object v1

    const/16 v0, 0x64

    if-ne p2, v0, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-static {v1, v0}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 37
    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/WebViewFragment;

    iget-boolean v0, v0, Lcom/vkcoffee/android/fragments/WebViewFragment;->loaded:Z

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/WebViewFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/WebViewFragment;->dataLoaded()V

    .line 40
    :cond_0
    return-void

    .line 36
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "title"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/WebViewFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/WebViewFragment;->access$1(Lcom/vkcoffee/android/fragments/WebViewFragment;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment$1;->this$0:Lcom/vkcoffee/android/fragments/WebViewFragment;

    invoke-static {v0, p2}, Lcom/vkcoffee/android/fragments/WebViewFragment;->access$2(Lcom/vkcoffee/android/fragments/WebViewFragment;Ljava/lang/CharSequence;)V

    .line 46
    :cond_0
    return-void
.end method
