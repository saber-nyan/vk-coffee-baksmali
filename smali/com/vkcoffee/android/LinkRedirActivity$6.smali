.class Lcom/vkcoffee/android/LinkRedirActivity$6;
.super Ljava/lang/Object;
.source "LinkRedirActivity.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/LinkRedirActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lcom/vkcoffee/android/api/VideoFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/LinkRedirActivity;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/LinkRedirActivity;

    .prologue
    .line 812
    iput-object p1, p0, Lcom/vkcoffee/android/LinkRedirActivity$6;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/LinkRedirActivity$6;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 824
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$6;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 825
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$6;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$6;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity;->access$000(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 826
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 3
    .param p1, "video"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 815
    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$6;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 816
    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$6;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v1}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 817
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$6;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    const-class v2, Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 818
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 819
    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$6;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/LinkRedirActivity;->startActivity(Landroid/content/Intent;)V

    .line 820
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 812
    check-cast p1, Lcom/vkcoffee/android/api/VideoFile;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/LinkRedirActivity$6;->success(Lcom/vkcoffee/android/api/VideoFile;)V

    return-void
.end method
