.class Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$3;
.super Ljava/lang/Object;
.source "FrameworkAudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 101
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$3;->this$0:Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 104
    const-string/jumbo v0, "vk-framework-player"

    const-string/jumbo v1, "onPrepared"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$3;->this$0:Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->access$002(Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;Z)Z

    .line 106
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$3;->this$0:Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->preparedListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$PreparedListener;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$3;->this$0:Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->preparedListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$PreparedListener;

    invoke-interface {v0}, Lcom/vkcoffee/android/media/audio/AudioPlayer$PreparedListener;->onPrepared()V

    .line 109
    :cond_0
    return-void
.end method
