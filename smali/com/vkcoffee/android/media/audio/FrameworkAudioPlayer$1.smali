.class Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$1;
.super Ljava/lang/Object;
.source "FrameworkAudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;-><init>(Ljava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$1;->this$0:Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 6
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "i"    # I

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$1;->this$0:Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->positionListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$PositionListener;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$1;->this$0:Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->positionListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$PositionListener;

    int-to-double v2, p2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lcom/vkcoffee/android/media/audio/AudioPlayer$PositionListener;->onBufferingUpdate(D)V

    .line 87
    :cond_0
    return-void
.end method
