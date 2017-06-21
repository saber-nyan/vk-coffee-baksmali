.class Lcom/vkcoffee/android/LinkRedirActivity$10;
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
        "Ljava/util/ArrayList",
        "<",
        "Lcom/vkcoffee/android/AudioFile;",
        ">;>;"
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
    .line 1005
    iput-object p1, p0, Lcom/vkcoffee/android/LinkRedirActivity$10;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iput-object p2, p0, Lcom/vkcoffee/android/LinkRedirActivity$10;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "err"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$10;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 1028
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$10;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    iget-object v1, p0, Lcom/vkcoffee/android/LinkRedirActivity$10;->val$uri:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcom/vkcoffee/android/LinkRedirActivity;->access$000(Lcom/vkcoffee/android/LinkRedirActivity;Landroid/net/Uri;)V

    .line 1029
    return-void
.end method

.method synthetic lambda$success$642()V
    .locals 3

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/vkcoffee/android/LinkRedirActivity$10;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    const v1, 0x7f0803aa

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1005
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/LinkRedirActivity$10;->success(Ljava/util/ArrayList;)V

    return-void
.end method

.method public success(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/AudioFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1009
    .local p1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    iget-object v3, p0, Lcom/vkcoffee/android/LinkRedirActivity$10;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/LinkRedirActivity;->setResult(I)V

    .line 1010
    iget-object v3, p0, Lcom/vkcoffee/android/LinkRedirActivity$10;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v3}, Lcom/vkcoffee/android/LinkRedirActivity;->finish()V

    .line 1011
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 1012
    iget-object v3, p0, Lcom/vkcoffee/android/LinkRedirActivity$10;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-static {p0}, Lcom/vkcoffee/android/LinkRedirActivity$10$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/LinkRedirActivity$10;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/LinkRedirActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1023
    :goto_0
    return-void

    .line 1015
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioFile;

    .line 1016
    .local v0, "af":Lcom/vkcoffee/android/AudioFile;
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkcoffee/android/LinkRedirActivity$10;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    const-class v4, Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1017
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "action"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1018
    const-string/jumbo v3, "file"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1019
    iget-object v3, p0, Lcom/vkcoffee/android/LinkRedirActivity$10;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v3, v1}, Lcom/vkcoffee/android/LinkRedirActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1020
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/vkcoffee/android/LinkRedirActivity$10;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    const-class v4, Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1021
    .local v2, "intent2":Landroid/content/Intent;
    const-string/jumbo v3, "action"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1022
    iget-object v3, p0, Lcom/vkcoffee/android/LinkRedirActivity$10;->this$0:Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-virtual {v3, v2}, Lcom/vkcoffee/android/LinkRedirActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
