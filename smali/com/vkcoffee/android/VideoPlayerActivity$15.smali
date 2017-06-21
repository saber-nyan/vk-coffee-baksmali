.class Lcom/vkcoffee/android/VideoPlayerActivity$15;
.super Ljava/lang/Object;
.source "VideoPlayerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/VideoPlayerActivity;->onPlaybackCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/VideoPlayerActivity;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/VideoPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/VideoPlayerActivity;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/vkcoffee/android/VideoPlayerActivity$15;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 401
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$15;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$1100(Lcom/vkcoffee/android/VideoPlayerActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0201fd

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 402
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$15;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0, v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$500(Lcom/vkcoffee/android/VideoPlayerActivity;Z)V

    .line 403
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$15;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$1800(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    .line 404
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$15;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-virtual {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->invalidateOptionsMenu()V

    .line 405
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$15;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$2800(Lcom/vkcoffee/android/VideoPlayerActivity;)V

    .line 406
    iget-object v0, p0, Lcom/vkcoffee/android/VideoPlayerActivity$15;->this$0:Lcom/vkcoffee/android/VideoPlayerActivity;

    invoke-static {v0, v2}, Lcom/vkcoffee/android/VideoPlayerActivity;->access$2900(Lcom/vkcoffee/android/VideoPlayerActivity;Z)V

    .line 407
    return-void
.end method
