.class Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2$1;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "VideoAddHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;

.field final synthetic val$add:Ljava/util/ArrayList;

.field final synthetic val$remove:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$2"    # Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2$1;->this$2:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2$1;->val$add:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2$1;->val$remove:Ljava/util/ArrayList;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public success()V
    .locals 5

    .prologue
    .line 95
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2$1;->this$2:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;->val$dlg:Landroid/app/AlertDialog;

    invoke-static {v1}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.RELOAD_VIDEO_ALBUMS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "target_id"

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2$1;->this$2:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;->this$1:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;

    iget v2, v2, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;->val$targetID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2$1;->this$2:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;->this$1:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;->access$000(Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2$1;->this$2:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;->this$1:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;->this$0:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;->access$000(Lcom/vkcoffee/android/fragments/videos/VideoAddHelper;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2$1;->this$2:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2;->this$1:Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1;->val$video:Lcom/vkcoffee/android/api/VideoFile;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2$1;->val$add:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/videos/VideoAddHelper$1$2$1;->val$remove:Ljava/util/ArrayList;

    invoke-static {v1, v2, v3, v4}, Lcom/vkcoffee/android/fragments/videos/Videos;->notifyVideoMoved(Landroid/content/Context;Lcom/vkcoffee/android/api/VideoFile;Ljava/util/List;Ljava/util/List;)V

    .line 100
    return-void
.end method
