.class Lcom/vkcoffee/android/media/FFMpegVideoPlayer$1;
.super Ljava/lang/Object;
.source "FFMpegVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/media/FFMpegVideoPlayer;-><init>(Landroid/content/Context;Landroid/view/TextureView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/media/FFMpegVideoPlayer;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    sub-int v1, p4, p2

    invoke-static {v0, v1}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->access$002(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;I)I

    .line 52
    iget-object v0, p0, Lcom/vkcoffee/android/media/FFMpegVideoPlayer$1;->this$0:Lcom/vkcoffee/android/media/FFMpegVideoPlayer;

    sub-int v1, p5, p3

    invoke-static {v0, v1}, Lcom/vkcoffee/android/media/FFMpegVideoPlayer;->access$102(Lcom/vkcoffee/android/media/FFMpegVideoPlayer;I)I

    .line 53
    return-void
.end method
