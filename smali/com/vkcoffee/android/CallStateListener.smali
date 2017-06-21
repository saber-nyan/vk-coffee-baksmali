.class public Lcom/vkcoffee/android/CallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "CallStateListener.java"


# instance fields
.field wasPlaying:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/CallStateListener;->wasPlaying:Z

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 12
    const-string/jumbo v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "CALL STATE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    if-eqz v0, :cond_0

    .line 14
    if-nez p1, :cond_1

    .line 15
    sput-boolean v4, Lcom/vkcoffee/android/MediaButtonReceiver;->receiveEvents:Z

    .line 16
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkcoffee/android/AudioPlayerService;->registerRemoteControl()V

    .line 17
    iget-boolean v0, p0, Lcom/vkcoffee/android/CallStateListener;->wasPlaying:Z

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkcoffee/android/AudioPlayerService;->togglePlayPause()V

    .line 19
    iput-boolean v3, p0, Lcom/vkcoffee/android/CallStateListener;->wasPlaying:Z

    .line 30
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkcoffee/android/AudioPlayerService;->unregisterRemoteControl()V

    .line 23
    sput-boolean v3, Lcom/vkcoffee/android/MediaButtonReceiver;->receiveEvents:Z

    .line 24
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkcoffee/android/AudioPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkcoffee/android/AudioPlayerService;->togglePlayPause()V

    .line 26
    iput-boolean v4, p0, Lcom/vkcoffee/android/CallStateListener;->wasPlaying:Z

    goto :goto_0
.end method
