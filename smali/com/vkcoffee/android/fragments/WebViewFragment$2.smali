.class Lcom/vkcoffee/android/fragments/WebViewFragment$2;
.super Landroid/webkit/WebViewClient;
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
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/WebViewFragment$2;->this$0:Lcom/vkcoffee/android/fragments/WebViewFragment;

    .line 65
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "errorCode"    # I
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "failingUrl"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/WebViewFragment$2;->this$0:Lcom/vkcoffee/android/fragments/WebViewFragment;

    new-instance v1, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2, p3}, Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/WebViewFragment;->onError(Lme/grishka/appkit/api/ErrorResponse;)V

    .line 94
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 67
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/WebViewFragment$2;->this$0:Lcom/vkcoffee/android/fragments/WebViewFragment;

    invoke-static {v2, p2}, Lcom/vkcoffee/android/fragments/WebViewFragment;->access$3(Lcom/vkcoffee/android/fragments/WebViewFragment;Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/WebViewFragment$2;->this$0:Lcom/vkcoffee/android/fragments/WebViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/WebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "open_internally"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 70
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 71
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "http"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "https"

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const-string v2, "play.google.com"

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 72
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 89
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_1
    :goto_0
    return v5

    .line 74
    .restart local v1    # "uri":Landroid/net/Uri;
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "play.google.com"

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 76
    const-string v2, "com.android.vending"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    :cond_3
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/WebViewFragment$2;->this$0:Lcom/vkcoffee/android/fragments/WebViewFragment;

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/fragments/WebViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 79
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/WebViewFragment$2;->this$0:Lcom/vkcoffee/android/fragments/WebViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/WebViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v2

    if-nez v2, :cond_1

    .line 80
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/WebViewFragment$2;->this$0:Lcom/vkcoffee/android/fragments/WebViewFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/WebViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 84
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 85
    .restart local v0    # "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/WebViewFragment$2;->this$0:Lcom/vkcoffee/android/fragments/WebViewFragment;

    invoke-virtual {v3}, Lcom/vkcoffee/android/fragments/WebViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 86
    const-string v2, "no_browser"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/WebViewFragment$2;->this$0:Lcom/vkcoffee/android/fragments/WebViewFragment;

    const/16 v3, 0x65

    invoke-virtual {v2, v0, v3}, Lcom/vkcoffee/android/fragments/WebViewFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
