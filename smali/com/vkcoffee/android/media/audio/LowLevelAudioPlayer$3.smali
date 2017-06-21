.class Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$3;
.super Ljava/lang/Object;
.source "LowLevelAudioPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->retryDownloadDelayed(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$3;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$3;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v0}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$100(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)V

    .line 361
    return-void
.end method
