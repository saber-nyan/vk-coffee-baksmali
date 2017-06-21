.class Lcom/vk/attachpicker/screen/TrimScreen$5;
.super Ljava/lang/Object;
.source "TrimScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/screen/TrimScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/screen/TrimScreen;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/screen/TrimScreen;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/screen/TrimScreen;

    .prologue
    .line 487
    iput-object p1, p0, Lcom/vk/attachpicker/screen/TrimScreen$5;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 490
    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$5;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$000(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/widget/TextureVideoView;

    move-result-object v2

    if-nez v2, :cond_1

    .line 511
    :cond_0
    :goto_0
    return-void

    .line 493
    :cond_1
    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$5;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$000(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/widget/TextureVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->getCurrentPosition()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen$5;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v3}, Lcom/vk/attachpicker/screen/TrimScreen;->access$000(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/widget/TextureVideoView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vk/attachpicker/widget/TextureVideoView;->getDuration()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v2, v3

    .line 494
    .local v1, "videoPos":F
    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$5;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$300(Lcom/vk/attachpicker/screen/TrimScreen;)F

    move-result v2

    cmpg-float v2, v2, v1

    if-gez v2, :cond_2

    .line 495
    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$5;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->setProgress(F)V

    .line 496
    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$5;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2, v1}, Lcom/vk/attachpicker/screen/TrimScreen;->access$302(Lcom/vk/attachpicker/screen/TrimScreen;F)F

    .line 499
    :cond_2
    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$5;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$500(Lcom/vk/attachpicker/screen/TrimScreen;)I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen$5;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v3}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getRightProgress()F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .line 500
    .local v0, "limit":I
    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$5;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$000(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/widget/TextureVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->getCurrentPosition()I

    move-result v2

    add-int/lit8 v3, v0, -0x10

    if-lt v2, v3, :cond_3

    .line 501
    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$5;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$000(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/widget/TextureVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->pause()V

    .line 502
    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$5;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$400(Lcom/vk/attachpicker/screen/TrimScreen;)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 503
    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$5;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen$5;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v3}, Lcom/vk/attachpicker/screen/TrimScreen;->access$600(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/videotrim/VideoTimelineView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/vk/attachpicker/videotrim/VideoTimelineView;->getLeftProgress()F

    move-result v3

    iget-object v4, p0, Lcom/vk/attachpicker/screen/TrimScreen$5;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v4}, Lcom/vk/attachpicker/screen/TrimScreen;->access$500(Lcom/vk/attachpicker/screen/TrimScreen;)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v2, v3}, Lcom/vk/attachpicker/screen/TrimScreen;->access$700(Lcom/vk/attachpicker/screen/TrimScreen;I)V

    goto :goto_0

    .line 507
    :cond_3
    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$5;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$000(Lcom/vk/attachpicker/screen/TrimScreen;)Lcom/vk/attachpicker/widget/TextureVideoView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    iget-object v2, p0, Lcom/vk/attachpicker/screen/TrimScreen$5;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v2}, Lcom/vk/attachpicker/screen/TrimScreen;->access$200(Lcom/vk/attachpicker/screen/TrimScreen;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/vk/attachpicker/screen/TrimScreen$5;->this$0:Lcom/vk/attachpicker/screen/TrimScreen;

    invoke-static {v3}, Lcom/vk/attachpicker/screen/TrimScreen;->access$100(Lcom/vk/attachpicker/screen/TrimScreen;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x10

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
