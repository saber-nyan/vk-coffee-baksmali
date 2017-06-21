.class Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$2;
.super Ljava/lang/Object;
.source "FrameworkAudioPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 89
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$2;->this$0:Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 92
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isLooping()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$2;->this$0:Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->completionListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$CompletionListener;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer$2;->this$0:Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/FrameworkAudioPlayer;->completionListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$CompletionListener;

    invoke-interface {v0}, Lcom/vkcoffee/android/media/audio/AudioPlayer$CompletionListener;->onEndOfStream()V

    goto :goto_0
.end method
