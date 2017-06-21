.class Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder$3;
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
    .line 755
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder$3;->this$1:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder$3;->this$1:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->preparedListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$PreparedListener;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder$3;->this$1:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$Decoder;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->preparedListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$PreparedListener;

    invoke-interface {v0}, Lcom/vkcoffee/android/media/audio/AudioPlayer$PreparedListener;->onPrepared()V

    .line 761
    :cond_0
    return-void
.end method
