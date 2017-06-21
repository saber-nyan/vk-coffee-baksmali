.class Lcom/vkcoffee/android/VideoEmbedPlayerActivity$1;
.super Landroid/webkit/WebViewClient;
.source "VideoEmbedPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/VideoEmbedPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/VideoEmbedPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$1;->this$0:Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$1;->this$0:Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->access$100(Lcom/vkcoffee/android/VideoEmbedPlayerActivity;)Lcom/vkcoffee/android/ui/CircularProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 68
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 54
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$1;->this$0:Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    invoke-static {v3}, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->access$000(Lcom/vkcoffee/android/VideoEmbedPlayerActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$1;->this$0:Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    invoke-static {v4}, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->access$000(Lcom/vkcoffee/android/VideoEmbedPlayerActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 55
    :cond_0
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 61
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 57
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$1;->this$0:Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    const-class v3, Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 59
    iget-object v2, p0, Lcom/vkcoffee/android/VideoEmbedPlayerActivity$1;->this$0:Lcom/vkcoffee/android/VideoEmbedPlayerActivity;

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/VideoEmbedPlayerActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
