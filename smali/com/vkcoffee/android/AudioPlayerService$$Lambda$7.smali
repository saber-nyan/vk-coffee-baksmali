.class final synthetic Lcom/vkcoffee/android/AudioPlayerService$$Lambda$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/AudioPlayerService;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/AudioPlayerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerService$$Lambda$7;->arg$1:Lcom/vkcoffee/android/AudioPlayerService;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/AudioPlayerService;)Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/AudioPlayerService$$Lambda$7;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/AudioPlayerService$$Lambda$7;-><init>(Lcom/vkcoffee/android/AudioPlayerService;)V

    return-object v0
.end method


# virtual methods
.method public onPlaybackPositionUpdate(J)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$$Lambda$7;->arg$1:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/AudioPlayerService;->lambda$registerRemoteControl$232(J)V

    return-void
.end method
