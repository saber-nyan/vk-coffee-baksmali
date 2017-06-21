.class Lcom/vkcoffee/android/ValidationActivity$2$1;
.super Landroid/webkit/WebViewClient;
.source "ValidationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/ValidationActivity$2;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/ValidationActivity$2;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/ValidationActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/ValidationActivity$2;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/vkcoffee/android/ValidationActivity$2$1;->this$1:Lcom/vkcoffee/android/ValidationActivity$2;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/vkcoffee/android/ValidationActivity$2$1;->this$1:Lcom/vkcoffee/android/ValidationActivity$2;

    iget-object v0, v0, Lcom/vkcoffee/android/ValidationActivity$2;->this$0:Lcom/vkcoffee/android/ValidationActivity;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ValidationActivity;->startActivity(Landroid/content/Intent;)V

    .line 158
    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    .line 159
    const/4 v0, 0x1

    return v0
.end method
