.class Lcom/vkontakte/android/media/FFMpegVideoPlayer$1;
.super Ljava/lang/Object;
.source "FFMpegVideoPlayer.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/media/FFMpegVideoPlayer;-><init>(Landroid/content/Context;Landroid/view/TextureView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/media/FFMpegVideoPlayer;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    .line 300
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
    .line 302
    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    sub-int v1, p4, p2

    invoke-static {v0, v1}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->access$5(Lcom/vkontakte/android/media/FFMpegVideoPlayer;I)V

    .line 303
    iget-object v0, p0, Lcom/vkontakte/android/media/FFMpegVideoPlayer$1;->this$0:Lcom/vkontakte/android/media/FFMpegVideoPlayer;

    sub-int v1, p5, p3

    invoke-static {v0, v1}, Lcom/vkontakte/android/media/FFMpegVideoPlayer;->access$6(Lcom/vkontakte/android/media/FFMpegVideoPlayer;I)V

    .line 304
    return-void
.end method
