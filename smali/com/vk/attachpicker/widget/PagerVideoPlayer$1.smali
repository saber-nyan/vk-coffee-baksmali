.class Lcom/vk/attachpicker/widget/PagerVideoPlayer$1;
.super Ljava/lang/Object;
.source "PagerVideoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/widget/PagerVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/widget/PagerVideoPlayer;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/widget/PagerVideoPlayer;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$1;->this$0:Lcom/vk/attachpicker/widget/PagerVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 138
    iget-object v1, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$1;->this$0:Lcom/vk/attachpicker/widget/PagerVideoPlayer;

    invoke-static {v1}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->access$000(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)Lcom/vk/attachpicker/widget/TextureVideoView;

    move-result-object v1

    if-nez v1, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$1;->this$0:Lcom/vk/attachpicker/widget/PagerVideoPlayer;

    invoke-static {v1}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->access$000(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)Lcom/vk/attachpicker/widget/TextureVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->getCurrentPosition()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$1;->this$0:Lcom/vk/attachpicker/widget/PagerVideoPlayer;

    invoke-static {v2}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->access$000(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)Lcom/vk/attachpicker/widget/TextureVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->getDuration()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 143
    .local v0, "videoPos":F
    invoke-static {}, Lcom/vk/attachpicker/events/NotificationCenter;->getInstance()Lcom/vk/attachpicker/events/NotificationCenter;

    move-result-object v1

    const/4 v2, 0x3

    new-instance v3, Lcom/vk/attachpicker/widget/PagerVideoPlayer$VideoProgress;

    iget-object v4, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$1;->this$0:Lcom/vk/attachpicker/widget/PagerVideoPlayer;

    invoke-static {v4}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->access$000(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)Lcom/vk/attachpicker/widget/TextureVideoView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/vk/attachpicker/widget/TextureVideoView;->getCurrentPosition()I

    move-result v4

    iget-object v5, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$1;->this$0:Lcom/vk/attachpicker/widget/PagerVideoPlayer;

    invoke-static {v5}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->access$000(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)Lcom/vk/attachpicker/widget/TextureVideoView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vk/attachpicker/widget/TextureVideoView;->getDuration()I

    move-result v5

    iget-object v6, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$1;->this$0:Lcom/vk/attachpicker/widget/PagerVideoPlayer;

    invoke-static {v6}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->access$100(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)I

    move-result v6

    invoke-direct {v3, v4, v5, v0, v6}, Lcom/vk/attachpicker/widget/PagerVideoPlayer$VideoProgress;-><init>(IIFI)V

    invoke-virtual {v1, v2, v3}, Lcom/vk/attachpicker/events/NotificationCenter;->fireEvent(ILjava/lang/Object;)V

    .line 145
    iget-object v1, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$1;->this$0:Lcom/vk/attachpicker/widget/PagerVideoPlayer;

    invoke-static {v1}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->access$000(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)Lcom/vk/attachpicker/widget/TextureVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    iget-object v1, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$1;->this$0:Lcom/vk/attachpicker/widget/PagerVideoPlayer;

    invoke-static {v1}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->access$300(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/widget/PagerVideoPlayer$1;->this$0:Lcom/vk/attachpicker/widget/PagerVideoPlayer;

    invoke-static {v2}, Lcom/vk/attachpicker/widget/PagerVideoPlayer;->access$200(Lcom/vk/attachpicker/widget/PagerVideoPlayer;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x10

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
