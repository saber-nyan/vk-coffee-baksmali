.class Lcom/vk/attachpicker/widget/TextureVideoView$2;
.super Ljava/lang/Object;
.source "TextureVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 330
    iput-object p1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 332
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$202(Lcom/vk/attachpicker/widget/TextureVideoView;I)I

    .line 334
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    iget-object v3, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v3, v4}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$502(Lcom/vk/attachpicker/widget/TextureVideoView;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$402(Lcom/vk/attachpicker/widget/TextureVideoView;Z)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$302(Lcom/vk/attachpicker/widget/TextureVideoView;Z)Z

    .line 336
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$600(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$600(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$700(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$800(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$800(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v2

    invoke-static {v1, v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$002(Lcom/vk/attachpicker/widget/TextureVideoView;I)I

    .line 343
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$102(Lcom/vk/attachpicker/widget/TextureVideoView;I)I

    .line 345
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$900(Lcom/vk/attachpicker/widget/TextureVideoView;)I

    move-result v0

    .line 346
    .local v0, "seekToPosition":I
    if-eqz v0, :cond_2

    .line 347
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v1, v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->seekTo(I)V

    .line 349
    :cond_2
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$000(Lcom/vk/attachpicker/widget/TextureVideoView;)I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$100(Lcom/vk/attachpicker/widget/TextureVideoView;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 351
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$000(Lcom/vk/attachpicker/widget/TextureVideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v3}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$100(Lcom/vk/attachpicker/widget/TextureVideoView;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 354
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$1000(Lcom/vk/attachpicker/widget/TextureVideoView;)I

    move-result v1

    if-ne v1, v5, :cond_4

    .line 355
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->start()V

    .line 356
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$800(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 357
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$800(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    .line 373
    :cond_3
    :goto_0
    return-void

    .line 359
    :cond_4
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    .line 360
    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->getCurrentPosition()I

    move-result v1

    if-lez v1, :cond_3

    .line 361
    :cond_5
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$800(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 363
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$800(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->show(I)V

    goto :goto_0

    .line 369
    :cond_6
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$1000(Lcom/vk/attachpicker/widget/TextureVideoView;)I

    move-result v1

    if-ne v1, v5, :cond_3

    .line 370
    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$2;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->start()V

    goto :goto_0
.end method
