.class public Lcom/vkcoffee/android/AudioPlayerService;
.super Landroid/app/Service;
.source "AudioPlayerService.java"

# interfaces
.implements Lcom/vkcoffee/android/media/audio/AudioPlayer$PositionListener;
.implements Lcom/vkcoffee/android/media/audio/AudioPlayer$CompletionListener;
.implements Lcom/vkcoffee/android/media/audio/AudioPlayer$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/AudioPlayerService$AudioPlaySender;,
        Lcom/vkcoffee/android/AudioPlayerService$UpdateBroadcastSender;,
        Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;,
        Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;,
        Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;,
        Lcom/vkcoffee/android/AudioPlayerService$StopServiceRunnable;,
        Lcom/vkcoffee/android/AudioPlayerService$ReleasePlayerRunnable;,
        Lcom/vkcoffee/android/AudioPlayerService$CallStateReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_NEW_FILE:I = 0x1

.field public static final ACTION_NEW_PLAYLIST:I = 0x2

.field public static final ACTION_NEXT_TRACK:I = 0x5

.field public static final ACTION_PAUSE_IF_PLAYING:I = 0x7

.field public static final ACTION_PLAY_IF_PAUSED:I = 0x8

.field public static final ACTION_PLAY_PAUSE:I = 0x3

.field public static final ACTION_PREV_TRACK:I = 0x6

.field public static final ACTION_SERVICE_STOPPING:Ljava/lang/String; = "com.vkcoffee.android.SERVICE_STOPPING"

.field public static final ACTION_SHOW_PLAYER:I = 0x4

.field public static final ACTION_STOP_SERVICE:I = 0xb

.field public static final ACTION_TOGGLE_REPEAT:I = 0x9

.field public static final ACTION_TOGGLE_SHUFFLE:I = 0xa

.field public static final ACTION_UPDATE_AUDIO_LISTS:Ljava/lang/String; = "com.vkcoffee.android.UPDATE_AUDIO_LISTS"

.field public static final ACTION_UPDATE_PLAYING:Ljava/lang/String; = "com.vkcoffee.android.PLAYER_PLAYING"

.field public static final B_ACTION_PLAYER_CONTROL:Ljava/lang/String; = "com.vkcoffee.android.PLAYER_CONTROL"

.field private static final ID_NOTIFICATION:I = 0x12c

.field private static final MIN_SPACE_TO_CACHE:J = 0x3200000L

.field private static final PLAYER_RELEASE_DELAY:J = 0xea60L

.field private static final SERVICE_STOP_DELAY:J = 0x1b7740L

.field public static final STATE_INITING:I = 0x3

.field public static final STATE_PAUSED:I = 0x2

.field public static final STATE_PLAYING:I = 0x1

.field public static final STATE_STOPPED:I

.field private static attachCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static cacheProxy:Lcom/vkcoffee/android/cache/AudioCache$Proxy;

.field public static listToPlay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/AudioFile;",
            ">;"
        }
    .end annotation
.end field

.field private static pauseAfterInit:Z

.field private static progressCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;


# instance fields
.field private attachViews:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/vkcoffee/android/AudioAttachView;",
            ">;"
        }
    .end annotation
.end field

.field private final audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private audioPlaySender:Lcom/vkcoffee/android/AudioPlayerService$AudioPlaySender;

.field private cacheCurrent:Z

.field private callStateReceiver:Lcom/vkcoffee/android/AudioPlayerService$CallStateReceiver;

.field private cancelReleaseWifiLock:Z

.field private currentFile:Lcom/vkcoffee/android/AudioFile;

.field private currentPlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/AudioFile;",
            ">;"
        }
    .end annotation
.end field

.field private equalizer:Landroid/media/audiofx/Equalizer;

.field private error:Z

.field private errorRetries:I

.field private haveAudioFocus:Z

.field private headsetPlugState:Z

.field public initing:Z

.field private lastFft:[B

.field private loop:Z

.field private nBuffered:D

.field private needSeekTo:I

.field private nm:Landroid/app/NotificationManager;

.field private notification:Landroid/app/Notification;

.field private pausedByCall:Z

.field private pausedBySystem:Z

.field private player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

.field private playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

.field private playerStopTimer:Ljava/util/Timer;

.field private playlistPosition:I

.field private random:Z

.field private randomPlaylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/AudioFile;",
            ">;"
        }
    .end annotation
.end field

.field private receiver:Landroid/content/BroadcastReceiver;

.field private referer:Ljava/lang/String;

.field private remoteControlClient:Landroid/media/RemoteControlClient;

.field private serviceStopTimer:Ljava/util/Timer;

.field private startAfterCall:Z

.field private statsHandler:Landroid/os/Handler;

.field private statusUserID:I

.field private telManager:Landroid/telephony/TelephonyManager;

.field private timer:Ljava/util/Timer;

.field private updateBroadcastSender:Lcom/vkcoffee/android/AudioPlayerService$UpdateBroadcastSender;

.field private useCustomNotification:Z

.field private visualizer:Landroid/media/audiofx/Visualizer;

.field private visualizerFftSize:I

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/AudioPlayerService;->attachCallbacks:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    .line 131
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkcoffee/android/AudioPlayerService;->pauseAfterInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 99
    iput-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    .line 100
    iput-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->visualizer:Landroid/media/audiofx/Visualizer;

    .line 101
    iput-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->equalizer:Landroid/media/audiofx/Equalizer;

    .line 102
    iput-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->timer:Ljava/util/Timer;

    .line 103
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->nBuffered:D

    .line 107
    iput-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    .line 108
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    .line 110
    const/4 v2, -0x1

    iput v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    .line 111
    iput-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->initing:Z

    .line 114
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    .line 115
    iput-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->loop:Z

    iput-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->random:Z

    iput-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->cacheCurrent:Z

    iput-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->pausedBySystem:Z

    .line 117
    const/4 v2, 0x5

    iput v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->errorRetries:I

    .line 119
    iput v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->statusUserID:I

    .line 120
    iput-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->cancelReleaseWifiLock:Z

    .line 121
    iput-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    .line 122
    iput-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->pausedByCall:Z

    .line 123
    new-instance v2, Lcom/vkcoffee/android/AudioPlayerService$CallStateReceiver;

    invoke-direct {v2, p0, v4}, Lcom/vkcoffee/android/AudioPlayerService$CallStateReceiver;-><init>(Lcom/vkcoffee/android/AudioPlayerService;Lcom/vkcoffee/android/AudioPlayerService$1;)V

    iput-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->callStateReceiver:Lcom/vkcoffee/android/AudioPlayerService$CallStateReceiver;

    .line 128
    iput-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->headsetPlugState:Z

    iput-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->haveAudioFocus:Z

    .line 133
    iput v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->needSeekTo:I

    .line 134
    iput-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->startAfterCall:Z

    .line 135
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->useCustomNotification:Z

    .line 136
    iput-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->error:Z

    .line 138
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->referer:Ljava/lang/String;

    .line 143
    new-instance v0, Lcom/vkcoffee/android/AudioPlayerService$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/AudioPlayerService$1;-><init>(Lcom/vkcoffee/android/AudioPlayerService;)V

    iput-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->receiver:Landroid/content/BroadcastReceiver;

    .line 224
    invoke-static {p0}, Lcom/vkcoffee/android/AudioPlayerService$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/AudioPlayerService;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 1830
    iput-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->statsHandler:Landroid/os/Handler;

    .line 1831
    iput-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->updateBroadcastSender:Lcom/vkcoffee/android/AudioPlayerService$UpdateBroadcastSender;

    .line 1832
    iput-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->audioPlaySender:Lcom/vkcoffee/android/AudioPlayerService$AudioPlaySender;

    .line 1890
    return-void

    :cond_0
    move v0, v1

    .line 135
    goto :goto_0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/AudioPlayerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/AudioPlayerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->updateNotification()V

    return-void
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/AudioPlayerService;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/vkcoffee/android/AudioPlayerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;

    .prologue
    .line 66
    iget v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    return v0
.end method

.method static synthetic access$1400(Lcom/vkcoffee/android/AudioPlayerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->updateWidgets()V

    return-void
.end method

.method static synthetic access$1500(Lcom/vkcoffee/android/AudioPlayerService;)Landroid/media/RemoteControlClient;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/vkcoffee/android/AudioPlayerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->pausedByCall:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/vkcoffee/android/AudioPlayerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/vkcoffee/android/AudioPlayerService;->pausedByCall:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/vkcoffee/android/AudioPlayerService;)Lcom/vkcoffee/android/media/audio/AudioPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/vkcoffee/android/AudioPlayerService;Lcom/vkcoffee/android/media/audio/AudioPlayer;)Lcom/vkcoffee/android/media/audio/AudioPlayer;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;
    .param p1, "x1"    # Lcom/vkcoffee/android/media/audio/AudioPlayer;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/vkcoffee/android/AudioPlayerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->startAfterCall:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/vkcoffee/android/AudioPlayerService;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/vkcoffee/android/AudioPlayerService;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;
    .param p1, "x1"    # Ljava/util/Timer;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$202(Lcom/vkcoffee/android/AudioPlayerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/vkcoffee/android/AudioPlayerService;->statusUserID:I

    return p1
.end method

.method static synthetic access$2100(Lcom/vkcoffee/android/AudioPlayerService;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->notification:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/vkcoffee/android/AudioPlayerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->useCustomNotification:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/vkcoffee/android/AudioPlayerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->doStartPlayer()V

    return-void
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/AudioPlayerService;Lcom/vkcoffee/android/AudioFile;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;
    .param p1, "x1"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/AudioPlayerService;->playNewFile(Lcom/vkcoffee/android/AudioFile;)V

    return-void
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/AudioPlayerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->referer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/vkcoffee/android/AudioPlayerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerService;->referer:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/AudioPlayerService;Ljava/util/List;I)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/AudioPlayerService;->playNewPlaylist(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/AudioPlayerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->pausedBySystem:Z

    return v0
.end method

.method static synthetic access$602(Lcom/vkcoffee/android/AudioPlayerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/vkcoffee/android/AudioPlayerService;->pausedBySystem:Z

    return p1
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/AudioPlayerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/AudioPlayerService;->processHeadsetPlugState(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/AudioPlayerService;)Lcom/vkcoffee/android/AudioFile;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/AudioPlayerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/AudioPlayerService;

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->getCoverForWidgets()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 360
    :cond_0
    return-void
.end method

.method public static addAttachViewCallback(Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;)V
    .locals 1
    .param p0, "c"    # Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;

    .prologue
    .line 284
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->attachCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    return-void
.end method

.method public static addProgressCallback(Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;)V
    .locals 1
    .param p0, "c"    # Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;

    .prologue
    .line 293
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    return-void
.end method

.method private broadcastPlayStateChanged(Z)V
    .locals 11
    .param p1, "state"    # Z

    .prologue
    const/4 v5, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 752
    iget-object v8, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    if-nez v8, :cond_0

    .line 816
    :goto_0
    return-void

    .line 755
    :cond_0
    const-string/jumbo v8, "vk"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Broadcast play state "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v8, "com.vkcoffee.android.UPDATE_AUDIO_LISTS"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 762
    .local v1, "intent2":Landroid/content/Intent;
    const-string/jumbo v8, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v1, v8}, Lcom/vkcoffee/android/AudioPlayerService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 763
    iget-object v8, p0, Lcom/vkcoffee/android/AudioPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v8, :cond_2

    .line 764
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x12

    if-lt v8, v9, :cond_4

    .line 765
    const-wide/16 v2, 0x0

    .line 767
    .local v2, "ppos":J
    :try_start_0
    iget-object v8, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    if-eqz v8, :cond_1

    .line 768
    iget-object v8, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v8}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->getPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    int-to-long v2, v8

    .line 773
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/vkcoffee/android/AudioPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz p1, :cond_3

    :goto_2
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v5, v2, v3, v9}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    .line 778
    .end local v2    # "ppos":J
    :cond_2
    :goto_3
    sget-object v5, Lcom/vkcoffee/android/AudioPlayerService;->attachCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;

    .line 779
    .local v0, "c":Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;
    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v9, v5, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v10, v5, Lcom/vkcoffee/android/AudioFile;->aid:I

    if-eqz p1, :cond_6

    move v5, v7

    :goto_5
    invoke-interface {v0, v9, v10, v5}, Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;->onPlayStateChanged(III)V

    goto :goto_4

    .line 770
    .end local v0    # "c":Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;
    .restart local v2    # "ppos":J
    :catch_0
    move-exception v4

    .line 771
    .local v4, "x":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_1

    .end local v4    # "x":Ljava/lang/Exception;
    :cond_3
    move v5, v6

    .line 773
    goto :goto_2

    .line 775
    .end local v2    # "ppos":J
    :cond_4
    iget-object v8, p0, Lcom/vkcoffee/android/AudioPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz p1, :cond_5

    :goto_6
    invoke-virtual {v8, v5}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    goto :goto_3

    :cond_5
    move v5, v6

    goto :goto_6

    .restart local v0    # "c":Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;
    :cond_6
    move v5, v6

    .line 779
    goto :goto_5

    .line 784
    .end local v0    # "c":Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;
    :cond_7
    if-eqz p1, :cond_9

    .line 785
    :try_start_1
    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v5

    if-nez v5, :cond_8

    .line 786
    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 790
    :goto_7
    const-string/jumbo v5, "vk"

    const-string/jumbo v6, "acquired wifi lock"

    invoke-static {v5, v6}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 812
    :catch_1
    move-exception v4

    .line 813
    .restart local v4    # "x":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 788
    .end local v4    # "x":Ljava/lang/Exception;
    :cond_8
    const/4 v5, 0x1

    :try_start_2
    iput-boolean v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->cancelReleaseWifiLock:Z

    goto :goto_7

    .line 792
    :cond_9
    new-instance v5, Ljava/lang/Thread;

    invoke-static {p0}, Lcom/vkcoffee/android/AudioPlayerService$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/AudioPlayerService;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 810
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method

.method private doStartPlayer()V
    .locals 4

    .prologue
    .line 535
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    if-eqz v1, :cond_0

    .line 539
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v1}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->release()V

    .line 540
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    .line 542
    :cond_0
    monitor-enter p0

    .line 544
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    if-eqz v1, :cond_1

    .line 548
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v1}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->release()V

    .line 550
    :cond_1
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->releaseVisualizer()V

    .line 551
    const-string/jumbo v1, "vk"

    const-string/jumbo v2, "player starting"

    invoke-static {v1, v2}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->initing:Z

    .line 553
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->nBuffered:D

    .line 555
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->error:Z

    .line 557
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-static {v1, v2}, Lcom/vkcoffee/android/cache/AudioCache;->isCached(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 558
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget-object v1, v1, Lcom/vkcoffee/android/AudioFile;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v3, v3, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/cache/AudioCache;->checkFileSize(Ljava/lang/String;II)V

    .line 561
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->aid:I

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget-object v3, v3, Lcom/vkcoffee/android/AudioFile;->url:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->getInstance(IILjava/lang/String;)Lcom/vkcoffee/android/media/audio/AudioPlayer;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    .line 563
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->setPositionListener(Lcom/vkcoffee/android/media/audio/AudioPlayer$PositionListener;)V

    .line 564
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->setCompletionListener(Lcom/vkcoffee/android/media/audio/AudioPlayer$CompletionListener;)V

    .line 565
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v1, p0}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->setErrorListener(Lcom/vkcoffee/android/media/audio/AudioPlayer$ErrorListener;)V

    .line 566
    const-string/jumbo v1, "vk"

    const-string/jumbo v2, "player preparing"

    invoke-static {v1, v2}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-static {p0}, Lcom/vkcoffee/android/AudioPlayerService$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/AudioPlayerService;)Lcom/vkcoffee/android/media/audio/AudioPlayer$PreparedListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->setPreparedListener(Lcom/vkcoffee/android/media/audio/AudioPlayer$PreparedListener;)V

    .line 615
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v1}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    :cond_3
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 623
    return-void

    .line 616
    :catch_0
    move-exception v0

    .line 617
    .local v0, "x":Ljava/lang/Exception;
    const-string/jumbo v1, "vk"

    invoke-static {v1, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 618
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_3

    .line 619
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/AudioPlayerService;->onError(II)Z

    goto :goto_0

    .line 622
    .end local v0    # "x":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getCoverForWidgets()V
    .locals 4

    .prologue
    .line 1715
    const-string/jumbo v0, "vk"

    const-string/jumbo v1, "Before get cover image"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1716
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->aid:I

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->oid:I

    const/4 v2, 0x0

    new-instance v3, Lcom/vkcoffee/android/AudioPlayerService$5;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/AudioPlayerService$5;-><init>(Lcom/vkcoffee/android/AudioPlayerService;)V

    invoke-static {v0, v1, v2, v3}, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->getCoverImage(IIILcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;)V

    .line 1748
    return-void
.end method

.method private static getExternalFreeSpace()J
    .locals 6

    .prologue
    .line 1405
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1406
    .local v0, "stat":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    return-wide v2
.end method

.method private initVisualizer()V
    .locals 0

    .prologue
    .line 1560
    return-void
.end method

.method public static isEnoughSpaceToCache()Z
    .locals 4

    .prologue
    .line 531
    invoke-static {}, Lcom/vkcoffee/android/AudioPlayerService;->getExternalFreeSpace()J

    move-result-wide v0

    const-wide/32 v2, 0x3200000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFlymeOrMIUI()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1655
    new-instance v3, Ljava/io/File;

    const-string v4, "/system/framework/flyme-framework.jar"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1657
    :try_start_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.miui.core"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v1, :cond_0

    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->isNotificationColorLight()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->isMIUI8()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 1668
    :cond_1
    :goto_0
    return v1

    .line 1661
    :catch_0
    move-exception v0

    .line 1662
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    move v1, v2

    .line 1663
    goto :goto_0

    .line 1665
    .end local v0    # "x":Ljava/lang/Exception;
    :cond_2
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->isNotificationColorLight()Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 1666
    goto :goto_0
.end method

.method private isMIUI8()Z
    .locals 12

    .prologue
    .line 1613
    :try_start_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.miui.core"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 1614
    const/4 v7, 0x0

    .line 1649
    :goto_0
    return v7

    .line 1616
    :cond_0
    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 1617
    .local v2, "incr":Ljava/lang/String;
    const-string v7, "."

    const-string v8, ":"

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1618
    .local v3, "inf":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1619
    .local v0, "count":I
    const/4 v5, 0x0

    .line 1620
    .local v5, "secondValue":I
    const/4 v1, 0x0

    .line 1621
    .local v1, "global":I
    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v7, 0x0

    :goto_1
    if-lt v7, v9, :cond_1

    .line 1624
    const-string v7, ":"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v7, 0x0

    :goto_2
    if-lt v7, v9, :cond_2

    .line 1647
    const/4 v7, 0x0

    goto :goto_0

    .line 1621
    :cond_1
    aget-object v4, v8, v7

    .line 1622
    .local v4, "s":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    .line 1621
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1624
    .end local v4    # "s":Ljava/lang/String;
    :cond_2
    aget-object v4, v8, v7

    .line 1625
    .restart local v4    # "s":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 1626
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v10, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1627
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x6

    if-ge v10, v11, :cond_3

    const/4 v10, 0x1

    if-ne v0, v10, :cond_3

    .line 1628
    const/4 v7, 0x0

    goto :goto_0

    .line 1630
    :cond_3
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/16 v11, 0x8

    if-lt v10, v11, :cond_4

    const/4 v10, 0x1

    if-ne v0, v10, :cond_4

    .line 1631
    const/4 v7, 0x1

    goto :goto_0

    .line 1633
    :cond_4
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v11, 0x7

    if-lt v10, v11, :cond_5

    const/4 v10, 0x2

    if-ne v0, v10, :cond_5

    .line 1634
    const/4 v7, 0x1

    goto :goto_0

    .line 1636
    :cond_5
    const/4 v10, 0x2

    if-ne v0, v10, :cond_6

    .line 1637
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1639
    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_7

    const/4 v10, 0x3

    if-ne v0, v10, :cond_7

    const/4 v10, 0x6

    if-ne v5, v10, :cond_7

    .line 1640
    const/4 v7, 0x1

    goto :goto_0

    .line 1643
    :cond_7
    const/4 v10, 0x4

    if-ne v1, v10, :cond_8

    .line 1644
    const/4 v7, 0x0

    goto :goto_0

    .line 1624
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1648
    .end local v0    # "count":I
    .end local v1    # "global":I
    .end local v2    # "incr":Ljava/lang/String;
    .end local v3    # "inf":Ljava/lang/String;
    .end local v4    # "s":Ljava/lang/String;
    .end local v5    # "secondValue":I
    :catch_0
    move-exception v6

    .line 1649
    .local v6, "x":Ljava/lang/Exception;
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private isNotificationColorLight()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1574
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v4, v5, :cond_1

    .line 1580
    :cond_0
    :goto_0
    return v2

    .line 1577
    :cond_1
    const v4, 0x1030203

    new-array v5, v2, [I

    const v6, 0x1010098

    aput v6, v5, v3

    invoke-virtual {p0, v4, v5}, Lcom/vkcoffee/android/AudioPlayerService;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1578
    .local v1, "ta":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    .line 1579
    .local v0, "color":I
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1580
    and-int/lit16 v4, v0, 0xff

    shr-int/lit8 v5, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    shr-int/lit8 v5, v0, 0x10

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x3

    const/16 v5, 0x80

    if-gt v4, v5, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method private killStatThread()V
    .locals 3

    .prologue
    .line 1835
    const-class v2, Lcom/vkcoffee/android/AudioPlayerService;

    monitor-enter v2

    .line 1836
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->statsHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 1838
    :try_start_1
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->statsHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1843
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1844
    return-void

    .line 1839
    :catch_0
    move-exception v0

    .line 1840
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1843
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private playNewFile(Lcom/vkcoffee/android/AudioFile;)V
    .locals 6
    .param p1, "f"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    const/4 v5, 0x0

    .line 456
    iput v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->needSeekTo:I

    .line 457
    const-string/jumbo v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "New file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    if-nez p1, :cond_0

    .line 528
    :goto_0
    return-void

    .line 461
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    if-eqz v1, :cond_1

    .line 465
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v1}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->release()V

    .line 466
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    .line 468
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    if-eqz v1, :cond_2

    .line 469
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->aid:I

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v3, v3, Lcom/vkcoffee/android/AudioFile;->oldOid:I

    iget-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v4, v4, Lcom/vkcoffee/android/AudioFile;->oldAid:I

    invoke-static {v1, v2, v3, v4}, Lcom/vkcoffee/android/cache/AudioCache;->endPlayback(IIII)V

    .line 470
    invoke-direct {p0, v5}, Lcom/vkcoffee/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 472
    :cond_2
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    .line 473
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->registerRemoteControl()V

    .line 474
    invoke-direct {p0, v5}, Lcom/vkcoffee/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 477
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/AudioPlayerService;->sendStatsAndBroadcast(Lcom/vkcoffee/android/AudioFile;)V

    .line 479
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 480
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    if-eqz v1, :cond_3

    .line 481
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v5, v2, v3}, Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;->setPosition(IJ)V

    .line 482
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    invoke-interface {v1, v5}, Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;->setBuffered(I)V

    .line 483
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    invoke-interface {v1, p1}, Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;->displayInfo(Lcom/vkcoffee/android/AudioFile;)V

    .line 485
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 486
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    iget v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;->setNumber(II)V

    .line 490
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->initing:Z

    .line 494
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->updateNotification()V

    .line 495
    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->attachCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;

    .line 496
    .local v0, "c":Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v3, v3, Lcom/vkcoffee/android/AudioFile;->aid:I

    const/4 v4, 0x3

    invoke-interface {v0, v2, v3, v4}, Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;->onPlayStateChanged(III)V

    goto :goto_1

    .line 499
    .end local v0    # "c":Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;
    :cond_4
    new-instance v1, Ljava/lang/Thread;

    invoke-static {p0}, Lcom/vkcoffee/android/AudioPlayerService$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/AudioPlayerService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 524
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 527
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->updateWidgets()V

    goto/16 :goto_0
.end method

.method private playNewPlaylist(Ljava/util/List;I)V
    .locals 1
    .param p2, "startPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/AudioFile;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 626
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/AudioFile;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vkcoffee/android/AudioPlayerService;->playNewPlaylist(Ljava/util/List;IZ)V

    .line 627
    return-void
.end method

.method private playNewPlaylist(Ljava/util/List;IZ)V
    .locals 2
    .param p2, "startPos"    # I
    .param p3, "useRandomForFirst"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/AudioFile;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 630
    .local p1, "files":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/AudioFile;>;"
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 631
    const/4 p2, 0x0

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    .line 634
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 635
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 636
    iget-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->random:Z

    if-eqz v0, :cond_1

    .line 637
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 638
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 639
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 641
    :cond_1
    iput p2, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    .line 642
    iget-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->random:Z

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    iget-object p1, p0, Lcom/vkcoffee/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    .end local p1    # "files":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/AudioFile;>;"
    :cond_2
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioFile;

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/AudioPlayerService;->playNewFile(Lcom/vkcoffee/android/AudioFile;)V

    .line 643
    return-void

    .line 633
    .restart local p1    # "files":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/AudioFile;>;"
    :cond_3
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private processHeadsetPlugState(Z)V
    .locals 2
    .param p1, "newPlugState"    # Z

    .prologue
    const/4 v1, 0x0

    .line 445
    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->headsetPlugState:Z

    if-eqz v0, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 447
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/AudioPlayerService;->togglePlayPause(Z)V

    .line 452
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/vkcoffee/android/AudioPlayerService;->headsetPlugState:Z

    .line 453
    return-void

    .line 448
    :cond_1
    iget-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->pausedByCall:Z

    if-eqz v0, :cond_0

    .line 449
    iput-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->startAfterCall:Z

    goto :goto_0
.end method

.method private releaseVisualizer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1563
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->visualizer:Landroid/media/audiofx/Visualizer;

    if-eqz v0, :cond_0

    .line 1564
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->visualizer:Landroid/media/audiofx/Visualizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Visualizer;->release()V

    .line 1565
    iput-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->visualizer:Landroid/media/audiofx/Visualizer;

    .line 1567
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->equalizer:Landroid/media/audiofx/Equalizer;

    if-eqz v0, :cond_1

    .line 1568
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->equalizer:Landroid/media/audiofx/Equalizer;

    invoke-virtual {v0}, Landroid/media/audiofx/Equalizer;->release()V

    .line 1569
    iput-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->equalizer:Landroid/media/audiofx/Equalizer;

    .line 1571
    :cond_1
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 366
    :cond_0
    return-void
.end method

.method public static removeAttachViewCallback(Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;)V
    .locals 1
    .param p0, "c"    # Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;

    .prologue
    .line 288
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->attachCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 289
    return-void
.end method

.method public static removeProgressCallback(Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;)V
    .locals 1
    .param p0, "c"    # Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;

    .prologue
    .line 298
    sget-object v0, Lcom/vkcoffee/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 299
    return-void
.end method

.method private sendStatsAndBroadcast(Lcom/vkcoffee/android/AudioFile;)V
    .locals 6
    .param p1, "file"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    .line 1847
    const-class v2, Lcom/vkcoffee/android/AudioPlayerService;

    monitor-enter v2

    .line 1848
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->statsHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 1849
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "Audio stat"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1850
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    .line 1851
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1852
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->statsHandler:Landroid/os/Handler;

    .line 1855
    .end local v0    # "handlerThread":Landroid/os/HandlerThread;
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->updateBroadcastSender:Lcom/vkcoffee/android/AudioPlayerService$UpdateBroadcastSender;

    if-eqz v1, :cond_1

    .line 1856
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->statsHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->updateBroadcastSender:Lcom/vkcoffee/android/AudioPlayerService$UpdateBroadcastSender;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1858
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->audioPlaySender:Lcom/vkcoffee/android/AudioPlayerService$AudioPlaySender;

    if-eqz v1, :cond_2

    .line 1859
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->statsHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->audioPlaySender:Lcom/vkcoffee/android/AudioPlayerService$AudioPlaySender;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1861
    :cond_2
    new-instance v1, Lcom/vkcoffee/android/AudioPlayerService$UpdateBroadcastSender;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/AudioPlayerService$UpdateBroadcastSender;-><init>(Lcom/vkcoffee/android/AudioPlayerService;Lcom/vkcoffee/android/AudioFile;)V

    iput-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->updateBroadcastSender:Lcom/vkcoffee/android/AudioPlayerService$UpdateBroadcastSender;

    .line 1862
    new-instance v1, Lcom/vkcoffee/android/AudioPlayerService$AudioPlaySender;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/AudioPlayerService$AudioPlaySender;-><init>(Lcom/vkcoffee/android/AudioPlayerService;Lcom/vkcoffee/android/AudioFile;)V

    iput-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->audioPlaySender:Lcom/vkcoffee/android/AudioPlayerService$AudioPlaySender;

    .line 1864
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->statsHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->updateBroadcastSender:Lcom/vkcoffee/android/AudioPlayerService$UpdateBroadcastSender;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1865
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->statsHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->audioPlaySender:Lcom/vkcoffee/android/AudioPlayerService$AudioPlaySender;

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1866
    monitor-exit v2

    .line 1867
    return-void

    .line 1866
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateNotification()V
    .locals 3

    .prologue
    .line 1599
    invoke-static {p0}, Lcom/vkcoffee/android/AudioPlayerService$$Lambda$11;->lambdaFactory$(Lcom/vkcoffee/android/AudioPlayerService;)Ljava/lang/Runnable;

    move-result-object v0

    .line 1707
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 1708
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1712
    :goto_0
    return-void

    .line 1710
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private updateRemoteControl(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "cover"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1154
    return-void
.end method

.method private updateWidgets()V
    .locals 4

    .prologue
    .line 1357
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 1358
    .local v0, "awm":Landroid/appwidget/AppWidgetManager;
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/vkcoffee/android/PlayerWidget;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 1359
    .local v1, "ids":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 1360
    invoke-static {p0, v0}, Lcom/vkcoffee/android/PlayerWidget;->update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V

    .line 1362
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/vkcoffee/android/PlayerBigWidget;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v1

    .line 1363
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    .line 1364
    invoke-static {p0, v0}, Lcom/vkcoffee/android/PlayerBigWidget;->update(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;)V

    .line 1366
    :cond_1
    return-void
.end method


# virtual methods
.method public addAttachView(Lcom/vkcoffee/android/AudioAttachView;)V
    .locals 1
    .param p1, "v"    # Lcom/vkcoffee/android/AudioAttachView;

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 1037
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->isPlaying()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/AudioAttachView;->setPlaying(Z)V

    .line 1038
    return-void
.end method

.method public cacheCurrentFile()V
    .locals 1

    .prologue
    .line 1401
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkcoffee/android/cache/AudioCache;->saveCurrent(Z)V

    .line 1402
    return-void
.end method

.method public canEnqueue(Lcom/vkcoffee/android/AudioFile;)Z
    .locals 4
    .param p1, "f"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    .line 1286
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioFile;

    .line 1287
    .local v0, "af":Lcom/vkcoffee/android/AudioFile;
    iget v2, v0, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget v3, p1, Lcom/vkcoffee/android/AudioFile;->oid:I

    if-ne v2, v3, :cond_0

    iget v2, v0, Lcom/vkcoffee/android/AudioFile;->aid:I

    iget v3, p1, Lcom/vkcoffee/android/AudioFile;->aid:I

    if-ne v2, v3, :cond_0

    .line 1288
    const/4 v1, 0x0

    .line 1291
    .end local v0    # "af":Lcom/vkcoffee/android/AudioFile;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public enableVisualizer(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1528
    return-void
.end method

.method public enqueue(Lcom/vkcoffee/android/AudioFile;)Z
    .locals 3
    .param p1, "f"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    .line 1272
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/AudioPlayerService;->canEnqueue(Lcom/vkcoffee/android/AudioFile;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1273
    const/4 v0, 0x0

    .line 1282
    :goto_0
    return v0

    .line 1275
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1276
    iget-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->random:Z

    if-eqz v0, :cond_1

    .line 1277
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1279
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    if-eqz v0, :cond_2

    .line 1280
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    iget v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;->setNumber(II)V

    .line 1282
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public fadeIn()V
    .locals 2

    .prologue
    .line 1467
    new-instance v0, Ljava/lang/Thread;

    invoke-static {p0}, Lcom/vkcoffee/android/AudioPlayerService$$Lambda$8;->lambdaFactory$(Lcom/vkcoffee/android/AudioPlayerService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1481
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1482
    return-void
.end method

.method public fadeIn(F)V
    .locals 2
    .param p1, "from"    # F

    .prologue
    .line 1485
    new-instance v0, Ljava/lang/Thread;

    invoke-static {p0, p1}, Lcom/vkcoffee/android/AudioPlayerService$$Lambda$9;->lambdaFactory$(Lcom/vkcoffee/android/AudioPlayerService;F)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1499
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1500
    return-void
.end method

.method public fadeOut(F)V
    .locals 2
    .param p1, "to"    # F

    .prologue
    .line 1503
    new-instance v0, Ljava/lang/Thread;

    invoke-static {p0, p1}, Lcom/vkcoffee/android/AudioPlayerService$$Lambda$10;->lambdaFactory$(Lcom/vkcoffee/android/AudioPlayerService;F)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1518
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1519
    return-void
.end method

.method public getAid()I
    .locals 1

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    if-eqz v0, :cond_0

    .line 1030
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->aid:I

    .line 1032
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getBroadcastTargets()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1449
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1450
    .local v1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v5}, Lcom/vkcoffee/android/AudioPlayerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    const-string/jumbo v7, "audio_broadcast"

    const-string/jumbo v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1451
    .local v2, "s":Ljava/lang/String;
    const-string/jumbo v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1452
    .local v3, "ss":[Ljava/lang/String;
    array-length v6, v3

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v0, v3, v5

    .line 1454
    .local v0, "id":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1452
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1455
    :catch_0
    move-exception v4

    .line 1456
    .local v4, "x":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_1

    .line 1459
    .end local v0    # "id":Ljava/lang/String;
    .end local v4    # "x":Ljava/lang/Exception;
    :cond_0
    return-object v1
.end method

.method public getCurrentFile()Lcom/vkcoffee/android/AudioFile;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    return-object v0
.end method

.method public getOid()I
    .locals 1

    .prologue
    .line 1022
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    if-eqz v0, :cond_0

    .line 1023
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->oid:I

    .line 1025
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPlaylist(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/AudioFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1232
    .local p1, "output":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/AudioFile;>;"
    iget-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->random:Z

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1237
    :goto_0
    return-void

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getPlaylistItem(I)Lcom/vkcoffee/android/AudioFile;
    .locals 2
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 1222
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    .line 1228
    :cond_0
    :goto_0
    return-object v0

    .line 1225
    :cond_1
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 1228
    iget-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->random:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->statusUserID:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioFile;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioFile;

    goto :goto_0
.end method

.method public getPlaylistLength()I
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPlaylistPosition()I
    .locals 1

    .prologue
    .line 1214
    iget v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    return v0
.end method

.method public getVisualizerData([B)V
    .locals 0
    .param p1, "out"    # [B

    .prologue
    .line 1523
    return-void
.end method

.method public isBroadcast()Z
    .locals 1

    .prologue
    .line 1463
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->getBroadcastTargets()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoop()Z
    .locals 1

    .prologue
    .line 1369
    iget-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->loop:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 827
    iget-boolean v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->error:Z

    if-eqz v3, :cond_1

    .line 836
    :cond_0
    :goto_0
    return v2

    .line 830
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    if-nez v3, :cond_3

    .line 831
    iget-boolean v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->initing:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/vkcoffee/android/AudioPlayerService;->pauseAfterInit:Z

    if-nez v3, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 834
    :cond_3
    :try_start_0
    iget-boolean v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->initing:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v3}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->isPlaying()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v2, v1

    goto :goto_0

    .line 835
    :catch_0
    move-exception v0

    .line 836
    .local v0, "x":Ljava/lang/Exception;
    iget-boolean v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->initing:Z

    goto :goto_0
.end method

.method public isRandom()Z
    .locals 1

    .prologue
    .line 1385
    iget-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->random:Z

    return v0
.end method

.method public isViewShown()Z
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpToTrack(I)V
    .locals 2
    .param p1, "pos"    # I

    .prologue
    .line 958
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 966
    :goto_0
    return-void

    .line 961
    :cond_0
    iput p1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    .line 962
    iget v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    if-gez v0, :cond_1

    .line 963
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    .line 965
    :cond_1
    iget-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->random:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->statusUserID:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    iget v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioFile;

    :goto_1
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/AudioPlayerService;->playNewFile(Lcom/vkcoffee/android/AudioFile;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    iget v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioFile;

    goto :goto_1
.end method

.method synthetic lambda$broadcastPlayStateChanged$229()V
    .locals 4

    .prologue
    .line 794
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    :goto_0
    iget-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->cancelReleaseWifiLock:Z

    if-eqz v1, :cond_0

    .line 799
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->cancelReleaseWifiLock:Z

    .line 810
    :goto_1
    return-void

    .line 795
    :catch_0
    move-exception v0

    .line 796
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0

    .line 803
    .end local v0    # "x":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 804
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 806
    :cond_1
    const-string/jumbo v1, "vk"

    const-string/jumbo v2, "released wifi lock"

    invoke-static {v1, v2}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 807
    :catch_1
    move-exception v0

    .line 808
    .restart local v0    # "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method synthetic lambda$doStartPlayer$228()V
    .locals 3

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->initVisualizer()V

    .line 570
    :try_start_0
    iget v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->needSeekTo:I

    if-eqz v1, :cond_0

    .line 571
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    iget v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->needSeekTo:I

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->seek(I)V

    .line 572
    const/4 v1, 0x0

    iput v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->needSeekTo:I

    .line 574
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    iget-boolean v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->loop:Z

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->setLooping(Z)V

    .line 575
    sget-boolean v1, Lcom/vkcoffee/android/AudioPlayerService;->pauseAfterInit:Z

    if-nez v1, :cond_1

    .line 576
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v1}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->play()V

    .line 578
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    if-eqz v1, :cond_2

    .line 579
    const/4 v1, 0x5

    iput v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->errorRetries:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 581
    :try_start_1
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    invoke-interface {v1, v2}, Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;->displayInfo(Lcom/vkcoffee/android/AudioFile;)V

    .line 582
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v2}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->isPlaying()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;->setPlaying(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 588
    :cond_2
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->initing:Z

    .line 589
    const-string/jumbo v1, "vk"

    const-string/jumbo v2, "player started"

    invoke-static {v1, v2}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v1, :cond_3

    .line 592
    :try_start_3
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 597
    :cond_3
    :goto_1
    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    .line 598
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v1, :cond_4

    .line 600
    :try_start_5
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 605
    :cond_4
    :goto_2
    const/4 v1, 0x0

    :try_start_6
    iput-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    .line 607
    sget-boolean v1, Lcom/vkcoffee/android/AudioPlayerService;->pauseAfterInit:Z

    if-nez v1, :cond_5

    .line 608
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 610
    :cond_5
    const/4 v1, 0x0

    sput-boolean v1, Lcom/vkcoffee/android/AudioPlayerService;->pauseAfterInit:Z

    .line 614
    :goto_3
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 611
    .end local v0    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 612
    .restart local v0    # "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_3

    .line 593
    .end local v0    # "x":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 594
    .restart local v0    # "x":Ljava/lang/Exception;
    :try_start_7
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_1

    .line 601
    .end local v0    # "x":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 602
    .restart local v0    # "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2
.end method

.method synthetic lambda$fadeIn$233()V
    .locals 6

    .prologue
    .line 1469
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x64

    if-gt v0, v3, :cond_0

    .line 1470
    int-to-float v3, v0

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v1, v3, v4

    .line 1471
    .local v1, "vol":F
    :try_start_0
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v3, v1}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->setVolume(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1473
    const-wide/16 v4, 0x14

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1469
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1474
    :catch_0
    move-exception v2

    .line 1475
    .local v2, "x":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1478
    .end local v2    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1479
    .restart local v2    # "x":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    .line 1481
    .end local v1    # "vol":F
    .end local v2    # "x":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method synthetic lambda$fadeIn$234(F)V
    .locals 6

    .prologue
    .line 1487
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    const/16 v3, 0x32

    if-gt v0, v3, :cond_0

    .line 1488
    int-to-float v3, v0

    const/high16 v4, 0x42480000    # 50.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p1

    mul-float/2addr v3, v4

    add-float v1, p1, v3

    .line 1489
    .local v1, "vol":F
    :try_start_0
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v3, v1}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->setVolume(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1491
    const-wide/16 v4, 0xa

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1487
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1492
    :catch_0
    move-exception v2

    .line 1493
    .local v2, "x":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1496
    .end local v2    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1497
    .restart local v2    # "x":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    .line 1499
    .end local v1    # "vol":F
    .end local v2    # "x":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method synthetic lambda$fadeOut$235(F)V
    .locals 6

    .prologue
    .line 1505
    const/16 v0, 0x32

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x1

    if-lt v0, v3, :cond_0

    .line 1506
    int-to-float v3, v0

    const/high16 v4, 0x42480000    # 50.0f

    div-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p1

    mul-float/2addr v3, v4

    add-float v1, p1, v3

    .line 1508
    .local v1, "vol":F
    :try_start_0
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v3, v1}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->setVolume(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1510
    const-wide/16 v4, 0xa

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1505
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1511
    :catch_0
    move-exception v2

    .line 1512
    .local v2, "x":Ljava/lang/Exception;
    :try_start_2
    invoke-static {v2}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 1515
    .end local v2    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1516
    .restart local v2    # "x":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    .line 1518
    .end local v1    # "vol":F
    .end local v2    # "x":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method synthetic lambda$new$225(I)V
    .locals 7
    .param p1, "focusChange"    # I

    .prologue
    const v6, 0x3e4ccccd    # 0.2f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 225
    if-ne p1, v5, :cond_2

    .line 226
    const-string/jumbo v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "AUDIOFOCUS_GAIN, paused by system="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->pausedBySystem:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", paused by call="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->pausedByCall:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->startAfterCall:Z

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    if-eqz v1, :cond_0

    .line 229
    iget-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->haveAudioFocus:Z

    if-nez v1, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/AudioPlayerService;->fadeIn(F)V

    .line 239
    :cond_0
    :goto_0
    iput-boolean v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->startAfterCall:Z

    .line 240
    iput-boolean v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->haveAudioFocus:Z

    .line 281
    :goto_1
    return-void

    .line 232
    :cond_1
    iget-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->pausedBySystem:Z

    if-eqz v1, :cond_0

    .line 233
    iput-boolean v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->pausedBySystem:Z

    .line 234
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->togglePlayPause()V

    goto :goto_0

    .line 241
    :cond_2
    const/4 v1, -0x1

    if-ne p1, v1, :cond_4

    .line 242
    const-string/jumbo v1, "vk"

    const-string/jumbo v2, "AUDIOFOCUS_LOSS"

    invoke-static {v1, v2}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    if-eqz v1, :cond_3

    .line 245
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v1}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 246
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/AudioPlayerService;->togglePlayPause(Z)V

    .line 247
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->pausedBySystem:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :cond_3
    :goto_2
    iput-boolean v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->haveAudioFocus:Z

    goto :goto_1

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_2

    .line 254
    .end local v0    # "x":Ljava/lang/Exception;
    :cond_4
    const/4 v1, -0x2

    if-ne p1, v1, :cond_6

    .line 255
    const-string/jumbo v1, "vk"

    const-string/jumbo v2, "AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {v1, v2}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    if-eqz v1, :cond_5

    .line 258
    :try_start_1
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v1}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 259
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->pausedBySystem:Z

    .line 260
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->togglePlayPause()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 266
    :cond_5
    :goto_3
    iput-boolean v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->haveAudioFocus:Z

    goto :goto_1

    .line 262
    :catch_1
    move-exception v0

    .line 263
    .restart local v0    # "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_3

    .line 267
    .end local v0    # "x":Ljava/lang/Exception;
    :cond_6
    const/4 v1, -0x3

    if-ne p1, v1, :cond_8

    .line 268
    const-string/jumbo v1, "vk"

    const-string/jumbo v2, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    invoke-static {v1, v2}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    if-eqz v1, :cond_7

    .line 271
    :try_start_2
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v1}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 272
    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/AudioPlayerService;->fadeOut(F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 277
    :cond_7
    :goto_4
    iput-boolean v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->haveAudioFocus:Z

    goto :goto_1

    .line 279
    :cond_8
    const-string/jumbo v1, "vk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unknown audio focus event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 274
    :catch_2
    move-exception v1

    goto :goto_4
.end method

.method synthetic lambda$onError$230()V
    .locals 3

    .prologue
    .line 1079
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f08008d

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$playNewFile$227()V
    .locals 4

    .prologue
    .line 500
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkcoffee/android/AudioPlayerService;->pauseAfterInit:Z

    .line 501
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget-object v0, v0, Lcom/vkcoffee/android/AudioFile;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-static {v0, v1}, Lcom/vkcoffee/android/cache/AudioCache;->isCached(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 502
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->doStartPlayer()V

    .line 524
    :goto_0
    return-void

    .line 504
    :cond_1
    new-instance v0, Lcom/vkcoffee/android/api/VKAPIRequest;

    const-string/jumbo v1, "execute"

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "code"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "return API.audio.getById({\"audios\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v3, v3, Lcom/vkcoffee/android/AudioFile;->oid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v3, v3, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\"})[0].url;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 505
    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/AudioPlayerService$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/AudioPlayerService$2;-><init>(Lcom/vkcoffee/android/AudioPlayerService;)V

    .line 506
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 522
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    goto :goto_0
.end method

.method synthetic lambda$registerRemoteControl$231()J
    .locals 4

    .prologue
    .line 1122
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    if-eqz v1, :cond_0

    .line 1124
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v1}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->getPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    int-to-long v2, v1

    .line 1129
    :goto_0
    return-wide v2

    .line 1125
    :catch_0
    move-exception v0

    .line 1126
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    .line 1129
    .end local v0    # "x":Ljava/lang/Exception;
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method synthetic lambda$registerRemoteControl$232(J)V
    .locals 7
    .param p1, "newPositionMs"    # J

    .prologue
    .line 1133
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    if-eqz v3, :cond_0

    .line 1135
    :try_start_0
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    long-to-int v4, p1

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->seek(I)V

    .line 1136
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v3}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->getPosition()I

    move-result v3

    int-to-long v0, v3

    .line 1137
    .local v0, "ppos":J
    iget-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v3}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    :goto_0
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v3, v0, v1, v5}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1142
    .end local v0    # "ppos":J
    :cond_0
    :goto_1
    return-void

    .line 1137
    .restart local v0    # "ppos":J
    :cond_1
    const/4 v3, 0x2

    goto :goto_0

    .line 1138
    .end local v0    # "ppos":J
    :catch_0
    move-exception v2

    .line 1139
    .local v2, "x":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method synthetic lambda$updateNotification$236()V
    .locals 15

    .prologue
    .line 1600
    iget-boolean v11, p0, Lcom/vkcoffee/android/AudioPlayerService;->useCustomNotification:Z

    if-eqz v11, :cond_3

    .line 1601
    new-instance v6, Landroid/content/Intent;

    const-class v11, Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {v6, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1602
    .local v6, "playpause":Landroid/content/Intent;
    const-string/jumbo v11, "PlayPauseN"

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1603
    const-string/jumbo v11, "action"

    const/4 v12, 0x3

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1604
    const-string/jumbo v11, "from_notify"

    const/4 v12, 0x1

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1605
    const/4 v11, 0x0

    const/high16 v12, 0x10000000

    invoke-static {p0, v11, v6, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1606
    .local v3, "pendingPlaypause":Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    const-class v11, Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {v1, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1607
    .local v1, "next":Landroid/content/Intent;
    const-string/jumbo v11, "NextN"

    invoke-virtual {v1, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1608
    const-string/jumbo v11, "action"

    const/4 v12, 0x5

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1609
    const/4 v11, 0x0

    const/high16 v12, 0x10000000

    invoke-static {p0, v11, v1, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1610
    .local v2, "pendingNext":Landroid/app/PendingIntent;
    new-instance v7, Landroid/content/Intent;

    const-class v11, Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {v7, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1611
    .local v7, "prev":Landroid/content/Intent;
    const-string/jumbo v11, "PrevN"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1612
    const-string/jumbo v11, "action"

    const/4 v12, 0x6

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1613
    const/4 v11, 0x0

    const/high16 v12, 0x10000000

    invoke-static {p0, v11, v7, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1614
    .local v4, "pendingPrev":Landroid/app/PendingIntent;
    new-instance v8, Landroid/content/Intent;

    const-class v11, Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {v8, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1615
    .local v8, "stop":Landroid/content/Intent;
    const-string/jumbo v11, "StopN"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1616
    const-string/jumbo v11, "action"

    const/16 v12, 0xb

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1617
    const/4 v11, 0x0

    const/high16 v12, 0x10000000

    invoke-static {p0, v11, v8, v12}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1619
    .local v5, "pendingStop":Landroid/app/PendingIntent;
    new-instance v9, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f03004c

    invoke-direct {v9, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1620
    .local v9, "views":Landroid/widget/RemoteViews;
    const v11, 0x7f1000dd

    iget-object v12, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget-object v12, v12, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v9, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1621
    const v11, 0x7f10000d

    iget-object v12, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget-object v12, v12, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v9, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1622
    const v11, 0x7f100179

    const v12, 0x7f02004b

    invoke-virtual {v9, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1623
    const v12, 0x7f10017a

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->isPlaying()Z

    move-result v11

    if-eqz v11, :cond_4

    const v11, 0x7f0201b7

    :goto_0
    invoke-virtual {v9, v12, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1624
    const v11, 0x7f10017a

    invoke-virtual {v9, v11, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1625
    const v11, 0x7f10017b

    invoke-virtual {v9, v11, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1626
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-ge v11, v12, :cond_5

    .line 1627
    const v11, 0x7f10017c

    invoke-virtual {v9, v11, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1632
    :goto_1
    const/4 v0, 0x0

    .line 1633
    .local v0, "bgRes":I
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-ge v11, v12, :cond_6

    .line 1634
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const-string/jumbo v12, "notification_bg"

    const-string/jumbo v13, "drawable"

    const-string/jumbo v14, "android"

    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1643
    :goto_2
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->isFlymeOrMIUI()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1644
    const v11, 0x7f100178

    const-string/jumbo v12, "setBackgroundColor"

    const/4 v13, -0x1

    invoke-virtual {v9, v11, v12, v13}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1651
    :cond_0
    :goto_3
    iget-object v11, p0, Lcom/vkcoffee/android/AudioPlayerService;->notification:Landroid/app/Notification;

    iput-object v9, v11, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1652
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x10

    if-lt v11, v12, :cond_2

    .line 1653
    new-instance v10, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f03004d

    invoke-direct {v10, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 1654
    .local v10, "xviews":Landroid/widget/RemoteViews;
    const v11, 0x7f1000dd

    iget-object v12, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget-object v12, v12, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1655
    const v11, 0x7f10000d

    iget-object v12, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget-object v12, v12, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1656
    const v11, 0x7f100179

    const v12, 0x7f02004b

    invoke-virtual {v10, v11, v12}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1657
    const v12, 0x7f10017a

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->isPlaying()Z

    move-result v11

    if-eqz v11, :cond_9

    const v11, 0x7f0201b7

    :goto_4
    invoke-virtual {v10, v12, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1658
    const v11, 0x7f10017a

    invoke-virtual {v10, v11, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1659
    const v11, 0x7f10017b

    invoke-virtual {v10, v11, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1660
    const v11, 0x7f10017d

    invoke-virtual {v10, v11, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1661
    const v11, 0x7f10017c

    invoke-virtual {v10, v11, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1662
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->isFlymeOrMIUI()Z

    move-result v11

    if-eqz v11, :cond_a

    .line 1663
    const v11, 0x7f100178

    const-string/jumbo v12, "setBackgroundColor"

    const/4 v13, -0x1

    invoke-virtual {v10, v11, v12, v13}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 1669
    :cond_1
    :goto_5
    iget-object v11, p0, Lcom/vkcoffee/android/AudioPlayerService;->notification:Landroid/app/Notification;

    iput-object v10, v11, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1671
    .end local v10    # "xviews":Landroid/widget/RemoteViews;
    :cond_2
    iget-object v11, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v11, v11, Lcom/vkcoffee/android/AudioFile;->aid:I

    iget-object v12, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v12, v12, Lcom/vkcoffee/android/AudioFile;->oid:I

    const/4 v13, 0x0

    new-instance v14, Lcom/vkcoffee/android/AudioPlayerService$4;

    invoke-direct {v14, p0}, Lcom/vkcoffee/android/AudioPlayerService$4;-><init>(Lcom/vkcoffee/android/AudioPlayerService;)V

    invoke-static {v11, v12, v13, v14}, Lcom/vkcoffee/android/cache/AlbumArtRetriever;->getCoverImage(IIILcom/vkcoffee/android/cache/AlbumArtRetriever$ImageLoadCallback;)V

    .line 1699
    .end local v0    # "bgRes":I
    .end local v1    # "next":Landroid/content/Intent;
    .end local v2    # "pendingNext":Landroid/app/PendingIntent;
    .end local v3    # "pendingPlaypause":Landroid/app/PendingIntent;
    .end local v4    # "pendingPrev":Landroid/app/PendingIntent;
    .end local v5    # "pendingStop":Landroid/app/PendingIntent;
    .end local v6    # "playpause":Landroid/content/Intent;
    .end local v7    # "prev":Landroid/content/Intent;
    .end local v8    # "stop":Landroid/content/Intent;
    .end local v9    # "views":Landroid/widget/RemoteViews;
    :cond_3
    iget-object v11, p0, Lcom/vkcoffee/android/AudioPlayerService;->notification:Landroid/app/Notification;

    iget v11, v11, Landroid/app/Notification;->flags:I

    and-int/lit8 v11, v11, 0x2

    if-lez v11, :cond_b

    .line 1700
    const/16 v11, 0x12c

    iget-object v12, p0, Lcom/vkcoffee/android/AudioPlayerService;->notification:Landroid/app/Notification;

    invoke-virtual {p0, v11, v12}, Lcom/vkcoffee/android/AudioPlayerService;->startForeground(ILandroid/app/Notification;)V

    .line 1705
    :goto_6
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->acquireWakeLock()V

    .line 1706
    return-void

    .line 1623
    .restart local v1    # "next":Landroid/content/Intent;
    .restart local v2    # "pendingNext":Landroid/app/PendingIntent;
    .restart local v3    # "pendingPlaypause":Landroid/app/PendingIntent;
    .restart local v4    # "pendingPrev":Landroid/app/PendingIntent;
    .restart local v5    # "pendingStop":Landroid/app/PendingIntent;
    .restart local v6    # "playpause":Landroid/content/Intent;
    .restart local v7    # "prev":Landroid/content/Intent;
    .restart local v8    # "stop":Landroid/content/Intent;
    .restart local v9    # "views":Landroid/widget/RemoteViews;
    :cond_4
    const v11, 0x7f0201c2

    goto/16 :goto_0

    .line 1629
    :cond_5
    const v11, 0x7f10017d

    invoke-virtual {v9, v11, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 1636
    .restart local v0    # "bgRes":I
    :cond_6
    iget-object v11, p0, Lcom/vkcoffee/android/AudioPlayerService;->notification:Landroid/app/Notification;

    iput-object v5, v11, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1637
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->isPlaying()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1638
    iget-object v11, p0, Lcom/vkcoffee/android/AudioPlayerService;->notification:Landroid/app/Notification;

    iget v12, v11, Landroid/app/Notification;->flags:I

    or-int/lit8 v12, v12, 0x22

    iput v12, v11, Landroid/app/Notification;->flags:I

    goto/16 :goto_2

    .line 1640
    :cond_7
    iget-object v11, p0, Lcom/vkcoffee/android/AudioPlayerService;->notification:Landroid/app/Notification;

    iget v12, v11, Landroid/app/Notification;->flags:I

    and-int/lit8 v12, v12, -0x23

    iput v12, v11, Landroid/app/Notification;->flags:I

    goto/16 :goto_2

    .line 1645
    :cond_8
    if-eqz v0, :cond_0

    .line 1646
    const v11, 0x7f100178

    const-string/jumbo v12, "setBackgroundResource"

    invoke-virtual {v9, v11, v12, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_3

    .line 1657
    .restart local v10    # "xviews":Landroid/widget/RemoteViews;
    :cond_9
    const v11, 0x7f0201c2

    goto/16 :goto_4

    .line 1664
    :cond_a
    if-eqz v0, :cond_1

    .line 1665
    const v11, 0x7f100178

    const-string/jumbo v12, "setBackgroundResource"

    invoke-virtual {v10, v11, v12, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_5

    .line 1702
    .end local v0    # "bgRes":I
    .end local v1    # "next":Landroid/content/Intent;
    .end local v2    # "pendingNext":Landroid/app/PendingIntent;
    .end local v3    # "pendingPlaypause":Landroid/app/PendingIntent;
    .end local v4    # "pendingPrev":Landroid/app/PendingIntent;
    .end local v5    # "pendingStop":Landroid/app/PendingIntent;
    .end local v6    # "playpause":Landroid/content/Intent;
    .end local v7    # "prev":Landroid/content/Intent;
    .end local v8    # "stop":Landroid/content/Intent;
    .end local v9    # "views":Landroid/widget/RemoteViews;
    .end local v10    # "xviews":Landroid/widget/RemoteViews;
    :cond_b
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/vkcoffee/android/AudioPlayerService;->stopForeground(Z)V

    .line 1703
    iget-object v11, p0, Lcom/vkcoffee/android/AudioPlayerService;->nm:Landroid/app/NotificationManager;

    const/16 v12, 0x12c

    iget-object v13, p0, Lcom/vkcoffee/android/AudioPlayerService;->notification:Landroid/app/Notification;

    invoke-virtual {v11, v12, v13}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_6
.end method

.method public nextTrack()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 905
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 941
    :goto_0
    return-void

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v1, :cond_1

    .line 909
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/AudioPlayerService;->stopForeground(Z)V

    goto :goto_0

    .line 912
    :cond_1
    iget v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->statusUserID:I

    if-nez v0, :cond_4

    .line 915
    iget v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    .line 916
    iget v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 917
    const/4 v0, 0x0

    iput v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    .line 919
    :cond_2
    iget-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->random:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    iget v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioFile;

    :goto_1
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/AudioPlayerService;->playNewFile(Lcom/vkcoffee/android/AudioFile;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    iget v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioFile;

    goto :goto_1

    .line 921
    :cond_4
    new-instance v0, Lcom/vkcoffee/android/api/VKAPIRequest;

    const-string/jumbo v1, "status.get"

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "user_id"

    iget v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->statusUserID:I

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/AudioPlayerService$3;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/AudioPlayerService$3;-><init>(Lcom/vkcoffee/android/AudioPlayerService;)V

    .line 922
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 939
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 304
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBufferingUpdate(D)V
    .locals 9
    .param p1, "percent"    # D

    .prologue
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 876
    iput-wide p1, p0, Lcom/vkcoffee/android/AudioPlayerService;->nBuffered:D

    .line 877
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    if-eqz v1, :cond_0

    .line 878
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    mul-double v2, p1, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-interface {v1, v2}, Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;->setBuffered(I)V

    .line 880
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    if-eqz v1, :cond_1

    .line 881
    sget-object v1, Lcom/vkcoffee/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;

    .line 882
    .local v0, "pc":Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v3, v3, Lcom/vkcoffee/android/AudioFile;->aid:I

    mul-double v4, p1, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v4, v4

    invoke-interface {v0, v2, v3, v4}, Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;->onBufferProgressChanged(III)V

    goto :goto_0

    .line 885
    .end local v0    # "pc":Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;
    :cond_1
    return-void
.end method

.method public onCreate()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 308
    sput-object p0, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    .line 309
    const-string/jumbo v5, "notification"

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    iput-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->nm:Landroid/app/NotificationManager;

    .line 311
    new-instance v5, Landroid/app/Notification$Builder;

    invoke-direct {v5, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f02021b

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->notification:Landroid/app/Notification;

    .line 312
    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->notification:Landroid/app/Notification;

    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x22

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 313
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 314
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "action"

    const/4 v6, 0x4

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    const-string/jumbo v5, "from_notify"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 317
    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->notification:Landroid/app/Notification;

    const/high16 v6, 0x10000000

    invoke-static {p0, v9, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    iput-object v6, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 318
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x10

    if-lt v5, v6, :cond_0

    .line 319
    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->notification:Landroid/app/Notification;

    const/4 v6, 0x2

    iput v6, v5, Landroid/app/Notification;->priority:I

    .line 321
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_1

    .line 322
    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->notification:Landroid/app/Notification;

    iput v8, v5, Landroid/app/Notification;->visibility:I

    .line 325
    :cond_1
    sget-object v5, Lcom/vkcoffee/android/AudioPlayerService;->cacheProxy:Lcom/vkcoffee/android/cache/AudioCache$Proxy;

    if-eqz v5, :cond_2

    .line 326
    sget-object v5, Lcom/vkcoffee/android/AudioPlayerService;->cacheProxy:Lcom/vkcoffee/android/cache/AudioCache$Proxy;

    invoke-virtual {v5}, Lcom/vkcoffee/android/cache/AudioCache$Proxy;->stop()V

    .line 328
    :cond_2
    new-instance v5, Lcom/vkcoffee/android/cache/AudioCache$Proxy;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/cache/AudioCache$Proxy;-><init>(Landroid/content/Context;)V

    sput-object v5, Lcom/vkcoffee/android/AudioPlayerService;->cacheProxy:Lcom/vkcoffee/android/cache/AudioCache$Proxy;

    .line 329
    sget-object v5, Lcom/vkcoffee/android/AudioPlayerService;->cacheProxy:Lcom/vkcoffee/android/cache/AudioCache$Proxy;

    invoke-virtual {v5}, Lcom/vkcoffee/android/cache/AudioCache$Proxy;->start()V

    .line 331
    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-nez v5, :cond_3

    .line 332
    const-string/jumbo v5, "wifi"

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 333
    .local v2, "mgr":Landroid/net/wifi/WifiManager;
    const-string/jumbo v5, "vk_audio_streaming_player"

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 335
    .end local v2    # "mgr":Landroid/net/wifi/WifiManager;
    :cond_3
    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    if-nez v5, :cond_4

    .line 336
    const-string/jumbo v5, "phone"

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    .line 337
    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/vkcoffee/android/AudioPlayerService;->callStateReceiver:Lcom/vkcoffee/android/AudioPlayerService$CallStateReceiver;

    const/16 v7, 0x20

    invoke-virtual {v5, v6, v7}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 342
    :cond_4
    :try_start_0
    new-instance v5, Ljava/io/File;

    const-string/jumbo v6, "/system/lib/libCedarX.so"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    .line 343
    .local v0, "buggyPlayer":Z
    if-eqz v0, :cond_5

    .line 344
    const-string/jumbo v5, "vk"

    const-string/jumbo v6, "Found CedarX, enabling workaround!"

    invoke-static {v5, v6}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    .end local v0    # "buggyPlayer":Z
    :cond_5
    :goto_0
    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v5, :cond_6

    .line 351
    const-string/jumbo v5, "power"

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 352
    .local v3, "pm":Landroid/os/PowerManager;
    const-string/jumbo v5, "audio_player"

    invoke-virtual {v3, v8, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 354
    .end local v3    # "pm":Landroid/os/PowerManager;
    :cond_6
    return-void

    .line 346
    :catch_0
    move-exception v4

    .line 347
    .local v4, "x":Ljava/lang/Throwable;
    new-array v5, v8, [Ljava/lang/Object;

    aput-object v4, v5, v9

    invoke-static {v5}, Lcom/vkcoffee/android/utils/L;->e([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1295
    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->attachCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;

    .line 1296
    .local v0, "c":Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;
    invoke-interface {v0, v6, v6, v6}, Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;->onPlayStateChanged(III)V

    goto :goto_0

    .line 1298
    .end local v0    # "c":Lcom/vkcoffee/android/AudioPlayerService$AttachViewCallback;
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.vkcoffee.android.SERVICE_STOPPING"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v2, v3}, Lcom/vkcoffee/android/AudioPlayerService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1299
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    if-eqz v2, :cond_1

    .line 1306
    :try_start_0
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v2}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1310
    :goto_1
    iput-object v7, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    .line 1312
    :cond_1
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->releaseVisualizer()V

    .line 1313
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    if-eqz v2, :cond_2

    .line 1314
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v3, v3, Lcom/vkcoffee/android/AudioFile;->aid:I

    iget-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v4, v4, Lcom/vkcoffee/android/AudioFile;->oldOid:I

    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v5, v5, Lcom/vkcoffee/android/AudioFile;->oldAid:I

    invoke-static {v2, v3, v4, v5}, Lcom/vkcoffee/android/cache/AudioCache;->endPlayback(IIII)V

    .line 1316
    :cond_2
    iput-object v7, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    .line 1317
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/AudioPlayerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1318
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->updateWidgets()V

    .line 1319
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_3

    .line 1320
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->telManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->callStateReceiver:Lcom/vkcoffee/android/AudioPlayerService$CallStateReceiver;

    invoke-virtual {v2, v3, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1322
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/AudioPlayerService;->stopForeground(Z)V

    .line 1323
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->releaseWakeLock()V

    .line 1324
    sput-object v7, Lcom/vkcoffee/android/AudioPlayerService;->sharedInstance:Lcom/vkcoffee/android/AudioPlayerService;

    .line 1325
    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->cacheProxy:Lcom/vkcoffee/android/cache/AudioCache$Proxy;

    if-eqz v2, :cond_4

    .line 1326
    sget-object v2, Lcom/vkcoffee/android/AudioPlayerService;->cacheProxy:Lcom/vkcoffee/android/cache/AudioCache$Proxy;

    invoke-virtual {v2}, Lcom/vkcoffee/android/cache/AudioCache$Proxy;->stop()V

    .line 1327
    sput-object v7, Lcom/vkcoffee/android/AudioPlayerService;->cacheProxy:Lcom/vkcoffee/android/cache/AudioCache$Proxy;

    .line 1329
    :cond_4
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->unregisterRemoteControl()V

    .line 1331
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->killStatThread()V

    .line 1333
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1334
    return-void

    .line 1307
    :catch_0
    move-exception v1

    .line 1308
    .local v1, "x":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method public onEndOfStream()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 971
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioAttachView;

    .line 972
    .local v0, "av":Lcom/vkcoffee/android/AudioAttachView;
    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/AudioAttachView;->setPlaying(Z)V

    goto :goto_0

    .line 974
    .end local v0    # "av":Lcom/vkcoffee/android/AudioAttachView;
    :cond_0
    invoke-direct {p0, v4}, Lcom/vkcoffee/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 975
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 976
    iget v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->errorRetries:I

    if-lez v1, :cond_1

    .line 977
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->nextTrack()V

    .line 979
    :cond_1
    iget v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->errorRetries:I

    if-gtz v1, :cond_2

    .line 980
    const/4 v1, 0x5

    iput v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->errorRetries:I

    .line 992
    :cond_2
    :goto_1
    return-void

    .line 984
    :cond_3
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/AudioPlayerService;->stopForeground(Z)V

    .line 985
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->releaseWakeLock()V

    .line 986
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    if-eqz v1, :cond_2

    .line 987
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    invoke-interface {v1, v4}, Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;->setPlaying(Z)V

    .line 988
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v4, v2, v3}, Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;->setPosition(IJ)V

    .line 989
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    invoke-interface {v1, v4}, Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;->setBuffered(I)V

    goto :goto_1
.end method

.method public onError(II)Z
    .locals 7
    .param p1, "what"    # I
    .param p2, "extra"    # I

    .prologue
    const/16 v6, -0x26

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1046
    const-string/jumbo v3, "vk"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "MediaPlayer error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    iput-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->error:Z

    .line 1048
    iput-boolean v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->initing:Z

    .line 1049
    if-eq p1, v6, :cond_1

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v3, v3, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v4, v4, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-static {v3, v4}, Lcom/vkcoffee/android/cache/AudioCache;->isCached(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1050
    invoke-static {}, Lcom/vkcoffee/android/cache/AudioCache;->deleteCurrent()V

    .line 1051
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v3, v3, Lcom/vkcoffee/android/AudioFile;->aid:I

    iget-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v4, v4, Lcom/vkcoffee/android/AudioFile;->oldOid:I

    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v5, v5, Lcom/vkcoffee/android/AudioFile;->oldAid:I

    invoke-static {v2, v3, v4, v5}, Lcom/vkcoffee/android/cache/AudioCache;->endPlayback(IIII)V

    .line 1052
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    invoke-direct {p0, v2}, Lcom/vkcoffee/android/AudioPlayerService;->playNewFile(Lcom/vkcoffee/android/AudioFile;)V

    .line 1081
    :cond_0
    :goto_0
    return v1

    .line 1055
    :cond_1
    if-ne p1, v1, :cond_3

    const/16 v3, -0x3ec

    if-ne p2, v3, :cond_3

    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget-boolean v3, v3, Lcom/vkcoffee/android/AudioFile;->retried:Z

    if-nez v3, :cond_3

    .line 1056
    const-string/jumbo v3, "vk"

    const-string/jumbo v4, "404 not found"

    invoke-static {v3, v4}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    :try_start_0
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    if-eqz v3, :cond_2

    .line 1060
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    invoke-virtual {v3}, Ljava/util/Timer;->cancel()V

    .line 1061
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    .line 1066
    :cond_2
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v3}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->release()V

    .line 1067
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1071
    :goto_1
    invoke-direct {p0, v2}, Lcom/vkcoffee/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 1072
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/AudioPlayerService;->stopForeground(Z)V

    .line 1073
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->releaseWakeLock()V

    goto :goto_0

    .line 1068
    :catch_0
    move-exception v0

    .line 1069
    .local v0, "x":Ljava/lang/Exception;
    const-string/jumbo v3, "vk"

    invoke-static {v3, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1076
    .end local v0    # "x":Ljava/lang/Exception;
    :cond_3
    if-eq p1, v6, :cond_0

    .line 1079
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p0}, Lcom/vkcoffee/android/AudioPlayerService$$Lambda$5;->lambdaFactory$(Lcom/vkcoffee/android/AudioPlayerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1080
    iget v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->errorRetries:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->errorRetries:I

    move v1, v2

    .line 1081
    goto :goto_0
.end method

.method public onPositionUpdate(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/high16 v8, 0x447a0000    # 1000.0f

    .line 889
    int-to-float v3, p1

    iget-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v4}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->getDuration()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 890
    .local v0, "p":F
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    if-eqz v3, :cond_0

    .line 891
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    mul-float v4, v0, v8

    float-to-int v4, v4

    int-to-long v6, p1

    invoke-interface {v3, v4, v6, v7}, Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;->setPosition(IJ)V

    .line 894
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    if-eqz v3, :cond_1

    .line 895
    sget-object v3, Lcom/vkcoffee/android/AudioPlayerService;->progressCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;

    .line 896
    .local v1, "pc":Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;
    iget-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v4, v4, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v5, v5, Lcom/vkcoffee/android/AudioFile;->aid:I

    mul-float v6, v0, v8

    float-to-int v6, v6

    invoke-interface {v1, v4, v5, v6, p1}, Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;->onPlayProgressChanged(IIII)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 899
    .end local v1    # "pc":Lcom/vkcoffee/android/AudioPlayerService$ProgressCallback;
    :catch_0
    move-exception v2

    .line 900
    .local v2, "x":Ljava/util/ConcurrentModificationException;
    invoke-static {v2}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    .line 902
    .end local v2    # "x":Ljava/util/ConcurrentModificationException;
    :cond_1
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 370
    const-string/jumbo v5, "action"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 372
    .local v0, "act":I
    packed-switch v0, :pswitch_data_0

    .line 432
    :goto_0
    :pswitch_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 433
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "com.vkcoffee.android.PLAYER_CONTROL"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 434
    const-string/jumbo v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 435
    const-string/jumbo v3, "com.vkcoffee.android.ALBUM_ART_AVAILABLE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 436
    const-string/jumbo v3, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 437
    const-string/jumbo v3, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 438
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3, v2}, Lcom/vkcoffee/android/AudioPlayerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 440
    const/4 v3, 0x2

    return v3

    .line 374
    .end local v2    # "filter":Landroid/content/IntentFilter;
    :pswitch_1
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    .line 375
    const-string/jumbo v3, "act_uid"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->statusUserID:I

    .line 376
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    .line 377
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    const-string/jumbo v4, "file"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    const-string/jumbo v3, "file"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/AudioFile;

    invoke-direct {p0, v3}, Lcom/vkcoffee/android/AudioPlayerService;->playNewFile(Lcom/vkcoffee/android/AudioFile;)V

    .line 379
    const-string/jumbo v3, "referer"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->referer:Ljava/lang/String;

    goto :goto_0

    .line 382
    :pswitch_2
    const-string/jumbo v5, "list_al"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 383
    const-string/jumbo v5, "list_al"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 384
    .local v1, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    const-string/jumbo v5, "force_random"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 385
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/AudioPlayerService;->setRandom(Z)V

    .line 387
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 388
    sget-object v3, Lcom/vkcoffee/android/AudioPlayerService;->listToPlay:Ljava/util/ArrayList;

    const-string/jumbo v5, "position"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v6, "force_random"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-direct {p0, v3, v5, v6}, Lcom/vkcoffee/android/AudioPlayerService;->playNewPlaylist(Ljava/util/List;IZ)V

    .line 392
    :goto_1
    const-string/jumbo v3, "show_player"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 393
    invoke-virtual {p0, v4, v4}, Lcom/vkcoffee/android/AudioPlayerService;->showPlayer(ZZ)V

    .line 407
    :cond_1
    const-string/jumbo v3, "referer"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->referer:Ljava/lang/String;

    goto/16 :goto_0

    .line 390
    :cond_2
    const-string/jumbo v3, "position"

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v5, "force_random"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-direct {p0, v1, v3, v5}, Lcom/vkcoffee/android/AudioPlayerService;->playNewPlaylist(Ljava/util/List;IZ)V

    goto :goto_1

    .line 405
    .end local v1    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    :cond_3
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "list_al is required"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 410
    :pswitch_3
    const-string/jumbo v5, "from_notify"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/AudioPlayerService;->togglePlayPause(Z)V

    goto/16 :goto_0

    :cond_4
    move v3, v4

    goto :goto_2

    .line 413
    :pswitch_4
    const-string/jumbo v5, "no_anim"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    :goto_3
    const-string/jumbo v4, "from_notify"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/vkcoffee/android/AudioPlayerService;->showPlayer(ZZ)V

    goto/16 :goto_0

    :cond_5
    move v3, v4

    goto :goto_3

    .line 416
    :pswitch_5
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->nextTrack()V

    goto/16 :goto_0

    .line 419
    :pswitch_6
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->prevTrack()V

    goto/16 :goto_0

    .line 422
    :pswitch_7
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->isLoop()Z

    move-result v5

    if-nez v5, :cond_6

    :goto_4
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/AudioPlayerService;->setLoop(Z)V

    goto/16 :goto_0

    :cond_6
    move v3, v4

    goto :goto_4

    .line 425
    :pswitch_8
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->isRandom()Z

    move-result v5

    if-nez v5, :cond_7

    :goto_5
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/AudioPlayerService;->setRandom(Z)V

    goto/16 :goto_0

    :cond_7
    move v3, v4

    goto :goto_5

    .line 428
    :pswitch_9
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->stopSelf()V

    goto/16 :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public prevTrack()V
    .locals 2

    .prologue
    .line 944
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 955
    :cond_0
    :goto_0
    return-void

    .line 947
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 950
    iget v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    .line 951
    iget v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    if-gez v0, :cond_2

    .line 952
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    .line 954
    :cond_2
    iget-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->random:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->statusUserID:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    iget v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioFile;

    :goto_1
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/AudioPlayerService;->playNewFile(Lcom/vkcoffee/android/AudioFile;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    iget v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioFile;

    goto :goto_1
.end method

.method public registerPlayerView(Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;)V
    .locals 6
    .param p1, "a"    # Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    .prologue
    .line 841
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    .line 842
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 845
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    invoke-interface {p1, v1}, Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;->displayInfo(Lcom/vkcoffee/android/AudioFile;)V

    .line 846
    iget-wide v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->nBuffered:D

    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    invoke-interface {p1, v1}, Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;->setBuffered(I)V

    .line 847
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->isPlaying()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;->setPlaying(Z)V

    .line 848
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    if-eqz v1, :cond_2

    .line 849
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v1}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->getPosition()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v2}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->getDuration()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 850
    .local v0, "pos":F
    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v2}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->getPosition()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {p1, v1, v2, v3}, Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;->setPosition(IJ)V

    .line 852
    .end local v0    # "pos":F
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 853
    iget v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {p1, v1, v2}, Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;->setNumber(II)V

    goto :goto_0
.end method

.method public registerRemoteControl()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1085
    const-string/jumbo v7, "audio"

    invoke-virtual {p0, v7}, Lcom/vkcoffee/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1087
    .local v0, "am":Landroid/media/AudioManager;
    :try_start_0
    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcom/vkcoffee/android/MediaButtonReceiver;

    invoke-direct {v7, p0, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1089
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1090
    .local v1, "mediaButtonIntent":Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    const-class v8, Lcom/vkcoffee/android/MediaButtonReceiver;

    invoke-direct {v7, p0, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1091
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1093
    .local v2, "mediaPendingIntent":Landroid/app/PendingIntent;
    iget-boolean v7, p0, Lcom/vkcoffee/android/AudioPlayerService;->haveAudioFocus:Z

    if-nez v7, :cond_0

    .line 1094
    const-string/jumbo v7, "vk"

    const-string/jumbo v8, "Request audio focus. haveAudioFocus=false"

    invoke-static {v7, v8}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1095
    iget-object v7, p0, Lcom/vkcoffee/android/AudioPlayerService;->audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v8, 0x3

    const/4 v9, 0x1

    invoke-virtual {v0, v7, v8, v9}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v3

    .line 1096
    .local v3, "res":I
    if-ne v3, v5, :cond_2

    :goto_0
    iput-boolean v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->haveAudioFocus:Z

    .line 1101
    .end local v3    # "res":I
    :cond_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-lt v5, v6, :cond_1

    .line 1102
    new-instance v5, Landroid/media/RemoteControlClient;

    invoke-direct {v5, v2}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    .line 1103
    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 1104
    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 1105
    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    const/16 v6, 0x195

    invoke-virtual {v5, v6}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 1112
    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v5

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget-object v7, v7, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    .line 1113
    invoke-virtual {v5, v6, v7}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v5

    const/16 v6, 0xd

    iget-object v7, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget-object v7, v7, Lcom/vkcoffee/android/AudioFile;->artist:Ljava/lang/String;

    .line 1114
    invoke-virtual {v5, v6, v7}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v5

    const/4 v6, 0x7

    iget-object v7, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget-object v7, v7, Lcom/vkcoffee/android/AudioFile;->title:Ljava/lang/String;

    .line 1115
    invoke-virtual {v5, v6, v7}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v5

    const/16 v6, 0x64

    const/4 v7, 0x0

    .line 1116
    invoke-virtual {v5, v6, v7}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v5

    const/16 v6, 0x9

    iget-object v7, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v7, v7, Lcom/vkcoffee/android/AudioFile;->duration:I

    int-to-long v8, v7

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    .line 1117
    invoke-virtual {v5, v6, v8, v9}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v5

    .line 1118
    invoke-virtual {v5}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    .line 1119
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x12

    if-lt v5, v6, :cond_1

    .line 1120
    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    invoke-static {p0}, Lcom/vkcoffee/android/AudioPlayerService$$Lambda$6;->lambdaFactory$(Lcom/vkcoffee/android/AudioPlayerService;)Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/RemoteControlClient;->setOnGetPlaybackPositionListener(Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;)V

    .line 1131
    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    invoke-static {p0}, Lcom/vkcoffee/android/AudioPlayerService$$Lambda$7;->lambdaFactory$(Lcom/vkcoffee/android/AudioPlayerService;)Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/RemoteControlClient;->setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V

    .line 1145
    :cond_1
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->getCoverForWidgets()V

    .line 1146
    const-string/jumbo v5, "vk"

    const-string/jumbo v6, "registered..."

    invoke-static {v5, v6}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1150
    .end local v1    # "mediaButtonIntent":Landroid/content/Intent;
    .end local v2    # "mediaPendingIntent":Landroid/app/PendingIntent;
    :goto_1
    return-void

    .restart local v1    # "mediaButtonIntent":Landroid/content/Intent;
    .restart local v2    # "mediaPendingIntent":Landroid/app/PendingIntent;
    .restart local v3    # "res":I
    :cond_2
    move v5, v6

    .line 1096
    goto/16 :goto_0

    .line 1147
    .end local v1    # "mediaButtonIntent":Landroid/content/Intent;
    .end local v2    # "mediaPendingIntent":Landroid/app/PendingIntent;
    .end local v3    # "res":I
    :catch_0
    move-exception v4

    .line 1148
    .local v4, "x":Ljava/lang/Exception;
    const-string/jumbo v5, "vk"

    invoke-static {v5, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public removeAttachView(Lcom/vkcoffee/android/AudioAttachView;)V
    .locals 1
    .param p1, "v"    # Lcom/vkcoffee/android/AudioAttachView;

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 1042
    return-void
.end method

.method public removeCurrentFile()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1177
    iget-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v4, v4, Lcom/vkcoffee/android/AudioFile;->oid:I

    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v4, v5, :cond_0

    move v2, v3

    .line 1210
    :goto_0
    return v2

    .line 1180
    :cond_0
    iget-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    move v2, v3

    .line 1181
    goto :goto_0

    .line 1184
    :cond_1
    iget-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-nez v4, :cond_3

    .line 1187
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/AudioPlayerService;->stopForeground(Z)V

    .line 1188
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->releaseWakeLock()V

    .line 1189
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->attachViews:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/AudioAttachView;

    .line 1190
    .local v0, "av":Lcom/vkcoffee/android/AudioAttachView;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/AudioAttachView;->setPlaying(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1198
    .end local v0    # "av":Lcom/vkcoffee/android/AudioAttachView;
    :catch_0
    move-exception v1

    .line 1199
    .local v1, "x":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0

    .line 1192
    .end local v1    # "x":Ljava/lang/Exception;
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    iput-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    .line 1193
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    .line 1194
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    .line 1195
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->updateWidgets()V

    .line 1197
    iget-object v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v3}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1204
    :cond_3
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1206
    iget v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    iget-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v2, v4, :cond_4

    .line 1207
    iput v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    .line 1209
    :cond_4
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    iget v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/AudioFile;

    invoke-direct {p0, v2}, Lcom/vkcoffee/android/AudioPlayerService;->playNewFile(Lcom/vkcoffee/android/AudioFile;)V

    move v2, v3

    .line 1210
    goto :goto_0
.end method

.method public removePlaylistItem(I)V
    .locals 3
    .param p1, "pos"    # I

    .prologue
    .line 1258
    iget-boolean v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->random:Z

    if-nez v0, :cond_2

    .line 1259
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1263
    :goto_0
    iget v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    if-le v0, p1, :cond_0

    .line 1264
    iget v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    if-eqz v0, :cond_1

    .line 1267
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    iget v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;->setNumber(II)V

    .line 1269
    :cond_1
    return-void

    .line 1261
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public resetCurrentFileIDs()V
    .locals 3

    .prologue
    .line 1348
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->oldAid:I

    if-eqz v0, :cond_0

    .line 1349
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->oldAid:I

    iput v1, v0, Lcom/vkcoffee/android/AudioFile;->aid:I

    .line 1350
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->oldOid:I

    iput v1, v0, Lcom/vkcoffee/android/AudioFile;->oid:I

    .line 1351
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    const/4 v2, 0x0

    iput v2, v1, Lcom/vkcoffee/android/AudioFile;->oldOid:I

    iput v2, v0, Lcom/vkcoffee/android/AudioFile;->oldAid:I

    .line 1352
    const-string/jumbo v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Reset file id to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->oid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    :cond_0
    return-void
.end method

.method public saveCurrent()V
    .locals 2

    .prologue
    .line 823
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->requestCache(Z)V

    .line 824
    return-void
.end method

.method public seek(I)V
    .locals 4
    .param p1, "p"    # I

    .prologue
    .line 864
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    if-nez v1, :cond_0

    .line 872
    :goto_0
    return-void

    .line 868
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v2}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->getDuration()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    int-to-float v3, p1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->seek(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 869
    :catch_0
    move-exception v0

    .line 870
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setBroadcast(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "targets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v7, 0x0

    .line 1415
    iget-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    if-nez v4, :cond_1

    .line 1438
    :cond_0
    :goto_0
    return-void

    .line 1418
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->getBroadcastTargets()Ljava/util/ArrayList;

    move-result-object v3

    .line 1419
    .local v3, "prev":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, "enable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1420
    .local v0, "disable":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1421
    .local v2, "id":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1422
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1425
    .end local v2    # "id":I
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1426
    .restart local v2    # "id":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1427
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1430
    .end local v2    # "id":I
    :cond_5
    const-string/jumbo v4, "vk"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Set broadcast: enable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", disable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1431
    const/4 v4, 0x0

    invoke-virtual {p0, v7, v4}, Lcom/vkcoffee/android/AudioPlayerService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "audio_broadcast"

    const-string/jumbo v6, ","

    invoke-static {v6, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1432
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 1433
    new-instance v4, Lcom/vkcoffee/android/api/audio/AudioSetBroadcast;

    iget-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    invoke-direct {v4, v5, v1}, Lcom/vkcoffee/android/api/audio/AudioSetBroadcast;-><init>(Lcom/vkcoffee/android/AudioFile;Ljava/util/ArrayList;)V

    invoke-virtual {v4}, Lcom/vkcoffee/android/api/audio/AudioSetBroadcast;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1435
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 1436
    new-instance v4, Lcom/vkcoffee/android/api/audio/AudioSetBroadcast;

    invoke-direct {v4, v7, v0}, Lcom/vkcoffee/android/api/audio/AudioSetBroadcast;-><init>(Lcom/vkcoffee/android/AudioFile;Ljava/util/ArrayList;)V

    invoke-virtual {v4}, Lcom/vkcoffee/android/api/audio/AudioSetBroadcast;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto/16 :goto_0
.end method

.method public setCurrentFile(Lcom/vkcoffee/android/AudioFile;)V
    .locals 1
    .param p1, "f"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    .line 1410
    iput-object p1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    .line 1411
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    .line 1412
    return-void
.end method

.method public setCurrentFileIDs(II)V
    .locals 3
    .param p1, "oid"    # I
    .param p2, "aid"    # I

    .prologue
    .line 1337
    const-string/jumbo v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Set current file ids "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v0, v0, Lcom/vkcoffee/android/AudioFile;->oldAid:I

    if-nez v0, :cond_0

    .line 1339
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->aid:I

    iput v1, v0, Lcom/vkcoffee/android/AudioFile;->oldAid:I

    .line 1340
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->oid:I

    iput v1, v0, Lcom/vkcoffee/android/AudioFile;->oldOid:I

    .line 1341
    const-string/jumbo v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Saved old ids "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->oldOid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v2, v2, Lcom/vkcoffee/android/AudioFile;->oldAid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iput p1, v0, Lcom/vkcoffee/android/AudioFile;->oid:I

    .line 1344
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iput p2, v0, Lcom/vkcoffee/android/AudioFile;->aid:I

    .line 1345
    return-void
.end method

.method public setLoop(Z)V
    .locals 2
    .param p1, "loop"    # Z

    .prologue
    .line 1373
    iput-boolean p1, p0, Lcom/vkcoffee/android/AudioPlayerService;->loop:Z

    .line 1374
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    if-eqz v1, :cond_0

    .line 1376
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v1, p1}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1381
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->updateWidgets()V

    .line 1382
    return-void

    .line 1377
    :catch_0
    move-exception v0

    .line 1378
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public setRandom(Z)V
    .locals 3
    .param p1, "random"    # Z

    .prologue
    .line 1389
    iput-boolean p1, p0, Lcom/vkcoffee/android/AudioPlayerService;->random:Z

    .line 1390
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1391
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1392
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1393
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 1394
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1395
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    iget v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1397
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->updateWidgets()V

    .line 1398
    return-void
.end method

.method public setVolume(F)V
    .locals 0
    .param p1, "vol"    # F

    .prologue
    .line 1160
    return-void
.end method

.method public showPlayer(ZZ)V
    .locals 3
    .param p1, "animate"    # Z
    .param p2, "fromNotification"    # Z

    .prologue
    .line 995
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    if-eqz v1, :cond_0

    .line 1015
    :goto_0
    return-void

    .line 1012
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/vkcoffee/android/AudioPlayerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1013
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x18800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1014
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AudioPlayerService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public swapPlaylistItems(II)V
    .locals 5
    .param p1, "first"    # I
    .param p2, "second"    # I

    .prologue
    .line 1240
    iget-boolean v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->random:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->randomPlaylist:Ljava/util/ArrayList;

    .line 1241
    .local v0, "pl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/AudioFile;

    .line 1242
    .local v1, "tmp":Lcom/vkcoffee/android/AudioFile;
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1243
    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1244
    iget v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    if-ne p1, v2, :cond_2

    .line 1245
    iput p2, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    .line 1246
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    if-eqz v2, :cond_0

    .line 1247
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    iget v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;->setNumber(II)V

    .line 1255
    :cond_0
    :goto_1
    return-void

    .line 1240
    .end local v0    # "pl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    .end local v1    # "tmp":Lcom/vkcoffee/android/AudioFile;
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    goto :goto_0

    .line 1249
    .restart local v0    # "pl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    .restart local v1    # "tmp":Lcom/vkcoffee/android/AudioFile;
    :cond_2
    iget v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    if-ne p2, v2, :cond_0

    .line 1250
    iput p1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    .line 1251
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    if-eqz v2, :cond_0

    .line 1252
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    iget v3, p0, Lcom/vkcoffee/android/AudioPlayerService;->playlistPosition:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentPlaylist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;->setNumber(II)V

    goto :goto_1
.end method

.method public togglePlayPause()V
    .locals 1

    .prologue
    .line 646
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/AudioPlayerService;->togglePlayPause(Z)V

    .line 647
    return-void
.end method

.method public togglePlayPause(Z)V
    .locals 6
    .param p1, "cancelNotify"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 650
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    if-nez v1, :cond_0

    .line 749
    :goto_0
    return-void

    .line 653
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget-object v1, v1, Lcom/vkcoffee/android/AudioFile;->url:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v1, v1, Lcom/vkcoffee/android/AudioFile;->oid:I

    iget-object v4, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    iget v4, v4, Lcom/vkcoffee/android/AudioFile;->aid:I

    invoke-static {v1, v4}, Lcom/vkcoffee/android/cache/AudioCache;->isCached(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 654
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/AudioPlayerService;->playNewFile(Lcom/vkcoffee/android/AudioFile;)V

    goto :goto_0

    .line 657
    :cond_1
    iget-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->initing:Z

    if-eqz v1, :cond_6

    .line 658
    sget-boolean v1, Lcom/vkcoffee/android/AudioPlayerService;->pauseAfterInit:Z

    if-nez v1, :cond_3

    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/vkcoffee/android/AudioPlayerService;->pauseAfterInit:Z

    .line 659
    sget-boolean v1, Lcom/vkcoffee/android/AudioPlayerService;->pauseAfterInit:Z

    if-nez v1, :cond_4

    move v1, v2

    :goto_2
    invoke-direct {p0, v1}, Lcom/vkcoffee/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 660
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    if-eqz v1, :cond_2

    .line 661
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    sget-boolean v4, Lcom/vkcoffee/android/AudioPlayerService;->pauseAfterInit:Z

    if-nez v4, :cond_5

    :goto_3
    invoke-interface {v1, v2}, Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;->setPlaying(Z)V

    .line 663
    :cond_2
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->updateWidgets()V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 658
    goto :goto_1

    :cond_4
    move v1, v3

    .line 659
    goto :goto_2

    :cond_5
    move v2, v3

    .line 661
    goto :goto_3

    .line 666
    :cond_6
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    if-nez v1, :cond_8

    .line 667
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    if-eqz v1, :cond_7

    .line 669
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 674
    :cond_7
    :goto_4
    iput-object v5, p0, Lcom/vkcoffee/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    .line 675
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->doStartPlayer()V

    .line 676
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->updateNotification()V

    goto :goto_0

    .line 670
    :catch_0
    move-exception v0

    .line 671
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_4

    .line 680
    .end local v0    # "x":Ljava/lang/Exception;
    :cond_8
    :try_start_1
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v1}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 681
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v1}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->pause()V

    .line 682
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v1}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->getPosition()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->needSeekTo:I

    .line 683
    if-eqz p1, :cond_d

    .line 684
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/AudioPlayerService;->stopForeground(Z)V

    .line 691
    :goto_5
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->releaseWakeLock()V

    .line 692
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v1, :cond_9

    .line 694
    :try_start_2
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 699
    :cond_9
    :goto_6
    :try_start_3
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    .line 700
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    new-instance v2, Lcom/vkcoffee/android/AudioPlayerService$ReleasePlayerRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/vkcoffee/android/AudioPlayerService$ReleasePlayerRunnable;-><init>(Lcom/vkcoffee/android/AudioPlayerService;Lcom/vkcoffee/android/AudioPlayerService$1;)V

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 701
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v1, :cond_a

    .line 703
    :try_start_4
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 708
    :cond_a
    :goto_7
    :try_start_5
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    .line 709
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    new-instance v2, Lcom/vkcoffee/android/AudioPlayerService$StopServiceRunnable;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/vkcoffee/android/AudioPlayerService$StopServiceRunnable;-><init>(Lcom/vkcoffee/android/AudioPlayerService;Lcom/vkcoffee/android/AudioPlayerService$1;)V

    const-wide/32 v4, 0x1b7740

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 711
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 742
    :cond_b
    :goto_8
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    if-eqz v1, :cond_c

    .line 743
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v2}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->isPlaying()Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;->setPlaying(Z)V

    .line 745
    :cond_c
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->updateWidgets()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 746
    :catch_1
    move-exception v0

    .line 747
    .restart local v0    # "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 689
    .end local v0    # "x":Ljava/lang/Exception;
    :cond_d
    :try_start_6
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->updateNotification()V

    goto :goto_5

    .line 695
    :catch_2
    move-exception v0

    .line 696
    .restart local v0    # "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_6

    .line 704
    .end local v0    # "x":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 705
    .restart local v0    # "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_7

    .line 713
    .end local v0    # "x":Ljava/lang/Exception;
    :cond_e
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    if-eqz v1, :cond_f

    .line 715
    :try_start_7
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 720
    :cond_f
    :goto_9
    const/4 v1, 0x0

    :try_start_8
    iput-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerStopTimer:Ljava/util/Timer;

    .line 721
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    if-eqz v1, :cond_10

    .line 723
    :try_start_9
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    .line 728
    :cond_10
    :goto_a
    const/4 v1, 0x0

    :try_start_a
    iput-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->serviceStopTimer:Ljava/util/Timer;

    .line 729
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->pausedBySystem:Z

    .line 730
    iget-object v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->player:Lcom/vkcoffee/android/media/audio/AudioPlayer;

    invoke-virtual {v1}, Lcom/vkcoffee/android/media/audio/AudioPlayer;->play()V

    .line 735
    invoke-direct {p0}, Lcom/vkcoffee/android/AudioPlayerService;->updateNotification()V

    .line 737
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/vkcoffee/android/AudioPlayerService;->broadcastPlayStateChanged(Z)V

    .line 738
    iget-boolean v1, p0, Lcom/vkcoffee/android/AudioPlayerService;->haveAudioFocus:Z

    if-nez v1, :cond_b

    .line 739
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->registerRemoteControl()V

    goto :goto_8

    .line 716
    :catch_4
    move-exception v0

    .line 717
    .restart local v0    # "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_9

    .line 724
    .end local v0    # "x":Ljava/lang/Exception;
    :catch_5
    move-exception v0

    .line 725
    .restart local v0    # "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_a
.end method

.method public unregisterPlayerView(Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;)V
    .locals 1
    .param p1, "a"    # Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    .prologue
    .line 858
    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/AudioPlayerService;->playerCallback:Lcom/vkcoffee/android/AudioPlayerService$PlayerCallback;

    .line 861
    :cond_0
    return-void
.end method

.method public unregisterRemoteControl()V
    .locals 4

    .prologue
    .line 1163
    const-string/jumbo v2, "audio"

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/AudioPlayerService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1165
    .local v0, "am":Landroid/media/AudioManager;
    :try_start_0
    new-instance v2, Landroid/content/ComponentName;

    const-class v3, Lcom/vkcoffee/android/MediaButtonReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1166
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->audioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1167
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->haveAudioFocus:Z

    .line 1168
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 1169
    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->remoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1174
    :cond_0
    :goto_0
    return-void

    .line 1171
    :catch_0
    move-exception v1

    .line 1172
    .local v1, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    invoke-static {v2, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public updateBroadcast()V
    .locals 3

    .prologue
    .line 1441
    invoke-virtual {p0}, Lcom/vkcoffee/android/AudioPlayerService;->getBroadcastTargets()Ljava/util/ArrayList;

    move-result-object v0

    .line 1442
    .local v0, "t":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1446
    :goto_0
    return-void

    .line 1445
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/api/audio/AudioSetBroadcast;

    iget-object v2, p0, Lcom/vkcoffee/android/AudioPlayerService;->currentFile:Lcom/vkcoffee/android/AudioFile;

    invoke-direct {v1, v2, v0}, Lcom/vkcoffee/android/api/audio/AudioSetBroadcast;-><init>(Lcom/vkcoffee/android/AudioFile;Ljava/util/ArrayList;)V

    invoke-virtual {v1}, Lcom/vkcoffee/android/api/audio/AudioSetBroadcast;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0
.end method
