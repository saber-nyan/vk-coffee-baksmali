.class Lcom/vk/attachpicker/widget/TextureVideoView$5$1;
.super Ljava/lang/Object;
.source "TextureVideoView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vk/attachpicker/widget/TextureVideoView$5;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vk/attachpicker/widget/TextureVideoView$5;


# direct methods
.method constructor <init>(Lcom/vk/attachpicker/widget/TextureVideoView$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vk/attachpicker/widget/TextureVideoView$5;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$5$1;->this$1:Lcom/vk/attachpicker/widget/TextureVideoView$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView$5$1;->this$1:Lcom/vk/attachpicker/widget/TextureVideoView$5;

    iget-object v0, v0, Lcom/vk/attachpicker/widget/TextureVideoView$5;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$1100(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView$5$1;->this$1:Lcom/vk/attachpicker/widget/TextureVideoView$5;

    iget-object v0, v0, Lcom/vk/attachpicker/widget/TextureVideoView$5;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v0}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$1100(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    iget-object v1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$5$1;->this$1:Lcom/vk/attachpicker/widget/TextureVideoView$5;

    iget-object v1, v1, Lcom/vk/attachpicker/widget/TextureVideoView$5;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v1}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$700(Lcom/vk/attachpicker/widget/TextureVideoView;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 443
    :cond_0
    return-void
.end method
