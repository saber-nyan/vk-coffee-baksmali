.class Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$4;
.super Ljava/lang/Object;
.source "FrameworkAudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 111
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$4;->this$0:Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "code"    # I
    .param p3, "extra"    # I

    .prologue
    .line 114
    const-string/jumbo v0, "vk-framework-player"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onError("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const/16 v0, -0x26

    if-ne p2, v0, :cond_0

    .line 116
    const/4 v0, 0x1

    .line 121
    :goto_0
    return v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$4;->this$0:Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->errorListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$ErrorListener;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$4;->this$0:Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->errorListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$ErrorListener;

    invoke-interface {v0, p2, p3}, Lcom/vkcoffee/android/media/audio/AudioPlayer$ErrorListener;->onError(II)Z

    .line 121
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
