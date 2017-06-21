.class Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$1;
.super Landroid/content/BroadcastReceiver;
.source "LowLevelAudioPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;
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
    .line 130
    iput-object p1, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$1;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 133
    const-string/jumbo v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string/jumbo v0, "noConnectivity"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$1;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v0}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$000(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)V

    .line 138
    iget-object v0, p0, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer$1;->this$0:Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;

    invoke-static {v0}, Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;->access$100(Lcom/vkcoffee/android/media/audio/LowLevelAudioPlayer;)V

    goto :goto_0
.end method
