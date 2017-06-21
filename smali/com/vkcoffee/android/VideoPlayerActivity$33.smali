.class Lcom/vkcoffee/android/VideoPlayerActivity$33;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "VideoPlayerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/VideoPlayerActivity;->addVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/VideoPlayerActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/VideoPlayerActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$33;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 1079
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 1080
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$33;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$300(Lcom/vkcoffee/android/VideoPlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$33;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$600(Lcom/vkcoffee/android/VideoPlayerActivity;I)V

    .line 1083
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$33;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$4402(Lcom/vkcoffee/android/VideoPlayerActivity;Z)Z

    .line 1084
    return-void
.end method

.method public success(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "vid"    # Ljava/lang/Integer;

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$33;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$4302(Lcom/vkcoffee/android/VideoPlayerActivity;I)I

    .line 1069
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$33;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->invalidateOptionsMenu()V

    .line 1070
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$33;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$2800(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    .line 1071
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$33;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$300(Lcom/vkcoffee/android/VideoPlayerActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$33;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$600(Lcom/vkcoffee/android/VideoPlayerActivity;I)V

    .line 1074
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$33;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$4402(Lcom/vkcoffee/android/VideoPlayerActivity;Z)Z

    .line 1075
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1065
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/VideoPlayerActivity$33;->success(Ljava/lang/Integer;)V

    return-void
.end method
