.class Lcom/vkcoffee/android/VideoPlayerActivity$34;
.super Lcom/vkcoffee/android/api/ResultlessCallback;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/VideoPlayerActivity;->addVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/VideoPlayerActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/VideoPlayerActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$34;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/ResultlessCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "err"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 1104
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/ResultlessCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 1105
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$34;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$300(Lcom/vkcoffee/android/VideoPlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1106
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$34;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$600(Lcom/vkcoffee/android/VideoPlayerActivity;I)V

    .line 1108
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$34;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$4402(Lcom/vkcoffee/android/VideoPlayerActivity;Z)Z

    .line 1109
    return-void
.end method

.method public success()V
    .locals 2

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$34;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$4500(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    .line 1094
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$34;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->invalidateOptionsMenu()V

    .line 1095
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$34;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$2800(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    .line 1096
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$34;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$300(Lcom/vkcoffee/android/VideoPlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$34;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$600(Lcom/vkcoffee/android/VideoPlayerActivity;I)V

    .line 1099
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$34;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$4402(Lcom/vkcoffee/android/VideoPlayerActivity;Z)Z

    .line 1100
    return-void
.end method
