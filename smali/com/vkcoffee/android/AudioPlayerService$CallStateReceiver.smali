.class Lcom/vkcoffee/android/AudioPlayerService$CallStateReceiver;
.super Landroid/telephony/PhoneStateListener;
.source "AudioPlayerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/AudioPlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/AudioPlayerService;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/AudioPlayerService;)V
    .locals 0

    .prologue
    .line 1750
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vkcoffee/android/AudioPlayerService;Lcom/vkcoffee/android/AudioPlayerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;
    .param p2, "x1"    # Lcom/vkcoffee/android/AudioPlayerService$1;

    .prologue
    .line 1750
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/AudioPlayerService$CallStateReceiver;-><init>(Lcom/vkcoffee/android/AudioPlayerService;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 1753
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerService;->access$1600(Lcom/vkcoffee/android/AudioPlayerService;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkcoffee/android/AudioPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerService;->access$1700(Lcom/vkcoffee/android/AudioPlayerService;)Lcom/vkcoffee/android/media/audio/AudioPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1754
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/AudioPlayerService;->access$1602(Lcom/vkcoffee/android/AudioPlayerService;Z)Z

    .line 1755
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkcoffee/android/AudioPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1757
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkcoffee/android/AudioPlayerService;->togglePlayPause()V

    .line 1760
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerService;->access$1600(Lcom/vkcoffee/android/AudioPlayerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 1761
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/AudioPlayerService;->access$1602(Lcom/vkcoffee/android/AudioPlayerService;Z)Z

    .line 1762
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-static {v0}, Lcom/vkcoffee/android/AudioPlayerService;->access$1800(Lcom/vkcoffee/android/AudioPlayerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1774
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkcoffee/android/AudioPlayerService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1775
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkcoffee/android/AudioPlayerService;->togglePlayPause()V

    .line 1776
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$CallStateReceiver;->this$0:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkcoffee/android/AudioPlayerService;->fadeIn()V

    .line 1780
    :cond_1
    return-void
.end method
