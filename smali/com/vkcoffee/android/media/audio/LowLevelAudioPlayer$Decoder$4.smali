.class Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder$4;
.super Ljava/lang/Object;
.source "LowLevelAudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;)V
    .locals 0
    .param p1, "this$1"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;

    .prologue
    .line 827
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder$4;->this$1:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 830
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder$4;->this$1:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->completionListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$CompletionListener;

    if-eqz v0, :cond_0

    .line 831
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder$4;->this$1:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->completionListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$CompletionListener;

    invoke-interface {v0}, Lcom/vkcoffee/android/media/audio/AudioPlayer$CompletionListener;->onEndOfStream()V

    .line 833
    :cond_0
    return-void
.end method
