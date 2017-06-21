.class Lcom/vk/attachpicker/widget/TextureVideoView$7;
.super Ljava/lang/Object;
.source "TextureVideoView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vk/attachpicker/widget/TextureVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vk/attachpicker/widget/TextureVideoView;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/widget/TextureVideoView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vk/attachpicker/widget/TextureVideoView;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$7;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 520
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView$7;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0, v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$1602(Lcom/vk/attachpicker/widget/TextureVideoView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 521
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView$7;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$1700(Lcom/vk/attachpicker/widget/TextureVideoView;)V

    .line 522
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    const/4 v2, 0x1

    .line 527
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView$7;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$1600(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView$7;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$1600(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 529
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView$7;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$1602(Lcom/vk/attachpicker/widget/TextureVideoView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView$7;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$800(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView$7;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$800(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 532
    :cond_1
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView$7;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v0, v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$1800(Lcom/vk/attachpicker/widget/TextureVideoView;Z)V

    .line 533
    return v2
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 5
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 508
    iget-object v3, p0, Lcom/vk/attachpicker/widget/TextureVideoView$7;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v3}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$1000(Lcom/vk/attachpicker/widget/TextureVideoView;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    move v1, v0

    .line 509
    .local v1, "isValidState":Z
    :goto_0
    if-lez p2, :cond_3

    if-lez p3, :cond_3

    .line 510
    .local v0, "hasValidSize":Z
    :goto_1
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView$7;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$700(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 511
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView$7;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$900(Lcom/vk/attachpicker/widget/TextureVideoView;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView$7;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    iget-object v3, p0, Lcom/vk/attachpicker/widget/TextureVideoView$7;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v3}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$900(Lcom/vk/attachpicker/widget/TextureVideoView;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/vk/attachpicker/widget/TextureVideoView;->seekTo(I)V

    .line 514
    :cond_0
    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView$7;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->start()V

    .line 516
    :cond_1
    return-void

    .end local v0    # "hasValidSize":Z
    .end local v1    # "isValidState":Z
    :cond_2
    move v1, v2

    .line 508
    goto :goto_0

    .restart local v1    # "isValidState":Z
    :cond_3
    move v0, v2

    .line 509
    goto :goto_1
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 538
    return-void
.end method
