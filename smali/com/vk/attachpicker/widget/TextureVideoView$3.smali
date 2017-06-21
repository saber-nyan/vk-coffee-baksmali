.class Lcom/vk/attachpicker/widget/TextureVideoView$3;
.super Ljava/lang/Object;
.source "TextureVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 377
    iput-object p1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$3;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x5

    .line 379
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView$3;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v0, v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$202(Lcom/vk/attachpicker/widget/TextureVideoView;I)I

    .line 380
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView$3;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v0, v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$1002(Lcom/vk/attachpicker/widget/TextureVideoView;I)I

    .line 381
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView$3;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$800(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView$3;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$800(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView$3;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$1100(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView$3;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$1100(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$3;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$700(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 387
    :cond_1
    return-void
.end method
