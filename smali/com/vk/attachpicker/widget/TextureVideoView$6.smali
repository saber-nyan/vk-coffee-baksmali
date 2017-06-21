.class Lcom/vk/attachpicker/widget/TextureVideoView$6;
.super Ljava/lang/Object;
.source "TextureVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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
    .line 453
    iput-object p1, p0, Lcom/vk/attachpicker/widget/TextureVideoView$6;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "percent"    # I

    .prologue
    .line 455
    iget-object v0, p0, Lcom/vk/attachpicker/widget/TextureVideoView$6;->this$0:Lcom/vk/attachpicker/widget/TextureVideoView;

    invoke-static {v0, p2}, Lcom/vk/attachpicker/widget/TextureVideoView;->access$1502(Lcom/vk/attachpicker/widget/TextureVideoView;I)I

    .line 456
    return-void
.end method
