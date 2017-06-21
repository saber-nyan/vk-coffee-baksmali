.class Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$4;
.super Ljava/lang/Object;
.source "LowLevelAudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->callErrorCallback(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

.field final synthetic val$code:I

.field final synthetic val$ext:I


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$4;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    iput p2, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$4;->val$code:I

    iput p3, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$4;->val$ext:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 377
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$4;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    iget-object v0, v0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->errorListener:Lcom/vkcoffee/android/media/audio/AudioPlayer$ErrorListener;

    iget v1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$4;->val$code:I

    iget v2, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$4;->val$ext:I

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/media/audio/AudioPlayer$ErrorListener;->onError(II)Z

    .line 378
    return-void
.end method
