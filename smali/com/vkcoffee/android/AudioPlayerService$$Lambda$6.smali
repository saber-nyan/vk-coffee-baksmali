.class final synthetic Lcom/vkcoffee/android/AudioPlayerService$$Lambda$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/AudioPlayerService;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/AudioPlayerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerService$$Lambda$6;->arg$1:Lcom/vkcoffee/android/AudioPlayerService;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/AudioPlayerService;)Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/AudioPlayerService$$Lambda$6;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/AudioPlayerService$$Lambda$6;-><init>(Lcom/vkcoffee/android/AudioPlayerService;)V

    return-object v0
.end method


# virtual methods
.method public onGetPlaybackPosition()J
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService$$Lambda$6;->arg$1:Lcom/vkcoffee/android/AudioPlayerService;

    invoke-virtual {v0}, Lcom/vkcoffee/android/AudioPlayerService;->lambda$registerRemoteControl$231()J

    move-result-wide v0

    return-wide v0
.end method
