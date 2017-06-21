.class Lcom/vk/attachpicker/widget/TextureVideoView$1;
.super Ljava/lang/Object;
.source "TextureVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 319
    iput-object p1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$1;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 321
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView$1;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$002(Lcom/vk/attachpicker/widget/TextureVideoView;I)I

    .line 322
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView$1;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$102(Lcom/vk/attachpicker/widget/TextureVideoView;I)I

    .line 323
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView$1;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$000(Lcom/vk/attachpicker/widget/TextureVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView$1;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$100(Lcom/vk/attachpicker/widget/TextureVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView$1;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$1;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$000(Lcom/vk/attachpicker/widget/TextureVideoView;)I

    move-result v1

    iget-object v2, p0, Lcom/vk/attachpicker/widget/TextureVideoView$1;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v2}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$100(Lcom/vk/attachpicker/widget/TextureVideoView;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 325
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView$1;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-virtual {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->requestLayout()V

    .line 327
    :cond_0
    return-void
.end method
