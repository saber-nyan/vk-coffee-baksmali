.class Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "VideosFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask;->syncVideoEmbedWithServer(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/VideoFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask;

.field final synthetic val$access_key:Ljava/lang/String;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 410
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask$1;->this$1:Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask;

    iput p3, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask$1;->val$id:I

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask$1;->val$access_key:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 1
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 424
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 425
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask$1;->this$1:Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask;->access$600(Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 426
    return-void
.end method

.method synthetic lambda$success$617(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask$1;->this$1:Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask;->syncVideoEmbedWithServer(ILjava/lang/String;)V

    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 4
    .param p1, "video"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 413
    iget-object v0, p1, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 414
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "username"

    const-string/jumbo v2, "DELETED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vkcoffee/android/api/VideoFile;->ownerName:Ljava/lang/String;

    .line 415
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/fragments/videos/Videos;->notifyVideoAdded(Landroid/content/Context;Lcom/vkcoffee/android/api/VideoFile;)V

    .line 416
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask$1;->this$1:Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask;->access$600(Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask$1;->this$1:Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask$1;->this$1:Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask;->this$0:Lcom/vkcoffee/android/fragments/videos/VideosFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/videos/VideosFragment;->mTimerHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask$1;->val$id:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask$1;->val$access_key:Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask$1$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask$1;ILjava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 410
    check-cast p1, Lcom/vkcoffee/android/api/VideoFile;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/videos/VideosFragment$AddVideoByLinkTask$1;->success(Lcom/vkcoffee/android/api/VideoFile;)V

    return-void
.end method
