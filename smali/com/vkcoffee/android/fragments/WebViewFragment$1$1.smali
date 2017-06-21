.class Lcom/vkcoffee/android/fragments/WebViewFragment$1$1;
.super Landroid/webkit/WebViewClient;
.source "WebViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/WebViewFragment$1;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/WebViewFragment$1;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/WebViewFragment$1;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/WebViewFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/WebViewFragment$1;

    .line 51
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/WebViewFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/WebViewFragment$1;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/WebViewFragment$1;->access$0(Lcom/vkcoffee/android/fragments/WebViewFragment$1;)Lcom/vkcoffee/android/fragments/WebViewFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/WebViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 55
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/WebViewFragment$1$1;->this$1:Lcom/vkcoffee/android/fragments/WebViewFragment$1;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/WebViewFragment$1;->access$0(Lcom/vkcoffee/android/fragments/WebViewFragment$1;)Lcom/vkcoffee/android/fragments/WebViewFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/WebViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 56
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 57
    const/4 v1, 0x1

    return v1
.end method
