.class public Lcom/vkcoffee/android/LongPollService;
.super Landroid/app/Service;
.source "LongPollService.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final ACTION_CHAT_CHANGED:Ljava/lang/String; = "com.vkcoffee.android.CHAT_CHANGED"

.field public static final ACTION_COUNTERS_UPDATED:Ljava/lang/String; = "com.vkcoffee.android.COUNTERS_UPDATED"

.field public static final ACTION_DIALOG_CHANGED:Ljava/lang/String; = "com.vkcoffee.android.DIALOG_CHANGED"

.field public static final ACTION_MESSAGE_DELETED:Ljava/lang/String; = "com.vkcoffee.android.MESSAGE_DELETED"

.field public static final ACTION_MESSAGE_RSTATE_CHANGED:Ljava/lang/String; = "com.vkcoffee.android.MESSAGE_RSTATE_CHANGED"

.field public static final ACTION_MUTE_CHANGED:Ljava/lang/String; = "com.vkcoffee.android.MUTE_CHANGED"

.field public static final ACTION_NEW_MESSAGE:Ljava/lang/String; = "com.vkcoffee.android.NEW_MESSAGE"

.field public static final ACTION_REFRESH_DIALOGS_LIST:Ljava/lang/String; = "com.vkcoffee.android.REFRESH_DIALOGS"

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "com.vkcoffee.android.STATE_CHANGED"

.field public static final ACTION_TYPING:Ljava/lang/String; = "com.vkcoffee.android.TYPING"

.field public static final ACTION_USER_PRESENCE:Ljava/lang/String; = "com.vkcoffee.android.USER_PRESENCE"

.field public static final ACTION_VOIP_HANGUP:Ljava/lang/String; = "com.vkcoffee.android.VOIP_HANGUP"

.field public static final DEBUG:Z

.field private static final EVENT_CHAT_CHANGED:I = 0x33

.field private static final EVENT_CHAT_TYPING:I = 0x3e

.field private static final EVENT_FRIEND_OFFLINE:I = 0x9

.field private static final EVENT_FRIEND_ONLINE:I = 0x8

.field private static final EVENT_MSG_ADD:I = 0x4

.field private static final EVENT_MSG_ADD_EXTENDED:I = 0x65

.field private static final EVENT_MSG_DELETE:I = 0x0

.field private static final EVENT_MSG_FLAG_ADD:I = 0x2

.field private static final EVENT_MSG_FLAG_CLEAR:I = 0x3

.field private static final EVENT_MSG_FLAG_REPLACE:I = 0x1

.field private static final EVENT_MSG_IN_READ_UPTO:I = 0x6

.field private static final EVENT_MSG_OUT_READ_UPTO:I = 0x7

.field private static final EVENT_NOTIFY_SETTINGS:I = 0x72

.field private static final EVENT_UPDATE_COUNTER:I = 0x50

.field private static final EVENT_USER_TYPING:I = 0x3d

.field private static final EVENT_VOIP_HANGUP:I = 0x70

.field private static final EVENT_VOIP_INCOMING:I = 0x6e

.field private static final EVENT_VOIP_REPLIED:I = 0x6f

.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "message"

.field public static final EXTRA_MSG_ID:Ljava/lang/String; = "msg_id"

.field public static final EXTRA_PEER_ID:Ljava/lang/String; = "peer_id"

.field public static final EXTRA_READ_STATE:Ljava/lang/String; = "read_state"

.field public static final INTRO_IMPORT_FRIENDS:I = 0x1

.field public static final INTRO_SUGGEST_GROUPS:I = 0x2

.field public static final MOBILE_ONLINE_TYPES:[I

.field public static final MSG_CHAT:I = 0x10

.field public static final MSG_DELETED:I = 0x80

.field public static final MSG_FIXED:I = 0x100

.field public static final MSG_FRIENDS:I = 0x20

.field public static final MSG_IMPORTANT:I = 0x8

.field public static final MSG_MEDIA:I = 0x200

.field public static final MSG_OUTBOX:I = 0x2

.field public static final MSG_REPLIED:I = 0x4

.field public static final MSG_SPAM:I = 0x40

.field public static final MSG_UNREAD:I = 0x1

.field public static final NOTIFY_ID_MESSAGE:I = 0xa

.field public static final ONLINE_TYPE_ANDROID:I = 0x4

.field public static final ONLINE_TYPE_DEFAULT:I = 0x7

.field public static final ONLINE_TYPE_IPAD:I = 0x3

.field public static final ONLINE_TYPE_IPHONE:I = 0x2

.field public static final ONLINE_TYPE_MOBILE:I = 0x1

.field public static final ONLINE_TYPE_WINDOWS8:I = 0x6

.field public static final ONLINE_TYPE_WINPHONE:I = 0x5

.field public static final PERMISSION:Ljava/lang/String; = "com.vkcoffee.android.permission.ACCESS_DATA"

.field public static final STATE_CONNECTED:I = 0x3

.field public static final STATE_CONNECTING:I = 0x2

.field public static final STATE_UPDATING:I = 0x1

.field public static final STATE_WAITING:I = 0x0

.field private static final VERSION:Ljava/lang/String; = "1"

.field public static addMessage:Ljava/util/concurrent/Semaphore;

.field public static addOwnMessage:Ljava/util/concurrent/Semaphore;

.field private static broadcastStateTimer:Ljava/util/Timer;

.field public static connected:Z

.field private static httpClient:Lcom/squareup/okhttp/OkHttpClient;

.field public static lastMessageProfile:Lcom/vkcoffee/android/UserProfile;

.field public static longPollActive:Z

.field public static longPollRunning:Z

.field public static needReloadDialogs:Z

.field static notification1:Landroid/app/Notification;

.field private static notificationSoundID:I

.field private static notificationSoundPool:Landroid/media/SoundPool;

.field static numAppRequests:I

.field static numFriendRequests:I

.field static numGroupInvitations:I

.field static numNewMessages:I

.field static numNotifications:I

.field static numPhotosMarks:I

.field static numVideosMarks:I

.field public static pendingReceivedMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/Message;",
            ">;"
        }
    .end annotation
.end field

.field public static prevNumNewMessages:I

.field public static realLastProfile:Lcom/vkcoffee/android/UserProfile;

.field public static sendingMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/Message;",
            ">;"
        }
    .end annotation
.end field

.field public static updating:Z


# instance fields
.field private currentIsHttps:Z

.field private key:Ljava/lang/String;

.field lpThread:Ljava/lang/Thread;

.field private needResendOnline:Z

.field private needStop:Z

.field private newSystem:Z

.field onlineTimer:Ljava/util/Timer;

.field private server:Ljava/lang/String;

.field private started:Z

.field stopDelayTimer:Ljava/util/Timer;

.field private ts:I

.field private typingCancelThread:Lcom/vkcoffee/android/background/WorkerThread;

.field private typingLock:Ljava/util/concurrent/Semaphore;

.field private typings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "__dbg_longpoll"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/vkcoffee/android/LongPollService;->DEBUG:Z

    .line 128
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/vkcoffee/android/LongPollService;->MOBILE_ONLINE_TYPES:[I

    .line 158
    sput-boolean v2, Lcom/vkcoffee/android/LongPollService;->longPollRunning:Z

    .line 159
    sput-boolean v2, Lcom/vkcoffee/android/LongPollService;->needReloadDialogs:Z

    .line 160
    sput-boolean v2, Lcom/vkcoffee/android/LongPollService;->longPollActive:Z

    .line 161
    sput-boolean v2, Lcom/vkcoffee/android/LongPollService;->updating:Z

    .line 162
    sput-boolean v2, Lcom/vkcoffee/android/LongPollService;->connected:Z

    .line 165
    sput v2, Lcom/vkcoffee/android/LongPollService;->numNewMessages:I

    .line 166
    sput v2, Lcom/vkcoffee/android/LongPollService;->prevNumNewMessages:I

    .line 167
    sput v2, Lcom/vkcoffee/android/LongPollService;->numFriendRequests:I

    .line 168
    sput v2, Lcom/vkcoffee/android/LongPollService;->numPhotosMarks:I

    .line 169
    sput v2, Lcom/vkcoffee/android/LongPollService;->numVideosMarks:I

    .line 170
    sput v2, Lcom/vkcoffee/android/LongPollService;->numAppRequests:I

    .line 171
    sput v2, Lcom/vkcoffee/android/LongPollService;->numNotifications:I

    .line 172
    sput v2, Lcom/vkcoffee/android/LongPollService;->numGroupInvitations:I

    .line 173
    sput-object v4, Lcom/vkcoffee/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 179
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3, v3}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/vkcoffee/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v3, v3}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, Lcom/vkcoffee/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    .line 182
    sput-object v4, Lcom/vkcoffee/android/LongPollService;->lastMessageProfile:Lcom/vkcoffee/android/UserProfile;

    sput-object v4, Lcom/vkcoffee/android/LongPollService;->realLastProfile:Lcom/vkcoffee/android/UserProfile;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/LongPollService;->sendingMessages:Ljava/util/ArrayList;

    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    return-void

    .line 128
    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 85
    iput-boolean v0, p0, Lcom/vkcoffee/android/LongPollService;->started:Z

    .line 86
    iput-boolean v0, p0, Lcom/vkcoffee/android/LongPollService;->needResendOnline:Z

    .line 87
    iput-boolean v0, p0, Lcom/vkcoffee/android/LongPollService;->newSystem:Z

    .line 176
    iput-boolean v0, p0, Lcom/vkcoffee/android/LongPollService;->needStop:Z

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/LongPollService;->typings:Ljava/util/HashMap;

    .line 178
    new-instance v0, Lcom/vkcoffee/android/background/WorkerThread;

    const-string/jumbo v1, "Typing"

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/background/WorkerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/vkcoffee/android/LongPollService;->typingCancelThread:Lcom/vkcoffee/android/background/WorkerThread;

    .line 180
    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v2, v2}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, Lcom/vkcoffee/android/LongPollService;->typingLock:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/LongPollService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/LongPollService;
    .param p1, "x1"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/vkcoffee/android/LongPollService;->ts:I

    return p1
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/LongPollService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/LongPollService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/vkcoffee/android/LongPollService;->key:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/vkcoffee/android/LongPollService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/LongPollService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/vkcoffee/android/LongPollService;->server:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/vkcoffee/android/LongPollService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/LongPollService;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/vkcoffee/android/LongPollService;->currentIsHttps:Z

    return p1
.end method

.method static synthetic access$402(Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0
    .param p0, "x0"    # Ljava/util/Timer;

    .prologue
    .line 78
    sput-object p0, Lcom/vkcoffee/android/LongPollService;->broadcastStateTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/LongPollService;)Ljava/util/concurrent/Semaphore;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/LongPollService;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vkcoffee/android/LongPollService;->typingLock:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/LongPollService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/LongPollService;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vkcoffee/android/LongPollService;->typings:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700()Landroid/media/SoundPool;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/vkcoffee/android/LongPollService;->notificationSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/LongPollService;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/LongPollService;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/vkcoffee/android/LongPollService;->sendOnline()V

    return-void
.end method

.method static synthetic access$902(Lcom/vkcoffee/android/LongPollService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/LongPollService;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/vkcoffee/android/LongPollService;->needResendOnline:Z

    return p1
.end method

.method public static declared-synchronized broadcastStateChanged()V
    .locals 6

    .prologue
    .line 664
    const-class v2, Lcom/vkcoffee/android/LongPollService;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/vkcoffee/android/LongPollService;->broadcastStateTimer:Ljava/util/Timer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 666
    :try_start_1
    sget-object v1, Lcom/vkcoffee/android/LongPollService;->broadcastStateTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 670
    .local v0, "x":Ljava/lang/Exception;
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    sput-object v1, Lcom/vkcoffee/android/LongPollService;->broadcastStateTimer:Ljava/util/Timer;

    .line 672
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lcom/vkcoffee/android/LongPollService;->broadcastStateTimer:Ljava/util/Timer;

    .line 673
    sget-object v1, Lcom/vkcoffee/android/LongPollService;->broadcastStateTimer:Ljava/util/Timer;

    new-instance v3, Lcom/vkcoffee/android/LongPollService$5;

    invoke-direct {v3}, Lcom/vkcoffee/android/LongPollService$5;-><init>()V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 679
    monitor-exit v2

    return-void

    .line 667
    .end local v0    # "x":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 668
    .restart local v0    # "x":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 664
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method static clampCounter(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static createActionMessageRSteteChangedIntent(IIZ)Landroid/content/Intent;
    .locals 3
    .param p0, "peerID"    # I
    .param p1, "msgID"    # I
    .param p2, "in"    # Z

    .prologue
    const/4 v2, 0x1

    .line 1311
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.MESSAGE_RSTATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "msg_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "read_state"

    .line 1312
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "peer_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "in"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "le"

    .line 1313
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static createNotification(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;
    .locals 15
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "expandedTitle"    # Ljava/lang/String;
    .param p3, "summary"    # Ljava/lang/String;
    .param p4, "photoUrl"    # Ljava/lang/String;
    .param p5, "contentIntent"    # Landroid/app/PendingIntent;
    .param p6, "tickerText"    # Ljava/lang/String;
    .param p7, "peerID"    # I

    .prologue
    .line 1633
    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0x32

    if-le v11, v12, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v12, 0x0

    const/16 v13, 0x32

    move-object/from16 v0, p6

    invoke-virtual {v0, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1635
    .local v8, "ticker":Ljava/lang/String;
    :goto_0
    if-eqz p4, :cond_4

    .line 1636
    sget-object v11, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v11}, Lme/grishka/appkit/imageloader/ImageCache;->getInstance(Landroid/content/Context;)Lme/grishka/appkit/imageloader/ImageCache;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Lme/grishka/appkit/imageloader/ImageCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1641
    .local v5, "photo":Landroid/graphics/Bitmap;
    :goto_1
    new-instance v11, Landroid/support/v4/app/RemoteInput$Builder;

    const-string/jumbo v12, "voice_reply"

    invoke-direct {v11, v12}, Landroid/support/v4/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    sget-object v12, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v13, 0x7f080434

    .line 1642
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/support/v4/app/RemoteInput$Builder;

    move-result-object v11

    .line 1643
    invoke-virtual {v11}, Landroid/support/v4/app/RemoteInput$Builder;->build()Landroid/support/v4/app/RemoteInput;

    move-result-object v6

    .line 1645
    .local v6, "remoteInput":Landroid/support/v4/app/RemoteInput;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v12, Ljava/util/Random;

    invoke-direct {v12}, Ljava/util/Random;-><init>()V

    invoke-virtual {v12}, Ljava/util/Random;->nextInt()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/vkcoffee/android/api/VKAPIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1646
    .local v7, "replyHash":Ljava/lang/String;
    sget-object v11, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    const-string/jumbo v12, "msg_reply_hash"

    invoke-interface {v11, v12, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1648
    new-instance v10, Landroid/content/Intent;

    sget-object v11, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-class v12, Lcom/vkcoffee/android/LinkRedirActivity;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1649
    .local v10, "voiceReplyIntent":Landroid/content/Intent;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "vkontakte://reply/?peer="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p7

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "&hash="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1650
    const/high16 v11, 0x10000000

    invoke-virtual {v10, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1652
    sget-object v11, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v12, 0x0

    const/high16 v13, 0x8000000

    invoke-static {v11, v12, v10, v13}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 1654
    .local v9, "voiceReply":Landroid/app/PendingIntent;
    new-instance v11, Landroid/support/v4/app/NotificationCompat$Action$Builder;

    const v12, 0x7f020242

    sget-object v13, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    .line 1656
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080434

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13, v9}, Landroid/support/v4/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1657
    invoke-virtual {v11, v6}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroid/support/v4/app/RemoteInput;)Landroid/support/v4/app/NotificationCompat$Action$Builder;

    move-result-object v11

    .line 1658
    invoke-virtual {v11}, Landroid/support/v4/app/NotificationCompat$Action$Builder;->build()Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v1

    .line 1659
    .local v1, "action":Landroid/support/v4/app/NotificationCompat$Action;
    new-instance v11, Landroid/support/v4/app/NotificationCompat$WearableExtender;

    invoke-direct {v11}, Landroid/support/v4/app/NotificationCompat$WearableExtender;-><init>()V

    invoke-virtual {v11, v1}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addAction(Landroid/support/v4/app/NotificationCompat$Action;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    move-result-object v3

    .line 1661
    .local v3, "extender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    const v11, 0x77359400

    move/from16 v0, p7

    if-le v0, v11, :cond_0

    .line 1662
    new-instance v11, Landroid/app/Notification$Builder;

    sget-object v12, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v11

    invoke-virtual {v11}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/support/v4/app/NotificationCompat$WearableExtender;->addPage(Landroid/app/Notification;)Landroid/support/v4/app/NotificationCompat$WearableExtender;

    .line 1665
    :cond_0
    new-instance v11, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v12, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-direct {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    const v12, 0x7f020213

    .line 1666
    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 1667
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 1668
    invoke-virtual {v11, p0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 1669
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumNewMessages()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setNumber(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    const/high16 v12, 0x42800000    # 64.0f

    .line 1670
    invoke-static {v12}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v12

    const/high16 v13, 0x42800000    # 64.0f

    invoke-static {v13}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v13

    const/4 v14, 0x1

    invoke-static {v5, v12, v13, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 1671
    move-object/from16 v0, p5

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 1672
    invoke-virtual {v11, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v11

    .line 1673
    invoke-virtual {v11, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->extend(Landroid/support/v4/app/NotificationCompat$Extender;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 1674
    .local v2, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    const-string/jumbo v11, "msg"

    invoke-virtual {v2, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 1676
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x10

    if-lt v11, v12, :cond_1

    .line 1685
    new-instance v11, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v11, v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 1686
    invoke-virtual {v11, p0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v11

    .line 1687
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v11

    .line 1688
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    move-result-object v11

    .line 1689
    invoke-virtual {v11}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->build()Landroid/app/Notification;

    .line 1692
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    .line 1693
    .local v4, "n":Landroid/app/Notification;
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-lt v11, v12, :cond_2

    .line 1694
    sget-object v11, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0f0012

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    iput v11, v4, Landroid/app/Notification;->color:I

    .line 1696
    :cond_2
    return-object v4

    .end local v1    # "action":Landroid/support/v4/app/NotificationCompat$Action;
    .end local v2    # "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    .end local v3    # "extender":Landroid/support/v4/app/NotificationCompat$WearableExtender;
    .end local v4    # "n":Landroid/app/Notification;
    .end local v5    # "photo":Landroid/graphics/Bitmap;
    .end local v6    # "remoteInput":Landroid/support/v4/app/RemoteInput;
    .end local v7    # "replyHash":Ljava/lang/String;
    .end local v8    # "ticker":Ljava/lang/String;
    .end local v9    # "voiceReply":Landroid/app/PendingIntent;
    .end local v10    # "voiceReplyIntent":Landroid/content/Intent;
    :cond_3
    move-object/from16 v8, p6

    .line 1633
    goto/16 :goto_0

    .line 1638
    .restart local v8    # "ticker":Ljava/lang/String;
    :cond_4
    sget-object v11, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0202f2

    invoke-static {v11, v12}, Lcom/vkcoffee/android/Global;->getResBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v5    # "photo":Landroid/graphics/Bitmap;
    goto/16 :goto_1
.end method

.method public static doBroadcastStateChanged()V
    .locals 5

    .prologue
    .line 682
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getState()I

    move-result v1

    .line 683
    .local v1, "state":I
    sget-boolean v2, Lcom/vkcoffee/android/LongPollService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 684
    const-string/jumbo v2, "vk_longpoll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "STATE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 687
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 688
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 689
    return-void
.end method

.method public static getNumAppRequests()I
    .locals 1

    .prologue
    .line 237
    sget v0, Lcom/vkcoffee/android/LongPollService;->numAppRequests:I

    return v0
.end method

.method public static getNumFriendRequests()I
    .locals 1

    .prologue
    .line 258
    sget v0, Lcom/vkcoffee/android/LongPollService;->numFriendRequests:I

    return v0
.end method

.method public static getNumGroupInvitations()I
    .locals 1

    .prologue
    .line 241
    sget v0, Lcom/vkcoffee/android/LongPollService;->numGroupInvitations:I

    return v0
.end method

.method public static getNumNewMessages()I
    .locals 1

    .prologue
    .line 225
    sget v0, Lcom/vkcoffee/android/LongPollService;->numNewMessages:I

    return v0
.end method

.method public static getNumNotifications()I
    .locals 1

    .prologue
    .line 249
    sget v0, Lcom/vkcoffee/android/LongPollService;->numNotifications:I

    return v0
.end method

.method public static getNumPhotosMarks()I
    .locals 1

    .prologue
    .line 229
    sget v0, Lcom/vkcoffee/android/LongPollService;->numPhotosMarks:I

    return v0
.end method

.method public static getNumVideosMarks()I
    .locals 1

    .prologue
    .line 233
    sget v0, Lcom/vkcoffee/android/LongPollService;->numVideosMarks:I

    return v0
.end method

.method public static getState()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 194
    sget-object v1, Lcom/vkcoffee/android/Global;->longPoll:Lcom/vkcoffee/android/LongPollService;

    if-nez v1, :cond_1

    .line 204
    :cond_0
    :goto_0
    return v0

    .line 197
    :cond_1
    sget-boolean v1, Lcom/vkcoffee/android/LongPollService;->connected:Z

    if-eqz v1, :cond_2

    .line 198
    const/4 v0, 0x3

    goto :goto_0

    .line 200
    :cond_2
    sget-boolean v1, Lcom/vkcoffee/android/LongPollService;->updating:Z

    if-eqz v1, :cond_3

    .line 201
    const/4 v0, 0x1

    goto :goto_0

    .line 204
    :cond_3
    invoke-static {}, Lcom/vkcoffee/android/NetworkStateReceiver;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method private static getTrackEventsString()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v9, 0x1

    .line 1794
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1795
    .local v2, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-static {v2}, Lcom/vkcoffee/android/data/Analytics;->getEvents(Ljava/util/ArrayList;)V

    .line 1796
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1798
    .local v0, "adEvents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    :try_start_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1799
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/json/JSONObject;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1800
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 1801
    .local v4, "o":Lorg/json/JSONObject;
    const-string/jumbo v7, "e"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "ads/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1802
    const-string/jumbo v7, "e"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v1, v7, v8

    .line 1803
    .local v1, "e":Ljava/lang/String;
    const-string/jumbo v7, "event_type"

    invoke-virtual {v4, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1804
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 1805
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1808
    .end local v1    # "e":Ljava/lang/String;
    .end local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/json/JSONObject;>;"
    .end local v4    # "o":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 1809
    .local v6, "x":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    .line 1811
    .end local v6    # "x":Ljava/lang/Exception;
    :cond_1
    const-string/jumbo v5, ""

    .line 1812
    .local v5, "res":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_2

    .line 1813
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "API.stats.trackEvents({events:\"[%s]\"});"

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const-string/jumbo v11, ","

    invoke-static {v11, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "\""

    const-string/jumbo v13, "\\\""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1815
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "API.adsint.registerAdEvents({events: \"["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, ","

    invoke-static {v9, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "\""

    const-string/jumbo v11, "\\\""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v9, "]\"});"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_1
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1816
    return-object v5

    .line 1815
    :cond_3
    const-string/jumbo v7, ""

    goto :goto_1
.end method

.method private getURL(Ljava/lang/String;)[B
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 989
    sget-object v2, Lcom/vkcoffee/android/LongPollService;->httpClient:Lcom/squareup/okhttp/OkHttpClient;

    if-nez v2, :cond_0

    .line 990
    new-instance v2, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v2}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    sput-object v2, Lcom/vkcoffee/android/LongPollService;->httpClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 991
    sget-object v2, Lcom/vkcoffee/android/LongPollService;->httpClient:Lcom/squareup/okhttp/OkHttpClient;

    const-wide/16 v4, 0xf

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 992
    sget-object v2, Lcom/vkcoffee/android/LongPollService;->httpClient:Lcom/squareup/okhttp/OkHttpClient;

    const-wide/16 v4, 0x28

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v4, v5, v3}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 993
    sget-object v2, Lcom/vkcoffee/android/LongPollService;->httpClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lcom/squareup/okhttp/OkHttpClient;->networkInterceptors()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/LongPollService$8;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/LongPollService$8;-><init>(Lcom/vkcoffee/android/LongPollService;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1005
    :cond_0
    new-instance v2, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct {v2}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    .line 1006
    invoke-virtual {v2, p1}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v2

    const-string/jumbo v3, "User-Agent"

    sget-object v4, Lcom/vkcoffee/android/api/APIController;->USER_AGENT:Ljava/lang/String;

    .line 1007
    invoke-virtual {v2, v3, v4}, Lcom/squareup/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v2

    .line 1008
    invoke-virtual {v2}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v0

    .line 1010
    .local v0, "req":Lcom/squareup/okhttp/Request;
    :try_start_0
    sget-object v2, Lcom/vkcoffee/android/LongPollService;->httpClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-virtual {v2, v0}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lcom/squareup/okhttp/ResponseBody;->bytes()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1014
    :goto_0
    return-object v2

    .line 1011
    :catch_0
    move-exception v1

    .line 1012
    .local v1, "x":Ljava/lang/Throwable;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/vkcoffee/android/utils/L;->e([Ljava/lang/Object;)V

    .line 1014
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static logOut(ZZ)V
    .locals 12
    .param p0, "full"    # Z
    .param p1, "force"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-static {}, Lcom/vkcoffee/android/MAC;->clearCurrentUID()V

    .line 1855
    const-string/jumbo v5, "vk"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "========== LOGOUT! "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    sget-object v5, Lcom/vkcoffee/android/Global;->longPoll:Lcom/vkcoffee/android/LongPollService;

    if-eqz v5, :cond_0

    .line 1857
    sget-object v5, Lcom/vkcoffee/android/Global;->longPoll:Lcom/vkcoffee/android/LongPollService;

    invoke-direct {v5}, Lcom/vkcoffee/android/LongPollService;->sendOffline()V

    .line 1858
    sget-object v5, Lcom/vkcoffee/android/Global;->longPoll:Lcom/vkcoffee/android/LongPollService;

    invoke-virtual {v5, v9}, Lcom/vkcoffee/android/LongPollService;->setNumUnread(I)V

    .line 1859
    sget-object v5, Lcom/vkcoffee/android/Global;->longPoll:Lcom/vkcoffee/android/LongPollService;

    invoke-direct {v5}, Lcom/vkcoffee/android/LongPollService;->stop()V

    .line 1862
    :cond_0
    if-nez p1, :cond_3

    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    if-eqz v5, :cond_1

    sget-object v5, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    if-nez v5, :cond_3

    .line 1863
    :cond_1
    const-string/jumbo v5, "vk"

    const-string/jumbo v6, "Already logged out"

    invoke-static {v5, v6}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1970
    :cond_2
    :goto_0
    return-void

    .line 1868
    :cond_3
    :try_start_0
    sget-object v5, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1872
    :goto_1
    sget-object v5, Lcom/vkcoffee/android/data/Messages;->updateLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1874
    if-eqz p0, :cond_4

    .line 1875
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->clear()V

    .line 1878
    :cond_4
    new-instance v5, Lcom/vkcoffee/android/api/account/C2DMUnregisterDevice;

    invoke-direct {v5}, Lcom/vkcoffee/android/api/account/C2DMUnregisterDevice;-><init>()V

    .line 1879
    invoke-virtual {v5, v11}, Lcom/vkcoffee/android/api/account/C2DMUnregisterDevice;->setBackground(Z)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v5

    const-string/jumbo v6, "access_token"

    sget-object v7, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    .line 1880
    invoke-virtual {v5, v6, v7}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v3

    .line 1881
    .local v3, "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    const-string/jumbo v5, "sig"

    invoke-virtual {v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->getSig()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1882
    invoke-virtual {v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->persistWithToken()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1883
    invoke-virtual {v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 1887
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5, v10, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1889
    .local v2, "prefs":Landroid/content/SharedPreferences;
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    sget-object v7, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-class v8, Lcom/vkcoffee/android/AudioPlayerService;

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 1895
    if-nez p0, :cond_6

    .line 1896
    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    if-lez v5, :cond_5

    .line 1897
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "reauth_uid"

    sget v7, Lcom/vkcoffee/android/Global;->uid:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1899
    :cond_5
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "uid"

    .line 1900
    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "sid"

    .line 1901
    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string/jumbo v6, "secret"

    .line 1902
    invoke-interface {v5, v6}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 1903
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1904
    sput-object v10, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    .line 1905
    sput v9, Lcom/vkcoffee/android/Global;->uid:I

    .line 1909
    sput-object v10, Lcom/vkcoffee/android/Global;->longPoll:Lcom/vkcoffee/android/LongPollService;

    goto :goto_0

    .line 1869
    .end local v2    # "prefs":Landroid/content/SharedPreferences;
    .end local v3    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    :catch_0
    move-exception v4

    .line 1870
    .local v4, "x":Ljava/lang/Exception;
    invoke-static {v4}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_1

    .line 1912
    .end local v4    # "x":Ljava/lang/Exception;
    .restart local v2    # "prefs":Landroid/content/SharedPreferences;
    .restart local v3    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    :cond_6
    sput-object v10, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    .line 1913
    sput v9, Lcom/vkcoffee/android/Global;->uid:I

    .line 1917
    sput-object v10, Lcom/vkcoffee/android/Global;->longPoll:Lcom/vkcoffee/android/LongPollService;

    .line 1919
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1920
    .local v1, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v1}, Landroid/app/NotificationManager;->cancelAll()V

    .line 1922
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1923
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5, v10, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1924
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v6, "drafts"

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1925
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v6, "news"

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1926
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v6, "longpoll"

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1927
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v6, "stickers"

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1928
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v6, "pending_installs"

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1929
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v6, "cookieStore"

    invoke-virtual {v5, v6, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1937
    invoke-static {}, Lcom/vkcoffee/android/cache/NewsfeedCache;->clear()V

    .line 1938
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    sget-object v6, Lcom/vkcoffee/android/CustomDB;->POSTS_DB:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1939
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    sget-object v6, Lcom/vkcoffee/android/CustomDB;->FRIENDS_DB:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1940
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    sget-object v6, Lcom/vkcoffee/android/CustomDB;->DIALOGS_DB:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1941
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    sget-object v6, Lcom/vkcoffee/android/CustomDB;->CHATS_DB:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1942
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    sget-object v6, Lcom/vkcoffee/android/CustomDB;->GROUPS_DB:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 1943
    invoke-static {}, Lcom/vkcoffee/android/data/Friends;->reset()V

    .line 1944
    invoke-static {}, Lcom/vkcoffee/android/data/Messages;->reset()V

    .line 1945
    invoke-static {}, Lcom/vkcoffee/android/data/Groups;->reset()V

    .line 1946
    invoke-static {v11}, Lcom/vkcoffee/android/data/Analytics;->clear(Z)V

    .line 1947
    sput-boolean v9, Lcom/vkcoffee/android/Global;->inited:Z

    .line 1948
    sput v9, Lcom/vkcoffee/android/LongPollService;->numNewMessages:I

    .line 1949
    sput v9, Lcom/vkcoffee/android/LongPollService;->numFriendRequests:I

    .line 1950
    sput v9, Lcom/vkcoffee/android/LongPollService;->numGroupInvitations:I

    .line 1951
    sget-object v5, Lcom/vkcoffee/android/data/Posts;->feed:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1953
    const-string/jumbo v5, "0"

    sput-object v5, Lcom/vkcoffee/android/data/Posts;->feedFrom:Ljava/lang/String;

    .line 1954
    sput v9, Lcom/vkcoffee/android/data/Posts;->feedItem:I

    .line 1955
    sput v9, Lcom/vkcoffee/android/data/Posts;->feedOffset:I

    .line 1956
    sput v9, Lcom/vkcoffee/android/data/Posts;->feedItemOffset:I

    .line 1957
    sget-object v5, Lcom/vkcoffee/android/data/Posts;->preloadedFeed:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 1958
    invoke-static {}, Lcom/vkcoffee/android/stickers/Stickers;->get()Lcom/vkcoffee/android/stickers/Stickers;

    move-result-object v5

    invoke-virtual {v5}, Lcom/vkcoffee/android/stickers/Stickers;->clearAll()V

    .line 1960
    new-instance v5, Ljava/io/File;

    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "replies"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1962
    if-eqz p0, :cond_2

    .line 1964
    :try_start_1
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v5}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 1965
    .local v0, "am":Landroid/accounts/AccountManager;
    const-string/jumbo v5, "com.vkcoffee.account"

    invoke-virtual {v0, v5}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 1966
    .end local v0    # "am":Landroid/accounts/AccountManager;
    :catch_1
    move-exception v4

    .line 1967
    .restart local v4    # "x":Ljava/lang/Exception;
    const-string/jumbo v5, "vk"

    invoke-static {v5, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static notifyCountersChanged()V
    .locals 3

    .prologue
    .line 852
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.COUNTERS_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 853
    return-void
.end method

.method public static onNotificationOpened()V
    .locals 1

    .prologue
    .line 1835
    const/4 v0, 0x0

    sput-object v0, Lcom/vkcoffee/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 1836
    return-void
.end method

.method public static onReauthError()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1973
    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    if-eqz v3, :cond_0

    sget-object v3, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 1988
    .local v0, "act":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 1976
    .end local v0    # "act":Landroid/app/Activity;
    :cond_1
    invoke-static {v4, v4}, Lcom/vkcoffee/android/LongPollService;->logOut(ZZ)V

    .line 1978
    :try_start_0
    invoke-static {}, Lcom/vkcoffee/android/AppStateTracker;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1979
    .restart local v0    # "act":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1982
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/vkcoffee/android/MainActivity;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1983
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x4000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1984
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1985
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 1986
    .local v2, "x":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method static parseCountersInfo(Lorg/json/JSONObject;)V
    .locals 2
    .param p0, "source"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 345
    sput v1, Lcom/vkcoffee/android/LongPollService;->numFriendRequests:I

    .line 346
    sput v1, Lcom/vkcoffee/android/LongPollService;->numNotifications:I

    .line 347
    sput v1, Lcom/vkcoffee/android/LongPollService;->numGroupInvitations:I

    .line 348
    sput v1, Lcom/vkcoffee/android/LongPollService;->numNewMessages:I

    .line 349
    sput v1, Lcom/vkcoffee/android/LongPollService;->numAppRequests:I

    .line 350
    sput v1, Lcom/vkcoffee/android/LongPollService;->numPhotosMarks:I

    .line 351
    sput v1, Lcom/vkcoffee/android/LongPollService;->numVideosMarks:I

    .line 352
    if-eqz p0, :cond_0

    .line 353
    const-string/jumbo v0, "friends"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/LongPollService;->numFriendRequests:I

    .line 354
    const-string/jumbo v0, "notifications"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/LongPollService;->numNotifications:I

    .line 355
    const-string/jumbo v0, "groups"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/LongPollService;->numGroupInvitations:I

    .line 356
    const-string/jumbo v0, "messages"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/LongPollService;->numNewMessages:I

    .line 357
    const-string/jumbo v0, "photos"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/LongPollService;->numPhotosMarks:I

    .line 358
    const-string/jumbo v0, "videos"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/LongPollService;->numVideosMarks:I

    .line 359
    const-string/jumbo v0, "app_requests"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/LongPollService;->numAppRequests:I

    .line 361
    :cond_0
    return-void
.end method

.method public static playNotification()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 1700
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 1701
    .local v1, "n":Landroid/app/Notification;
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1702
    .local v2, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v3, "dnd_end"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 1703
    const-string/jumbo v3, "notifySound"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1704
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "notifyRingtone"

    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iput-object v3, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1706
    :cond_0
    const-string/jumbo v3, "notifyVibrate"

    invoke-interface {v2, v3, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1707
    iget v3, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v1, Landroid/app/Notification;->defaults:I

    .line 1710
    :cond_1
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1711
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    const/16 v3, 0xb

    invoke-virtual {v0, v3, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1712
    return-void
.end method

.method public static playNotificationSound(I)V
    .locals 7
    .param p0, "peer"    # I

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    .line 1544
    sget-object v0, Lcom/vkcoffee/android/LongPollService;->notificationSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 1545
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x5

    invoke-direct {v0, v3, v1, v4}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lcom/vkcoffee/android/LongPollService;->notificationSoundPool:Landroid/media/SoundPool;

    .line 1546
    sget-object v0, Lcom/vkcoffee/android/LongPollService;->notificationSoundPool:Landroid/media/SoundPool;

    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/high16 v2, 0x7f070000

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/LongPollService;->notificationSoundID:I

    .line 1547
    sget-object v0, Lcom/vkcoffee/android/LongPollService;->notificationSoundPool:Landroid/media/SoundPool;

    new-instance v1, Lcom/vkcoffee/android/LongPollService$9;

    invoke-direct {v1}, Lcom/vkcoffee/android/LongPollService$9;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 1556
    :goto_0
    return-void

    .line 1554
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/LongPollService;->notificationSoundPool:Landroid/media/SoundPool;

    sget v1, Lcom/vkcoffee/android/LongPollService;->notificationSoundID:I

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0
.end method

.method private processAddFlags(III)V
    .locals 3
    .param p1, "mid"    # I
    .param p2, "uid"    # I
    .param p3, "mask"    # I

    .prologue
    const/4 v2, 0x0

    .line 829
    and-int/lit8 v1, p3, 0x1

    if-lez v1, :cond_0

    iget-boolean v1, p0, Lcom/vkcoffee/android/LongPollService;->newSystem:Z

    if-nez v1, :cond_0

    .line 830
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.MESSAGE_RSTATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 831
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "msg_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 832
    const-string/jumbo v1, "read_state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 833
    const-string/jumbo v1, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 835
    invoke-static {p1, v2}, Lcom/vkcoffee/android/data/Messages;->setReadState(IZ)V

    .line 837
    sget v1, Lcom/vkcoffee/android/Global;->uid:I

    if-eq p2, v1, :cond_0

    iget-boolean v1, p0, Lcom/vkcoffee/android/LongPollService;->newSystem:Z

    if-nez v1, :cond_0

    .line 838
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumNewMessages()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/vkcoffee/android/LongPollService;->setNumNewMessages(I)V

    .line 840
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.COUNTERS_UPDATED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 843
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    and-int/lit16 v1, p3, 0x80

    if-gtz v1, :cond_1

    and-int/lit8 v1, p3, 0x40

    if-lez v1, :cond_2

    .line 844
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.MESSAGE_DELETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 845
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string/jumbo v1, "msg_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 846
    const-string/jumbo v1, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 847
    invoke-static {p1}, Lcom/vkcoffee/android/data/Messages;->deleteMessageLocally(I)V

    .line 849
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method private processChatChanged(I)V
    .locals 2
    .param p1, "chatID"    # I

    .prologue
    .line 1018
    invoke-static {p1}, Lcom/vkcoffee/android/cache/Cache;->setNeedUpdateChat(I)V

    .line 1019
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.CHAT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1020
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1021
    const-string/jumbo v1, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1022
    return-void
.end method

.method private processClearFlags(III)V
    .locals 17
    .param p1, "mid"    # I
    .param p2, "uid"    # I
    .param p3, "mask"    # I

    .prologue
    .line 771
    and-int/lit8 v14, p3, 0x1

    if-lez v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/vkcoffee/android/LongPollService;->newSystem:Z

    if-nez v14, :cond_0

    .line 772
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v14, "com.vkcoffee.android.MESSAGE_RSTATE_CHANGED"

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 774
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v14, "msg_id"

    move/from16 v0, p1

    invoke-virtual {v3, v14, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 775
    const-string/jumbo v14, "read_state"

    const/4 v15, 0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 776
    const-string/jumbo v14, "com.vkcoffee.android.permission.ACCESS_DATA"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/vkcoffee/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 778
    const/4 v4, 0x0

    .line 780
    .local v4, "isOut":Z
    const/4 v14, 0x1

    move/from16 v0, p1

    invoke-static {v0, v14}, Lcom/vkcoffee/android/data/Messages;->setReadState(IZ)V

    .line 782
    if-nez v4, :cond_0

    sget v14, Lcom/vkcoffee/android/Global;->uid:I

    move/from16 v0, p2

    if-eq v0, v14, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/vkcoffee/android/LongPollService;->newSystem:Z

    if-nez v14, :cond_0

    .line 783
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumNewMessages()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkcoffee/android/LongPollService;->setNumUnread(I)V

    .line 786
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "isOut":Z
    :cond_0
    move/from16 v0, p3

    and-int/lit16 v14, v0, 0x80

    if-gtz v14, :cond_1

    and-int/lit8 v14, p3, 0x40

    if-lez v14, :cond_4

    .line 788
    :cond_1
    new-instance v2, Lcom/vkcoffee/android/api/VKAPIRequest;

    const-string/jumbo v14, "messages.getById"

    invoke-direct {v2, v14}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 789
    .local v2, "getMsg":Lcom/vkcoffee/android/api/VKAPIRequest;
    const-string/jumbo v14, "message_ids"

    move/from16 v0, p1

    invoke-virtual {v2, v14, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v14

    const-string/jumbo v15, "photo_sizes"

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v14

    const-string/jumbo v15, "fields"

    const-string/jumbo v16, "first_name,last_name,photo_100,photo_50"

    invoke-virtual/range {v14 .. v16}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 790
    invoke-static {v2}, Lcom/vkcoffee/android/api/APIController;->runRequest(Lcom/vkcoffee/android/api/VKAPIRequest;)Lorg/json/JSONObject;

    move-result-object v10

    .line 791
    .local v10, "res":Lorg/json/JSONObject;
    if-eqz v10, :cond_5

    const-string/jumbo v14, "response"

    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 793
    :try_start_0
    const-string/jumbo v14, "response"

    invoke-static {v10, v14}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v14

    iget-object v14, v14, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 794
    .local v5, "jmsg":Lorg/json/JSONObject;
    new-instance v6, Lcom/vkcoffee/android/Message;

    invoke-direct {v6, v5}, Lcom/vkcoffee/android/Message;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    .local v6, "msg":Lcom/vkcoffee/android/Message;
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v14, "com.vkcoffee.android.NEW_MESSAGE"

    invoke-direct {v3, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 804
    .restart local v3    # "intent":Landroid/content/Intent;
    iget-object v14, v6, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    if-eqz v14, :cond_2

    iget-object v14, v6, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v15, "action_mid"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 805
    iget-object v14, v6, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v15, "action_mid"

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 806
    .local v1, "actMid":I
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x3

    invoke-static {v14, v15}, Lcom/vkcoffee/android/data/Friends;->getUsersBlocking(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v12

    .line 807
    .local v12, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const-string/jumbo v15, "action_user_name_acc"

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkcoffee/android/UserProfile;

    iget-object v14, v14, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v15, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 808
    const-string/jumbo v15, "action_user_name_acc"

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkcoffee/android/UserProfile;

    iget-object v14, v14, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v6, v15, v14}, Lcom/vkcoffee/android/Message;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    .end local v1    # "actMid":I
    .end local v12    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 811
    .local v7, "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v14, v6, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    invoke-static {v7}, Lcom/vkcoffee/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkcoffee/android/UserProfile;

    .line 813
    .local v11, "senderProfile":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v14, "sender_profile"

    invoke-virtual {v3, v14, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 814
    const-string/jumbo v14, "peer_id"

    iget v15, v6, Lcom/vkcoffee/android/Message;->peer:I

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 815
    const-string/jumbo v14, "message"

    invoke-virtual {v3, v14, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 816
    const-string/jumbo v14, "is_out"

    iget-boolean v15, v6, Lcom/vkcoffee/android/Message;->out:Z

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 817
    const-string/jumbo v14, "sender_photo"

    iget-object v15, v11, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v3, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 818
    const/4 v8, 0x0

    .line 819
    .local v8, "peerProfile":Lcom/vkcoffee/android/UserProfile;
    iget v14, v6, Lcom/vkcoffee/android/Message;->peer:I

    const v15, 0x77359400

    if-ge v14, v15, :cond_3

    .line 820
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Integer;

    const/4 v15, 0x0

    iget v0, v6, Lcom/vkcoffee/android/Message;->peer:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-static {v14}, Lcom/vkcoffee/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v9

    .line 821
    .local v9, "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const-string/jumbo v14, "peer_profile"

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "peerProfile":Lcom/vkcoffee/android/UserProfile;
    check-cast v8, Lcom/vkcoffee/android/UserProfile;

    .restart local v8    # "peerProfile":Lcom/vkcoffee/android/UserProfile;
    invoke-virtual {v3, v14, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 823
    .end local v9    # "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_3
    iget-object v14, v11, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-static {v6, v8, v14}, Lcom/vkcoffee/android/data/Messages;->add(Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)V

    .line 824
    const-string/jumbo v14, "com.vkcoffee.android.permission.ACCESS_DATA"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lcom/vkcoffee/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 826
    .end local v2    # "getMsg":Lcom/vkcoffee/android/api/VKAPIRequest;
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v5    # "jmsg":Lorg/json/JSONObject;
    .end local v6    # "msg":Lcom/vkcoffee/android/Message;
    .end local v7    # "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v8    # "peerProfile":Lcom/vkcoffee/android/UserProfile;
    .end local v10    # "res":Lorg/json/JSONObject;
    .end local v11    # "senderProfile":Lcom/vkcoffee/android/UserProfile;
    :cond_4
    :goto_0
    return-void

    .line 795
    .restart local v2    # "getMsg":Lcom/vkcoffee/android/api/VKAPIRequest;
    .restart local v10    # "res":Lorg/json/JSONObject;
    :catch_0
    move-exception v13

    .line 796
    .local v13, "x":Ljava/lang/Exception;
    const-string/jumbo v14, "vk"

    invoke-static {v14, v13}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 800
    .end local v13    # "x":Ljava/lang/Exception;
    :cond_5
    const-string/jumbo v14, "vk_longpoll"

    const-string/jumbo v15, "Error getting full message"

    invoke-static {v14, v15}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static processFailedMessageCallback(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 15
    .param p0, "res"    # Lorg/json/JSONObject;
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 1026
    if-eqz p0, :cond_1

    :try_start_0
    const-string/jumbo v11, "response"

    invoke-virtual {p0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1027
    const-string/jumbo v11, "response"

    invoke-static {p0, v11}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v11

    iget-object v11, v11, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 1028
    .local v3, "jmsg":Lorg/json/JSONObject;
    new-instance v4, Lcom/vkcoffee/android/Message;

    invoke-direct {v4, v3}, Lcom/vkcoffee/android/Message;-><init>(Lorg/json/JSONObject;)V

    .line 1029
    .local v4, "msg":Lcom/vkcoffee/android/Message;
    iget-object v11, v4, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v12, "action"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1030
    const/4 v11, 0x1

    iput-boolean v11, v4, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    .line 1033
    :cond_0
    iget-boolean v11, v4, Lcom/vkcoffee/android/Message;->out:Z

    if-eqz v11, :cond_2

    iget-boolean v11, v4, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    if-nez v11, :cond_2

    sget-object v11, Lcom/vkcoffee/android/LongPollService;->sendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 1034
    sget-object v11, Lcom/vkcoffee/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1083
    .end local v3    # "jmsg":Lorg/json/JSONObject;
    .end local v4    # "msg":Lcom/vkcoffee/android/Message;
    :cond_1
    :goto_0
    return-void

    .line 1038
    .restart local v3    # "jmsg":Lorg/json/JSONObject;
    .restart local v4    # "msg":Lcom/vkcoffee/android/Message;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v11, "com.vkcoffee.android.NEW_MESSAGE"

    invoke-direct {v1, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1039
    .local v1, "intent":Landroid/content/Intent;
    iget-object v11, v4, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v12, "action_mid"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1040
    iget-object v11, v4, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v12, "action_mid"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1041
    .local v0, "actMid":I
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Integer;

    const/4 v12, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v12, 0x3

    invoke-static {v11, v12}, Lcom/vkcoffee/android/data/Friends;->getUsersBlocking(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v9

    .line 1042
    .local v9, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const-string/jumbo v12, "action_user_name_acc"

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkcoffee/android/UserProfile;

    iget-object v11, v11, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1043
    const-string/jumbo v12, "action_user_name_acc"

    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/vkcoffee/android/UserProfile;

    iget-object v11, v11, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v4, v12, v11}, Lcom/vkcoffee/android/Message;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    .end local v0    # "actMid":I
    .end local v9    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_3
    sget-boolean v11, Lcom/vkcoffee/android/LongPollService;->DEBUG:Z

    if-eqz v11, :cond_4

    .line 1046
    const-string/jumbo v11, "vk_longpoll"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Message: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1049
    .local v5, "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget v11, v4, Lcom/vkcoffee/android/Message;->sender:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1050
    invoke-static {v5}, Lcom/vkcoffee/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/UserProfile;

    .line 1051
    .local v8, "senderProfile":Lcom/vkcoffee/android/UserProfile;
    const-string/jumbo v11, "sender_profile"

    invoke-virtual {v1, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1052
    const-string/jumbo v11, "peer_id"

    iget v12, v4, Lcom/vkcoffee/android/Message;->peer:I

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1053
    const-string/jumbo v11, "message"

    invoke-virtual {v1, v11, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1054
    const-string/jumbo v11, "is_out"

    iget-boolean v12, v4, Lcom/vkcoffee/android/Message;->out:Z

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1055
    const-string/jumbo v11, "sender_photo"

    iget-object v12, v8, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v1, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    const/4 v6, 0x0

    .line 1057
    .local v6, "peerProfile":Lcom/vkcoffee/android/UserProfile;
    iget v11, v4, Lcom/vkcoffee/android/Message;->peer:I

    const v12, 0x77359400

    if-ge v11, v12, :cond_5

    .line 1058
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Integer;

    const/4 v12, 0x0

    iget v13, v4, Lcom/vkcoffee/android/Message;->peer:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-static {v11}, Lcom/vkcoffee/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v7

    .line 1059
    .local v7, "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const-string/jumbo v11, "peer_profile"

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "peerProfile":Lcom/vkcoffee/android/UserProfile;
    check-cast v6, Lcom/vkcoffee/android/UserProfile;

    .restart local v6    # "peerProfile":Lcom/vkcoffee/android/UserProfile;
    invoke-virtual {v1, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1062
    .end local v7    # "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_5
    iget-boolean v11, v4, Lcom/vkcoffee/android/Message;->out:Z

    if-eqz v11, :cond_6

    iget v11, v4, Lcom/vkcoffee/android/Message;->id:I

    invoke-static {v11}, Lcom/vkcoffee/android/cache/Cache;->containsMessage(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1063
    iget-object v11, v8, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-static {v4, v6, v11}, Lcom/vkcoffee/android/data/Messages;->add(Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1080
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "jmsg":Lorg/json/JSONObject;
    .end local v4    # "msg":Lcom/vkcoffee/android/Message;
    .end local v5    # "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "peerProfile":Lcom/vkcoffee/android/UserProfile;
    .end local v8    # "senderProfile":Lcom/vkcoffee/android/UserProfile;
    :catch_0
    move-exception v10

    .line 1081
    .local v10, "x":Lorg/json/JSONException;
    invoke-static {v10}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 1066
    .end local v10    # "x":Lorg/json/JSONException;
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v3    # "jmsg":Lorg/json/JSONObject;
    .restart local v4    # "msg":Lcom/vkcoffee/android/Message;
    .restart local v5    # "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6    # "peerProfile":Lcom/vkcoffee/android/UserProfile;
    .restart local v8    # "senderProfile":Lcom/vkcoffee/android/UserProfile;
    :cond_6
    :try_start_1
    iget-object v11, v8, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-static {v4, v6, v11}, Lcom/vkcoffee/android/data/Messages;->add(Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)V

    .line 1068
    sget-object v11, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v12, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v11, v1, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1069
    iget-object v11, v4, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v12, "action"

    invoke-virtual {v11, v12}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1070
    iget v11, v4, Lcom/vkcoffee/android/Message;->peer:I

    const v12, 0x77359400

    sub-int/2addr v11, v12

    invoke-static {v11}, Lcom/vkcoffee/android/cache/Cache;->setNeedUpdateChat(I)V

    .line 1071
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v11, "com.vkcoffee.android.CHAT_CHANGED"

    invoke-direct {v2, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1072
    .local v2, "intent1":Landroid/content/Intent;
    const-string/jumbo v11, "id"

    iget v12, v4, Lcom/vkcoffee/android/Message;->peer:I

    const v13, 0x77359400

    sub-int/2addr v12, v13

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1074
    sget-object v11, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v12, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v11, v2, v12}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1075
    const-string/jumbo v11, "chat_title_update"

    iget-object v12, v4, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v13, "action"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1076
    iget v11, v4, Lcom/vkcoffee/android/Message;->peer:I

    const v12, 0x77359400

    sub-int/2addr v11, v12

    iget-object v12, v4, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v13, "action_text"

    invoke-virtual {v12, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v11, v12, v13, v14}, Lcom/vkcoffee/android/cache/Cache;->updateChat(ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private processMessage(IIIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 32
    .param p1, "mid"    # I
    .param p2, "peer"    # I
    .param p3, "flags"    # I
    .param p4, "time"    # I
    .param p5, "text"    # Ljava/lang/String;
    .param p6, "subject"    # Ljava/lang/String;
    .param p7, "extra"    # Lorg/json/JSONObject;
    .param p8, "randomId"    # I

    .prologue
    .line 1086
    sget-boolean v2, Lcom/vkcoffee/android/LongPollService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 1087
    const-string/jumbo v2, "vk_longpoll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "processMessage: id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", flags="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", peer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", time="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", subject=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\', text=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\', extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\', randomId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1090
    :cond_0
    and-int/lit8 v2, p3, 0x2

    if-lez v2, :cond_8

    const/16 v16, 0x1

    .line 1091
    .local v16, "isOut":Z
    :goto_0
    if-eqz v16, :cond_1

    .line 1093
    :try_start_0
    sget-object v2, Lcom/vkcoffee/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1094
    sget-object v2, Lcom/vkcoffee/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1100
    :cond_1
    :goto_1
    :try_start_1
    sget-object v2, Lcom/vkcoffee/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1101
    sget-object v2, Lcom/vkcoffee/android/LongPollService;->addMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 1107
    :goto_2
    const v2, 0x77359400

    move/from16 v0, p2

    if-ge v0, v2, :cond_a

    .line 1108
    if-eqz v16, :cond_9

    :try_start_2
    sget v25, Lcom/vkcoffee/android/Global;->uid:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1113
    .local v25, "sender":I
    :goto_3
    const v2, 0x77359400

    move/from16 v0, p2

    if-le v0, v2, :cond_b

    move/from16 v0, v25

    int-to-long v2, v0

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    move/from16 v0, p2

    int-to-long v4, v0

    or-long v28, v2, v4

    .line 1115
    .local v28, "typingKey":J
    :goto_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/LongPollService;->typingLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1119
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/LongPollService;->typings:Ljava/util/HashMap;

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/LongPollService;->typings:Ljava/util/HashMap;

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.TYPING"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1122
    .local v14, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "uid"

    move/from16 v0, p2

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1123
    const-string/jumbo v2, "user"

    move/from16 v0, v25

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1124
    const-string/jumbo v2, "stop"

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1125
    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lcom/vkcoffee/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1127
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/LongPollService;->typingLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->release()V

    .line 1129
    if-eqz p7, :cond_d

    const-string/jumbo v2, "attach1_type"

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "fwd"

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "geo"

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1130
    :cond_3
    sget-boolean v2, Lcom/vkcoffee/android/LongPollService;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 1131
    const-string/jumbo v2, "vk_longpoll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "will get message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " from api"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    :cond_4
    new-instance v11, Lcom/vkcoffee/android/api/VKAPIRequest;

    const-string/jumbo v2, "messages.getById"

    invoke-direct {v11, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    .line 1134
    .local v11, "getMsg":Lcom/vkcoffee/android/api/VKAPIRequest;
    const-string/jumbo v2, "message_ids"

    move/from16 v0, p1

    invoke-virtual {v11, v2, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    const-string/jumbo v3, "photo_sizes"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    const-string/jumbo v3, "fields"

    const-string/jumbo v4, "first_name,last_name,photo_100,photo_50"

    invoke-virtual {v2, v3, v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1136
    :try_start_5
    const-class v2, Lcom/vkcoffee/android/LongPollService;

    const-string/jumbo v3, "processFailedMessageCallback"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Lorg/json/JSONObject;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Lorg/json/JSONObject;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v11, v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->persist(Ljava/lang/reflect/Method;Lorg/json/JSONObject;)Lcom/vkcoffee/android/api/VKAPIRequest;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 1140
    :goto_6
    :try_start_6
    invoke-static {v11}, Lcom/vkcoffee/android/api/APIController;->runRequest(Lcom/vkcoffee/android/api/VKAPIRequest;)Lorg/json/JSONObject;

    move-result-object v24

    .line 1141
    .local v24, "res":Lorg/json/JSONObject;
    if-eqz v24, :cond_c

    const-string/jumbo v2, "response"

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1142
    const-string/jumbo v2, "response"

    move-object/from16 v0, v24

    invoke-static {v0, v2}, Lcom/vkcoffee/android/api/APIUtils;->unwrapArray(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/vkcoffee/android/api/JSONArrayWithCount;

    move-result-object v2

    iget-object v2, v2, Lcom/vkcoffee/android/api/JSONArrayWithCount;->array:Lorg/json/JSONArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v17

    .line 1143
    .local v17, "jmsg":Lorg/json/JSONObject;
    new-instance v18, Lcom/vkcoffee/android/Message;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/Message;-><init>(Lorg/json/JSONObject;)V

    .line 1178
    .end local v11    # "getMsg":Lcom/vkcoffee/android/api/VKAPIRequest;
    .end local v17    # "jmsg":Lorg/json/JSONObject;
    .end local v24    # "res":Lorg/json/JSONObject;
    .local v18, "msg":Lcom/vkcoffee/android/Message;
    :cond_5
    :goto_7
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1179
    const/4 v2, 0x1

    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    .line 1182
    :cond_6
    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/vkcoffee/android/Message;->out:Z

    if-eqz v2, :cond_12

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    if-nez v2, :cond_12

    sget-object v2, Lcom/vkcoffee/android/LongPollService;->sendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_12

    .line 1183
    sget-object v2, Lcom/vkcoffee/android/LongPollService;->pendingReceivedMessages:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1295
    .end local v18    # "msg":Lcom/vkcoffee/android/Message;
    .end local v25    # "sender":I
    .end local v28    # "typingKey":J
    :cond_7
    :goto_8
    return-void

    .line 1090
    .end local v16    # "isOut":Z
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1095
    .restart local v16    # "isOut":Z
    :catch_0
    move-exception v31

    .line 1096
    .local v31, "x":Ljava/lang/Exception;
    invoke-static/range {v31 .. v31}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 1292
    .end local v31    # "x":Ljava/lang/Exception;
    :catch_1
    move-exception v31

    .line 1293
    .restart local v31    # "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk_longpoll"

    const-string/jumbo v3, "Error processing message"

    move-object/from16 v0, v31

    invoke-static {v2, v3, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 1102
    .end local v31    # "x":Ljava/lang/Exception;
    :catch_2
    move-exception v31

    .line 1103
    .restart local v31    # "x":Ljava/lang/Exception;
    :try_start_7
    invoke-static/range {v31 .. v31}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto/16 :goto_2

    .end local v31    # "x":Ljava/lang/Exception;
    :cond_9
    move/from16 v25, p2

    .line 1108
    goto/16 :goto_3

    .line 1110
    :cond_a
    const-string/jumbo v2, "from"

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v25

    .restart local v25    # "sender":I
    goto/16 :goto_3

    .line 1113
    :cond_b
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v28, v0

    goto/16 :goto_4

    .line 1116
    .restart local v28    # "typingKey":J
    :catch_3
    move-exception v31

    .line 1117
    .restart local v31    # "x":Ljava/lang/Exception;
    invoke-static/range {v31 .. v31}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto/16 :goto_5

    .line 1137
    .end local v31    # "x":Ljava/lang/Exception;
    .restart local v11    # "getMsg":Lcom/vkcoffee/android/api/VKAPIRequest;
    :catch_4
    move-exception v31

    .line 1138
    .restart local v31    # "x":Ljava/lang/Exception;
    invoke-static/range {v31 .. v31}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto/16 :goto_6

    .line 1145
    .end local v31    # "x":Ljava/lang/Exception;
    .restart local v24    # "res":Lorg/json/JSONObject;
    :cond_c
    const-string/jumbo v2, "vk_longpoll"

    const-string/jumbo v3, "Error getting full message"

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 1149
    .end local v11    # "getMsg":Lcom/vkcoffee/android/api/VKAPIRequest;
    .end local v24    # "res":Lorg/json/JSONObject;
    :cond_d
    new-instance v18, Lcom/vkcoffee/android/Message;

    invoke-direct/range {v18 .. v18}, Lcom/vkcoffee/android/Message;-><init>()V

    .line 1150
    .restart local v18    # "msg":Lcom/vkcoffee/android/Message;
    move/from16 v0, p2

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkcoffee/android/Message;->peer:I

    .line 1151
    move/from16 v0, v25

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkcoffee/android/Message;->sender:I

    .line 1152
    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/Message;->setText(Ljava/lang/String;)V

    .line 1153
    move/from16 v0, p8

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkcoffee/android/Message;->randomId:I

    .line 1154
    move/from16 v0, p4

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkcoffee/android/Message;->time:I

    .line 1155
    move/from16 v0, p1

    move-object/from16 v1, v18

    iput v0, v1, Lcom/vkcoffee/android/Message;->id:I

    .line 1156
    move/from16 v0, v16

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/vkcoffee/android/Message;->out:Z

    .line 1157
    const/4 v2, 0x0

    move-object/from16 v0, v18

    iput-boolean v2, v0, Lcom/vkcoffee/android/Message;->readState:Z

    .line 1158
    const v2, 0x77359400

    move/from16 v0, p2

    if-le v0, v2, :cond_e

    .line 1159
    move-object/from16 v0, p6

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/vkcoffee/android/Message;->title:Ljava/lang/String;

    .line 1161
    :cond_e
    if-eqz p7, :cond_5

    .line 1162
    const-string/jumbo v2, "source_act"

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1163
    const-string/jumbo v2, "source_act"

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1164
    .local v8, "act":Ljava/lang/String;
    const-string/jumbo v2, "action"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v8}, Lcom/vkcoffee/android/Message;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1165
    const-string/jumbo v2, "chat_invite_user"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string/jumbo v2, "chat_kick_user"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1166
    :cond_f
    const-string/jumbo v2, "source_mid"

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v27

    .line 1167
    .local v27, "uid":I
    const-string/jumbo v2, "action_mid"

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-virtual {v0, v2, v1}, Lcom/vkcoffee/android/Message;->putIntExtra(Ljava/lang/String;I)V

    .line 1169
    .end local v27    # "uid":I
    :cond_10
    const-string/jumbo v2, "source_text"

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1170
    const-string/jumbo v2, "action_text"

    const-string/jumbo v3, "source_text"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/vkcoffee/android/Message;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    :cond_11
    const-string/jumbo v2, "source_email"

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1173
    const-string/jumbo v2, "action_email"

    const-string/jumbo v3, "source_email"

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lcom/vkcoffee/android/Message;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1187
    .end local v8    # "act":Ljava/lang/String;
    :cond_12
    new-instance v14, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.NEW_MESSAGE"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1188
    .restart local v14    # "intent":Landroid/content/Intent;
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "action_mid"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1189
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "action_mid"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 1190
    .local v9, "actMid":I
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/data/Friends;->getUsersBlocking(Ljava/util/List;I)Ljava/util/ArrayList;

    move-result-object v30

    .line 1191
    .local v30, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const-string/jumbo v3, "action_user_name_acc"

    const/4 v2, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    iget-object v2, v2, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v14, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1192
    const-string/jumbo v3, "action_user_name_acc"

    const/4 v2, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/UserProfile;

    iget-object v2, v2, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2}, Lcom/vkcoffee/android/Message;->putStringExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    .end local v9    # "actMid":I
    .end local v30    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_13
    sget-boolean v2, Lcom/vkcoffee/android/LongPollService;->DEBUG:Z

    if-eqz v2, :cond_14

    .line 1195
    const-string/jumbo v2, "vk_longpoll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    :cond_14
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 1198
    .local v19, "needUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1199
    invoke-static/range {v19 .. v19}, Lcom/vkcoffee/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/vkcoffee/android/UserProfile;

    .line 1200
    .local v26, "senderProfile":Lcom/vkcoffee/android/UserProfile;
    if-nez v26, :cond_15

    .line 1201
    new-instance v26, Lcom/vkcoffee/android/UserProfile;

    .end local v26    # "senderProfile":Lcom/vkcoffee/android/UserProfile;
    invoke-direct/range {v26 .. v26}, Lcom/vkcoffee/android/UserProfile;-><init>()V

    .line 1202
    .restart local v26    # "senderProfile":Lcom/vkcoffee/android/UserProfile;
    move/from16 v0, v25

    move-object/from16 v1, v26

    iput v0, v1, Lcom/vkcoffee/android/UserProfile;->uid:I

    .line 1203
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v3, 0x7f080293

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/vkcoffee/android/UserProfile;->firstName:Ljava/lang/String;

    .line 1204
    const-string/jumbo v2, ""

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/vkcoffee/android/UserProfile;->lastName:Ljava/lang/String;

    .line 1205
    const-string/jumbo v2, "http://vk.com/images/camera_100.gif"

    move-object/from16 v0, v26

    iput-object v2, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 1207
    :cond_15
    const-string/jumbo v2, "sender_profile"

    move-object/from16 v0, v26

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1208
    const-string/jumbo v2, "peer_id"

    move/from16 v0, p2

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1209
    const-string/jumbo v2, "message"

    move-object/from16 v0, v18

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1210
    const-string/jumbo v2, "is_out"

    move/from16 v0, v16

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1211
    const-string/jumbo v2, "sender_photo"

    move-object/from16 v0, v26

    iget-object v3, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1212
    const/16 v22, 0x0

    .line 1213
    .local v22, "peerProfile":Lcom/vkcoffee/android/UserProfile;
    const v2, 0x77359400

    move/from16 v0, p2

    if-ge v0, v2, :cond_16

    .line 1214
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    const/4 v3, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/vkcoffee/android/data/Friends;->getUsersBlocking(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v23

    .line 1215
    .local v23, "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    const-string/jumbo v2, "peer_profile"

    const/4 v3, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "peerProfile":Lcom/vkcoffee/android/UserProfile;
    check-cast v22, Lcom/vkcoffee/android/UserProfile;

    .restart local v22    # "peerProfile":Lcom/vkcoffee/android/UserProfile;
    move-object/from16 v0, v22

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1218
    .end local v23    # "pp":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/UserProfile;>;"
    :cond_16
    if-eqz v16, :cond_17

    move-object/from16 v0, v18

    iget v2, v0, Lcom/vkcoffee/android/Message;->id:I

    invoke-static {v2}, Lcom/vkcoffee/android/cache/Cache;->containsMessage(I)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1219
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/data/Messages;->add(Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 1222
    :cond_17
    move-object/from16 v0, v26

    iget-object v2, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/vkcoffee/android/data/Messages;->add(Lcom/vkcoffee/android/Message;Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)V

    .line 1224
    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lcom/vkcoffee/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1225
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1226
    const v2, 0x77359400

    sub-int v2, p2, v2

    invoke-static {v2}, Lcom/vkcoffee/android/cache/Cache;->setNeedUpdateChat(I)V

    .line 1227
    new-instance v15, Landroid/content/Intent;

    const-string/jumbo v2, "com.vkcoffee.android.CHAT_CHANGED"

    invoke-direct {v15, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1228
    .local v15, "intent1":Landroid/content/Intent;
    const-string/jumbo v2, "id"

    move-object/from16 v0, v18

    iget v3, v0, Lcom/vkcoffee/android/Message;->peer:I

    const v4, 0x77359400

    sub-int/2addr v3, v4

    invoke-virtual {v15, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1230
    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v2}, Lcom/vkcoffee/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1231
    const-string/jumbo v2, "chat_title_update"

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "action"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1232
    const v2, 0x77359400

    sub-int v2, p2, v2

    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v4, "action_text"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/vkcoffee/android/cache/Cache;->updateChat(ILjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 1236
    .end local v15    # "intent1":Landroid/content/Intent;
    :cond_18
    if-nez v16, :cond_7

    .line 1237
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkcoffee/android/LongPollService;->newSystem:Z

    if-nez v2, :cond_19

    .line 1238
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumNewMessages()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/vkcoffee/android/LongPollService;->setNumNewMessages(I)V

    .line 1239
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.vkcoffee.android.COUNTERS_UPDATED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/vkcoffee/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1241
    :cond_19
    new-instance v14, Landroid/content/Intent;

    .end local v14    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "com.vkcoffee.android.TYPING"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1242
    .restart local v14    # "intent":Landroid/content/Intent;
    const-string/jumbo v2, "uid"

    move/from16 v0, p2

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1243
    const v2, 0x77359400

    move/from16 v0, p2

    if-le v0, v2, :cond_1a

    .line 1244
    const-string/jumbo v2, "user"

    move/from16 v0, v25

    invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1246
    :cond_1a
    const-string/jumbo v2, "stop"

    const/4 v3, 0x1

    invoke-virtual {v14, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1247
    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v2}, Lcom/vkcoffee/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1249
    sput-object v26, Lcom/vkcoffee/android/LongPollService;->realLastProfile:Lcom/vkcoffee/android/UserProfile;

    .line 1250
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/vkcoffee/android/Message;->text:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 1251
    .local v21, "notifyText":Ljava/lang/String;
    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    if-eqz v2, :cond_1b

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 1252
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkcoffee/android/Message;->extras:Landroid/os/Bundle;

    const-string/jumbo v3, "action_user_name_acc"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/Message;->getServiceMessageText(Lcom/vkcoffee/android/UserProfile;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1256
    :cond_1b
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1f

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1f

    const/4 v12, 0x1

    .line 1257
    .local v12, "hasDifferentAttachmentsType":Z
    :goto_9
    if-nez v12, :cond_1c

    .line 1258
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1c

    .line 1259
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_a
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_1c

    .line 1260
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/attachments/Attachment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    add-int/lit8 v4, v13, -0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/attachments/Attachment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v3, v2, :cond_20

    const/4 v12, 0x1

    .line 1261
    :goto_b
    if-eqz v12, :cond_21

    .line 1268
    .end local v13    # "i":I
    :cond_1c
    const/16 v20, 0x0

    .line 1269
    .local v20, "notifyAdd":Ljava/lang/String;
    if-eqz v12, :cond_22

    .line 1270
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v3, 0x7f080083

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 1281
    :cond_1d
    :goto_c
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 1282
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 1283
    move-object/from16 v21, v20

    .line 1289
    :cond_1e
    :goto_d
    invoke-static/range {v21 .. v21}, Lcom/vkcoffee/android/Global;->replaceEmojiModifiers(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v18

    iget v3, v0, Lcom/vkcoffee/android/Message;->peer:I

    const v4, 0x77359400

    if-le v3, v4, :cond_27

    move-object/from16 v3, p6

    :goto_e
    move-object/from16 v0, v26

    iget-object v4, v0, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v5, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, v18

    iget v7, v0, Lcom/vkcoffee/android/Message;->peer:I

    invoke-static/range {v2 .. v7}, Lcom/vkcoffee/android/LongPollService;->updateNotification(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto/16 :goto_8

    .line 1256
    .end local v12    # "hasDifferentAttachmentsType":Z
    .end local v20    # "notifyAdd":Ljava/lang/String;
    :cond_1f
    const/4 v12, 0x0

    goto :goto_9

    .line 1260
    .restart local v12    # "hasDifferentAttachmentsType":Z
    .restart local v13    # "i":I
    :cond_20
    const/4 v12, 0x0

    goto :goto_b

    .line 1259
    :cond_21
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 1271
    .end local v13    # "i":I
    .restart local v20    # "notifyAdd":Ljava/lang/String;
    :cond_22
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_25

    move-object/from16 v0, v18

    iget-boolean v2, v0, Lcom/vkcoffee/android/Message;->isServiceMessage:Z

    if-nez v2, :cond_25

    .line 1272
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/vkcoffee/android/attachments/Attachment;

    .line 1273
    .local v10, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v2, v10, Lcom/vkcoffee/android/attachments/GiftAttachment;

    if-eqz v2, :cond_24

    .line 1274
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v26

    iget-boolean v2, v0, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v2, :cond_23

    const v2, 0x7f0802c0

    :goto_f
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    goto :goto_c

    :cond_23
    const v2, 0x7f0802c1

    goto :goto_f

    .line 1276
    :cond_24
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkcoffee/android/Message;->attachments:Ljava/util/List;

    invoke-static {v2}, Lcom/vkcoffee/android/attachments/Attachment;->getLocalizedDescription(Ljava/util/List;)Ljava/lang/String;

    move-result-object v20

    goto :goto_c

    .line 1278
    .end local v10    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_25
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1d

    .line 1279
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e002b

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/vkcoffee/android/Message;->fwdMessages:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    goto/16 :goto_c

    .line 1285
    :cond_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-result-object v21

    goto/16 :goto_d

    .line 1289
    :cond_27
    const/4 v3, 0x0

    goto/16 :goto_e
.end method

.method private processNotifySettings(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "settings"    # Lorg/json/JSONObject;

    .prologue
    const v9, 0x77359400

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 1327
    :try_start_0
    const-string/jumbo v7, "peer_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 1328
    .local v3, "peer":I
    const-string/jumbo v7, "sound"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v2, :cond_1

    .line 1329
    .local v2, "mute":Z
    :goto_0
    const-string/jumbo v6, "disabled_until"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 1330
    .local v0, "dnd":I
    const-string/jumbo v6, "notify"

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/vkcoffee/android/LongPollService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1331
    .local v4, "prefs":Landroid/content/SharedPreferences;
    const/4 v6, -0x1

    if-ne v0, v6, :cond_0

    .line 1332
    const v0, 0x7fffffff

    .line 1334
    :cond_0
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mute"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "dnd"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1335
    if-le v3, v9, :cond_2

    .line 1336
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "com.vkcoffee.android.CHAT_CHANGED"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1337
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v6, "id"

    sub-int v7, v3, v9

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1338
    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v7, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1347
    .end local v0    # "dnd":I
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mute":Z
    .end local v3    # "peer":I
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :goto_1
    return-void

    .restart local v3    # "peer":I
    :cond_1
    move v2, v6

    .line 1328
    goto :goto_0

    .line 1340
    .restart local v0    # "dnd":I
    .restart local v2    # "mute":Z
    .restart local v4    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v6, "com.vkcoffee.android.DIALOG_CHANGED"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1341
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string/jumbo v6, "id"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1342
    sget-object v6, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v7, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v6, v1, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1344
    .end local v0    # "dnd":I
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "mute":Z
    .end local v3    # "peer":I
    .end local v4    # "prefs":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v5

    .line 1345
    .local v5, "x":Ljava/lang/Exception;
    const-string/jumbo v6, "vk"

    invoke-static {v6, v5}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private processOnlineChange(II)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "online"    # I

    .prologue
    .line 856
    invoke-static {p1, p2}, Lcom/vkcoffee/android/data/Friends;->setOnlineStatus(II)V

    .line 858
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.USER_PRESENCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 859
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 860
    const-string/jumbo v1, "online"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 861
    const-string/jumbo v1, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 862
    return-void
.end method

.method private processReadUpto(IIZ)V
    .locals 3
    .param p1, "peerID"    # I
    .param p2, "msgID"    # I
    .param p3, "in"    # Z

    .prologue
    .line 1298
    if-nez p3, :cond_0

    .line 1300
    :try_start_0
    sget-object v1, Lcom/vkcoffee/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 1301
    sget-object v1, Lcom/vkcoffee/android/LongPollService;->addOwnMessage:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1306
    :cond_0
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/vkcoffee/android/data/Messages;->setReadStateUpto(IIZ)V

    .line 1307
    invoke-static {p1, p2, p3}, Lcom/vkcoffee/android/LongPollService;->createActionMessageRSteteChangedIntent(IIZ)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v1, v2}, Lcom/vkcoffee/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1308
    return-void

    .line 1302
    :catch_0
    move-exception v0

    .line 1303
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private processTyping(II)V
    .locals 8
    .param p1, "peerID"    # I
    .param p2, "userID"    # I

    .prologue
    .line 866
    int-to-long v0, p1

    .line 867
    .local v0, "id":J
    const v4, 0x77359400

    if-le p1, v4, :cond_0

    .line 868
    int-to-long v4, p2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    .line 871
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/vkcoffee/android/LongPollService;->typingLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 875
    :goto_0
    iget-object v4, p0, Lcom/vkcoffee/android/LongPollService;->typings:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    iget-object v4, p0, Lcom/vkcoffee/android/LongPollService;->typingLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    .line 877
    iget-object v4, p0, Lcom/vkcoffee/android/LongPollService;->typingCancelThread:Lcom/vkcoffee/android/background/WorkerThread;

    new-instance v5, Lcom/vkcoffee/android/LongPollService$7;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/LongPollService$7;-><init>(Lcom/vkcoffee/android/LongPollService;)V

    const-wide/16 v6, 0x1bbc

    invoke-virtual {v4, v5, v6, v7}, Lcom/vkcoffee/android/background/WorkerThread;->postRunnable(Ljava/lang/Runnable;J)V

    .line 903
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "com.vkcoffee.android.TYPING"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 904
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "uid"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 905
    const-string/jumbo v4, "user"

    invoke-virtual {v2, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 906
    const-string/jumbo v4, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {p0, v2, v4}, Lcom/vkcoffee/android/LongPollService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 907
    return-void

    .line 872
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v3

    .line 873
    .local v3, "x":Ljava/lang/Exception;
    invoke-static {v3}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private processUpdateCounter(I)V
    .locals 3
    .param p1, "counter"    # I

    .prologue
    const/4 v2, 0x1

    .line 1317
    iget-boolean v0, p0, Lcom/vkcoffee/android/LongPollService;->newSystem:Z

    if-nez v0, :cond_0

    .line 1318
    iput-boolean v2, p0, Lcom/vkcoffee/android/LongPollService;->newSystem:Z

    .line 1319
    const-string/jumbo v0, "longpoll"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/LongPollService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "new_system"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1321
    :cond_0
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/LongPollService;->setNumUnread(I)V

    .line 1322
    return-void
.end method

.method public static resetNotifications()V
    .locals 1

    .prologue
    .line 253
    const/4 v0, 0x0

    sput v0, Lcom/vkcoffee/android/LongPollService;->numNotifications:I

    .line 254
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->notifyCountersChanged()V

    .line 255
    return-void
.end method

.method private runLongPoll()V
    .locals 26

    .prologue
    .line 1350
    const-string/jumbo v2, "vk_longpoll"

    const-string/jumbo v3, "LongPoll starting"

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1351
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    if-nez v2, :cond_0

    .line 1352
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LongPollService;->startSendingOnline()V

    .line 1354
    :cond_0
    sget-object v2, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/vkcoffee/android/LongPollService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "sid"

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1355
    :cond_1
    const-string/jumbo v2, "vk_longpoll"

    const-string/jumbo v3, "No user, stopping"

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1356
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LongPollService;->stopSelf()V

    .line 1541
    :goto_0
    return-void

    .line 1360
    :cond_2
    const/4 v15, 0x0

    .local v15, "nAttempts":I
    const/16 v23, 0x0

    .line 1363
    .local v23, "updateRetries":I
    const/16 v21, 0x0

    .line 1364
    .local v21, "serverUpdateSuccess":Z
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkcoffee/android/LongPollService;->needStop:Z

    if-nez v2, :cond_19

    .line 1365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/LongPollService;->server:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/LongPollService;->key:Ljava/lang/String;

    if-eqz v2, :cond_4

    if-nez v21, :cond_6

    .line 1366
    :cond_4
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vkcoffee/android/LongPollService;->connected:Z

    .line 1367
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->broadcastStateChanged()V

    .line 1368
    const-string/jumbo v2, "vk_longpoll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "no server info, force updating [retries="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/LongPollService;->updateServerInfo()Z

    move-result v21

    .line 1370
    const-string/jumbo v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "success="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1371
    add-int/lit8 v23, v23, 0x1

    .line 1372
    if-nez v21, :cond_3

    invoke-static {}, Lcom/vkcoffee/android/NetworkStateReceiver;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x2

    move/from16 v0, v23

    if-lt v0, v2, :cond_3

    .line 1373
    :cond_5
    const/16 v23, 0x0

    .line 1374
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LongPollService;->stopSelf()V

    goto :goto_0

    .line 1380
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v4, "useHTTPS"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "https"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/LongPollService;->server:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "?act=a_check&key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/LongPollService;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&ts="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/LongPollService;->ts:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "&wait=25&mode=234&version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 1382
    .local v24, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkcoffee/android/LongPollService;->needStop:Z

    if-eqz v2, :cond_8

    .line 1383
    const-string/jumbo v2, "vk_longpoll"

    const-string/jumbo v3, "LongPoll STOPPED"

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1380
    .end local v24    # "url":Ljava/lang/String;
    :cond_7
    const-string/jumbo v2, "http"

    goto :goto_2

    .line 1387
    .restart local v24    # "url":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/LongPollService;->getURL(Ljava/lang/String;)[B

    move-result-object v19

    .line 1388
    .local v19, "rdata":[B
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkcoffee/android/LongPollService;->needStop:Z

    if-eqz v2, :cond_9

    .line 1389
    const-string/jumbo v2, "vk_longpoll"

    const-string/jumbo v3, "LongPoll STOPPED"

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1393
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkcoffee/android/LongPollService;->currentIsHttps:Z

    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "useHTTPS"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eq v2, v3, :cond_c

    .line 1394
    const-string/jumbo v2, "vk_longpoll"

    const-string/jumbo v3, "HTTPS setting changed, updating server"

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/LongPollService;->updateServerInfo()Z

    move-result v2

    if-nez v2, :cond_b

    .line 1396
    add-int/lit8 v23, v23, 0x1

    .line 1400
    :goto_3
    invoke-static {}, Lcom/vkcoffee/android/NetworkStateReceiver;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x2

    move/from16 v0, v23

    if-lt v0, v2, :cond_3

    .line 1401
    :cond_a
    const-string/jumbo v2, "vk_longpoll"

    const-string/jumbo v3, "No network connection, stopping longpoll"

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LongPollService;->stopSelf()V

    goto/16 :goto_0

    .line 1398
    :cond_b
    const/16 v23, 0x0

    goto :goto_3

    .line 1408
    :cond_c
    if-nez v19, :cond_10

    .line 1409
    sget-boolean v2, Lcom/vkcoffee/android/LongPollService;->connected:Z

    if-eqz v2, :cond_d

    .line 1410
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vkcoffee/android/LongPollService;->connected:Z

    .line 1411
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->broadcastStateChanged()V

    .line 1413
    :cond_d
    const/4 v2, 0x6

    if-lt v15, v2, :cond_f

    .line 1414
    invoke-static {}, Lcom/vkcoffee/android/NetworkStateReceiver;->isConnected()Z

    move-result v2

    if-nez v2, :cond_e

    .line 1415
    const-string/jumbo v2, "vk_longpoll"

    const-string/jumbo v3, "No network connection, stopping longpoll"

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/LongPollService;->stopSelf()V

    goto/16 :goto_0

    .line 1420
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/LongPollService;->updateServerInfo()Z

    move-result v21

    .line 1421
    const/4 v15, 0x0

    .line 1422
    const-string/jumbo v2, "vk_longpoll"

    const-string/jumbo v3, "6 errors, reloading server info"

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1425
    :cond_f
    const-string/jumbo v2, "vk_longpoll"

    const-string/jumbo v3, "Connection error. Retry in 5 sec"

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1427
    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1431
    :goto_4
    add-int/lit8 v15, v15, 0x1

    .line 1432
    goto/16 :goto_1

    .line 1428
    :catch_0
    move-exception v25

    .line 1429
    .local v25, "x":Ljava/lang/Exception;
    invoke-static/range {v25 .. v25}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_4

    .line 1434
    .end local v25    # "x":Ljava/lang/Exception;
    :cond_10
    const/4 v2, 0x1

    sput-boolean v2, Lcom/vkcoffee/android/LongPollService;->longPollActive:Z

    .line 1436
    :try_start_1
    new-instance v20, Ljava/lang/String;

    const-string/jumbo v2, "UTF-8"

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1437
    .local v20, "resp":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Lcom/vkcoffee/android/Global;->replaceHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1438
    sget-boolean v2, Lcom/vkcoffee/android/LongPollService;->DEBUG:Z

    if-eqz v2, :cond_11

    .line 1439
    const-string/jumbo v2, "vk_longpoll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Response: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    :cond_11
    new-instance v2, Lorg/json/JSONTokener;

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/json/JSONObject;

    .line 1442
    .local v18, "r":Lorg/json/JSONObject;
    const-string/jumbo v2, "failed"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1443
    const-string/jumbo v2, "vk_longpoll"

    const-string/jumbo v3, "Got \'failed\', reloading server info"

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1444
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/LongPollService;->updateServerInfo()Z

    move-result v21

    .line 1445
    sget-boolean v2, Lcom/vkcoffee/android/LongPollService;->connected:Z

    if-eqz v2, :cond_3

    .line 1446
    const/4 v2, 0x0

    sput-boolean v2, Lcom/vkcoffee/android/LongPollService;->connected:Z

    .line 1447
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->broadcastStateChanged()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 1534
    .end local v18    # "r":Lorg/json/JSONObject;
    .end local v20    # "resp":Ljava/lang/String;
    :catch_1
    move-exception v25

    .line 1535
    .restart local v25    # "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk_longpoll"

    const-string/jumbo v3, "Exception while parsing"

    move-object/from16 v0, v25

    invoke-static {v2, v3, v0}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 1451
    .end local v25    # "x":Ljava/lang/Exception;
    .restart local v18    # "r":Lorg/json/JSONObject;
    .restart local v20    # "resp":Ljava/lang/String;
    :cond_12
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vkcoffee/android/LongPollService;->needResendOnline:Z

    if-eqz v2, :cond_13

    .line 1452
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/LongPollService;->sendOnline()V

    .line 1454
    :cond_13
    const-string/jumbo v2, "ts"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/vkcoffee/android/LongPollService;->ts:I

    .line 1455
    const-string/jumbo v2, "pts"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v17

    .line 1456
    .local v17, "pts":I
    if-lez v17, :cond_14

    .line 1457
    const-string/jumbo v2, "longpoll"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/vkcoffee/android/LongPollService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "pts"

    move/from16 v0, v17

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1459
    :cond_14
    const-string/jumbo v2, "updates"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 1460
    .local v22, "u":Lorg/json/JSONArray;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_5
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v13, v2, :cond_15

    .line 1461
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v11

    .line 1462
    .local v11, "ev":Lorg/json/JSONArray;
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v12

    .line 1464
    .local v12, "evtype":I
    packed-switch v12, :pswitch_data_0

    .line 1460
    :goto_6
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 1466
    :pswitch_0
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vkcoffee/android/LongPollService;->processUpdateCounter(I)V

    goto :goto_6

    .line 1470
    .end local v11    # "ev":Lorg/json/JSONArray;
    .end local v12    # "evtype":I
    :cond_15
    const/4 v13, 0x0

    :goto_7
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v13, v2, :cond_3

    .line 1471
    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v11

    .line 1472
    .restart local v11    # "ev":Lorg/json/JSONArray;
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v12

    .line 1473
    .restart local v12    # "evtype":I
    sparse-switch v12, :sswitch_data_0

    .line 1530
    const-string/jumbo v2, "vk_longpoll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unknown event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    :goto_8
    :sswitch_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 1475
    :sswitch_1
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    const/4 v2, 0x3

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    const/4 v2, 0x4

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v6

    const/4 v2, 0x6

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x5

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v2, 0x7

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v10

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v10}, Lcom/vkcoffee/android/LongPollService;->processMessage(IIIILjava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;I)V

    goto :goto_8

    .line 1478
    :sswitch_2
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/vkcoffee/android/LongPollService;->processClearFlags(III)V

    goto :goto_8

    .line 1481
    :sswitch_3
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v11, v4}, Lorg/json/JSONArray;->getInt(I)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/vkcoffee/android/LongPollService;->processAddFlags(III)V

    goto :goto_8

    .line 1487
    :sswitch_4
    const/16 v16, 0x1

    .line 1488
    .local v16, "onl":I
    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    and-int/lit16 v14, v2, 0xff

    .line 1489
    .local v14, "lpo":I
    const/4 v2, 0x1

    if-ne v14, v2, :cond_16

    .line 1490
    const/16 v16, 0x2

    .line 1492
    :cond_16
    const/4 v2, 0x4

    if-eq v14, v2, :cond_17

    const/4 v2, 0x2

    if-eq v14, v2, :cond_17

    const/4 v2, 0x3

    if-eq v14, v2, :cond_17

    const/4 v2, 0x5

    if-ne v14, v2, :cond_18

    .line 1493
    :cond_17
    const/16 v16, 0x3

    .line 1495
    :cond_18
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    neg-int v2, v2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v1}, Lcom/vkcoffee/android/LongPollService;->processOnlineChange(II)V

    goto/16 :goto_8

    .line 1500
    .end local v14    # "lpo":I
    .end local v16    # "onl":I
    :sswitch_5
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    neg-int v2, v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/vkcoffee/android/LongPollService;->processOnlineChange(II)V

    goto/16 :goto_8

    .line 1503
    :sswitch_6
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/vkcoffee/android/LongPollService;->processTyping(II)V

    goto/16 :goto_8

    .line 1506
    :sswitch_7
    const v2, 0x77359400

    const/4 v3, 0x2

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    add-int/2addr v2, v3

    const/4 v3, 0x1

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/vkcoffee/android/LongPollService;->processTyping(II)V

    goto/16 :goto_8

    .line 1519
    :sswitch_8
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/vkcoffee/android/LongPollService;->processReadUpto(IIZ)V

    goto/16 :goto_8

    .line 1522
    :sswitch_9
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    const/4 v3, 0x2

    invoke-virtual {v11, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/vkcoffee/android/LongPollService;->processReadUpto(IIZ)V

    goto/16 :goto_8

    .line 1525
    :sswitch_a
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/vkcoffee/android/LongPollService;->processNotifySettings(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_8

    .line 1538
    .end local v11    # "ev":Lorg/json/JSONArray;
    .end local v12    # "evtype":I
    .end local v13    # "i":I
    .end local v17    # "pts":I
    .end local v18    # "r":Lorg/json/JSONObject;
    .end local v19    # "rdata":[B
    .end local v20    # "resp":Ljava/lang/String;
    .end local v22    # "u":Lorg/json/JSONArray;
    .end local v24    # "url":Ljava/lang/String;
    :cond_19
    const-string/jumbo v2, "vk_longpoll"

    const-string/jumbo v3, "LongPoll exiting"

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    new-instance v2, Ljava/lang/Thread;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vkcoffee/android/LongPollService;->lpThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1464
    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch

    .line 1473
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x3 -> :sswitch_2
        0x4 -> :sswitch_1
        0x6 -> :sswitch_8
        0x7 -> :sswitch_9
        0x8 -> :sswitch_4
        0x9 -> :sswitch_5
        0x3d -> :sswitch_6
        0x3e -> :sswitch_7
        0x50 -> :sswitch_0
        0x72 -> :sswitch_a
    .end sparse-switch
.end method

.method public static sendAnalyticsNow()V
    .locals 3

    .prologue
    .line 1776
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getTrackEventsString()Ljava/lang/String;

    move-result-object v0

    .line 1777
    .local v0, "code":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1791
    :goto_0
    return-void

    .line 1780
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/api/VKAPIRequest;

    const-string/jumbo v2, "execute"

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "code"

    invoke-virtual {v1, v2, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    new-instance v2, Lcom/vkcoffee/android/LongPollService$13;

    invoke-direct {v2}, Lcom/vkcoffee/android/LongPollService$13;-><init>()V

    .line 1781
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 1790
    invoke-virtual {v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0
.end method

.method private sendOffline()V
    .locals 3

    .prologue
    .line 21
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "offline"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    const-string v0, "vk"

    const-string v1, "Sending offline VK Coffee ^-^ ."

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/vkcoffee/android/OnlineSNL;->setOffline()V

    .line 25
    :cond_0
    return-void
.end method

.method private sendOnline()V
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "offline"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/vkcoffee/android/LongPollService;->longPollRunning:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vkcoffee/android/AppStateTracker;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    const-string v0, "vk"

    const-string v1, "Sending online VK Coffee ^-^ ."

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/vkcoffee/android/OnlineSNL;->setOnline()V

    .line 18
    :cond_0
    return-void
.end method

.method public static setNumAppRequests(I)V
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 216
    invoke-static {p0}, Lcom/vkcoffee/android/LongPollService;->clampCounter(I)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/LongPollService;->numAppRequests:I

    .line 217
    return-void
.end method

.method public static setNumFriendRequests(I)V
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 262
    invoke-static {p0}, Lcom/vkcoffee/android/LongPollService;->clampCounter(I)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/LongPollService;->numFriendRequests:I

    .line 263
    return-void
.end method

.method public static setNumGroupInvitations(I)V
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 245
    invoke-static {p0}, Lcom/vkcoffee/android/LongPollService;->clampCounter(I)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/LongPollService;->numGroupInvitations:I

    .line 246
    return-void
.end method

.method public static setNumNewMessages(I)V
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 221
    invoke-static {p0}, Lcom/vkcoffee/android/LongPollService;->clampCounter(I)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/LongPollService;->numNewMessages:I

    .line 222
    return-void
.end method

.method public static setNumPhotosMarks(I)V
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 208
    invoke-static {p0}, Lcom/vkcoffee/android/LongPollService;->clampCounter(I)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/LongPollService;->numPhotosMarks:I

    .line 209
    return-void
.end method

.method public static setNumVideosMarks(I)V
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 212
    invoke-static {p0}, Lcom/vkcoffee/android/LongPollService;->clampCounter(I)I

    move-result v0

    sput v0, Lcom/vkcoffee/android/LongPollService;->numVideosMarks:I

    .line 213
    return-void
.end method

.method private start()V
    .locals 3

    .prologue
    .line 701
    const-string/jumbo v0, "vk_longpoll"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "started = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/vkcoffee/android/LongPollService;->started:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-boolean v0, p0, Lcom/vkcoffee/android/LongPollService;->started:Z

    if-eqz v0, :cond_0

    .line 709
    :goto_0
    return-void

    .line 705
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/vkcoffee/android/LongPollService;->lpThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 706
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/LongPollService;->started:Z

    .line 707
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->broadcastStateChanged()V

    goto :goto_0
.end method

.method private stop()V
    .locals 1

    .prologue
    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/LongPollService;->needStop:Z

    .line 713
    iget-object v0, p0, Lcom/vkcoffee/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/vkcoffee/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 716
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/LongPollService;->stopSelf()V

    .line 717
    const/4 v0, 0x0

    sput-object v0, Lcom/vkcoffee/android/Global;->longPoll:Lcom/vkcoffee/android/LongPollService;

    .line 718
    return-void
.end method

.method public static syncStateWithServer()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 364
    sget-boolean v7, Lcom/vkcoffee/android/LongPollService;->updating:Z

    if-eqz v7, :cond_1

    .line 365
    sget-boolean v7, Lcom/vkcoffee/android/LongPollService;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 366
    const-string/jumbo v7, "vk"

    const-string/jumbo v8, "already updating"

    invoke-static {v7, v8}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    .local v4, "pts":I
    :cond_0
    :goto_0
    return-void

    .line 370
    .end local v4    # "pts":I
    :cond_1
    sget-object v7, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v8, "longpoll"

    invoke-virtual {v7, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string/jumbo v8, "pts"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 377
    .restart local v4    # "pts":I
    invoke-static {}, Lcom/vkcoffee/android/NetworkStateReceiver;->isConnected()Z

    move-result v7

    if-nez v7, :cond_2

    .line 378
    const-string/jumbo v7, "vk"

    const-string/jumbo v8, "No network, won\'t update"

    invoke-static {v7, v8}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 381
    :cond_2
    sput-boolean v9, Lcom/vkcoffee/android/LongPollService;->updating:Z

    .line 383
    :try_start_0
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->broadcastStateChanged()V

    .line 384
    const-string/jumbo v7, "vk_longpoll"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Before get long poll history, pts="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    if-gtz v4, :cond_3

    .line 386
    invoke-static {}, Lcom/vkcoffee/android/data/Messages;->reset()V

    .line 387
    invoke-static {}, Lcom/vkcoffee/android/data/Messages;->resetCache()V

    .line 638
    :goto_1
    sget-object v7, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "android_id"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 639
    .local v0, "deviceID":Ljava/lang/String;
    new-instance v7, Lcom/vkcoffee/android/api/VKAPIRequest;

    const-string/jumbo v8, "account.getPushSettings"

    invoke-direct {v7, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "device_id"

    .line 640
    invoke-virtual {v7, v8, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v7

    new-instance v8, Lcom/vkcoffee/android/LongPollService$4;

    invoke-direct {v8}, Lcom/vkcoffee/android/LongPollService$4;-><init>()V

    .line 641
    invoke-virtual {v7, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v7

    .line 656
    invoke-virtual {v7}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    sput-boolean v10, Lcom/vkcoffee/android/LongPollService;->updating:Z

    .line 660
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->broadcastStateChanged()V

    goto :goto_0

    .line 389
    .end local v0    # "deviceID":Ljava/lang/String;
    :cond_3
    const/4 v7, 0x1

    :try_start_1
    new-array v3, v7, [I

    .line 390
    .local v3, "maxMid":[I
    new-instance v7, Lcom/vkcoffee/android/api/VKAPIRequest;

    const-string/jumbo v8, "execute.getMaxMsgIdNew"

    invoke-direct {v7, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    new-instance v8, Lcom/vkcoffee/android/LongPollService$2;

    invoke-direct {v8, v3}, Lcom/vkcoffee/android/LongPollService$2;-><init>([I)V

    .line 391
    invoke-virtual {v7, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v7

    .line 404
    invoke-virtual {v7}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    move-result v5

    .line 405
    .local v5, "r":Z
    if-nez v5, :cond_4

    .line 406
    new-instance v7, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Error getting max msg id"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 658
    .end local v3    # "maxMid":[I
    .end local v5    # "r":Z
    :catchall_0
    move-exception v7

    sput-boolean v10, Lcom/vkcoffee/android/LongPollService;->updating:Z

    throw v7

    .line 408
    .restart local v3    # "maxMid":[I
    .restart local v5    # "r":Z
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/vkcoffee/android/cache/Cache;->getMaxMsgId()I

    move-result v2

    .line 409
    .local v2, "localMaxMid":I
    const/4 v7, 0x0

    aget v7, v3, v7

    sub-int v1, v7, v2

    .line 410
    .local v1, "diff":I
    const-string/jumbo v7, "vk_longpoll"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Msg diff="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " [server="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x0

    aget v9, v3, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", client="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const/16 v7, 0x3e8

    if-lt v1, v7, :cond_5

    sget v7, Lcom/vkcoffee/android/Global;->uid:I

    const v8, 0x1a10c7

    if-eq v7, v8, :cond_5

    .line 412
    const-string/jumbo v7, "vk_longpoll"

    const-string/jumbo v8, "Too many new messages, resetting cache"

    invoke-static {v7, v8}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    invoke-static {}, Lcom/vkcoffee/android/data/Messages;->reset()V

    .line 414
    invoke-static {}, Lcom/vkcoffee/android/data/Messages;->resetCache()V

    .line 415
    sget-object v7, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v9, "com.vkcoffee.android.REFRESH_DIALOGS"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 658
    sput-boolean v10, Lcom/vkcoffee/android/LongPollService;->updating:Z

    goto/16 :goto_0

    .line 418
    :cond_5
    const/4 v7, 0x1

    :try_start_3
    new-array v6, v7, [Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-boolean v8, v6, v7

    .line 420
    .local v6, "sendNextRequest":[Z
    :cond_6
    sget-object v7, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v8, "longpoll"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string/jumbo v8, "pts"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 421
    const-string/jumbo v7, "vk_longpoll"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Get long poll history, old ts="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    new-instance v7, Lcom/vkcoffee/android/api/VKAPIRequest;

    const-string/jumbo v8, "messages.getLongPollHistory"

    invoke-direct {v7, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    const-string/jumbo v8, "pts"

    .line 423
    invoke-virtual {v7, v8, v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v7

    const-string/jumbo v8, "photo_sizes"

    const/4 v9, 0x1

    .line 424
    invoke-virtual {v7, v8, v9}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v7

    const-string/jumbo v8, "fields"

    const-string/jumbo v9, "first_name,last_name,photo_100,photo_50"

    .line 425
    invoke-virtual {v7, v8, v9}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v7

    const-string/jumbo v8, "msgs_limit"

    const/16 v9, 0xfa

    .line 426
    invoke-virtual {v7, v8, v9}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v7

    const-string/jumbo v8, "events_limit"

    const/16 v9, 0x1388

    .line 427
    invoke-virtual {v7, v8, v9}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v7

    new-instance v8, Lcom/vkcoffee/android/LongPollService$3;

    invoke-direct {v8, v6}, Lcom/vkcoffee/android/LongPollService$3;-><init>([Z)V

    .line 429
    invoke-virtual {v7, v8}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v7

    .line 633
    invoke-virtual {v7}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    .line 634
    const/4 v7, 0x0

    aget-boolean v7, v6, v7

    if-nez v7, :cond_6

    .line 635
    const-string/jumbo v7, "vk_longpoll"

    const-string/jumbo v8, "Get long poll hisrory done."

    invoke-static {v7, v8}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method public static updateCounters()V
    .locals 3

    .prologue
    .line 721
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "uid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 768
    :goto_0
    return-void

    .line 724
    :cond_0
    new-instance v0, Lcom/vkcoffee/android/api/VKAPIRequest;

    const-string/jumbo v1, "execute.getCountersAndInfo"

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/LongPollService$6;

    invoke-direct {v1}, Lcom/vkcoffee/android/LongPollService$6;-><init>()V

    .line 725
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 767
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0
.end method

.method public static updateNotification(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 22
    .param p0, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "chatTitle"    # Ljava/lang/String;
    .param p2, "userName"    # Ljava/lang/String;
    .param p3, "userPhoto"    # Ljava/lang/String;
    .param p4, "forceSound"    # Z
    .param p5, "userId"    # I

    .prologue
    .line 1559
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v3, "notify"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 1560
    .local v14, "nprefs":Landroid/content/SharedPreferences;
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 1561
    .local v16, "prefs":Landroid/content/SharedPreferences;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dnd"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v20, 0x3e8

    div-long v4, v4, v20

    long-to-int v3, v4

    if-le v2, v3, :cond_1

    .line 1562
    const-string/jumbo v2, "vk"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dnd for peer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is active, is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dnd"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v14, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    :cond_0
    :goto_0
    return-void

    .line 1565
    :cond_1
    const-string/jumbo v2, "dnd_end"

    const-wide/16 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 1566
    const-string/jumbo v2, "vk"

    const-string/jumbo v3, "global dnd is active"

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1569
    :cond_2
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v2, 0x77359400

    move/from16 v0, p5

    if-ge v0, v2, :cond_3

    const-string/jumbo v2, "PrivateMessages"

    :goto_1
    invoke-static {v3, v2}, Lcom/vkcoffee/android/NotificationUtils;->areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1570
    const-string/jumbo v2, "vk"

    const-string/jumbo v3, "message notifications disabled"

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1569
    :cond_3
    const-string/jumbo v2, "ChatMessages"

    goto :goto_1

    .line 1577
    :cond_4
    sget-object v2, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->activeInstance:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    if-eqz v2, :cond_6

    sget-object v2, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->activeInstance:Lcom/vkcoffee/android/fragments/messages/ChatFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/messages/ChatFragment;->getPeerID()I

    move-result v2

    move/from16 v0, p5

    if-ne v2, v0, :cond_6

    .line 1578
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mute"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v14, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v2, 0x77359400

    move/from16 v0, p5

    if-ge v0, v2, :cond_5

    const-string/jumbo v2, "PrivateMessages"

    :goto_2
    invoke-static {v3, v2}, Lcom/vkcoffee/android/NotificationUtils;->isSoundEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1579
    invoke-static/range {p5 .. p5}, Lcom/vkcoffee/android/LongPollService;->playNotificationSound(I)V

    goto :goto_0

    .line 1578
    :cond_5
    const-string/jumbo v2, "ChatMessages"

    goto :goto_2

    .line 1585
    :cond_6
    :try_start_0
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/NotificationManager;

    .line 1586
    .local v12, "mNotificationManager":Landroid/app/NotificationManager;
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->notifyCountersChanged()V

    .line 1587
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumNewMessages()I

    move-result v2

    if-nez v2, :cond_7

    .line 1588
    const/4 v2, 0x0

    sput v2, Lcom/vkcoffee/android/LongPollService;->prevNumNewMessages:I

    .line 1589
    const/16 v2, 0xa

    invoke-virtual {v12, v2}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1626
    .end local v12    # "mNotificationManager":Landroid/app/NotificationManager;
    :catch_0
    move-exception v18

    .line 1627
    .local v18, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    move-object/from16 v0, v18

    invoke-static {v2, v0}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 1595
    .end local v18    # "x":Ljava/lang/Exception;
    .restart local v12    # "mNotificationManager":Landroid/app/NotificationManager;
    :cond_7
    :try_start_1
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    const-string/jumbo v3, "vkontakte"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "chat"

    .line 1596
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "peer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1597
    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string/jumbo v4, "title"

    if-eqz p1, :cond_a

    move-object/from16 v2, p1

    .line 1598
    :goto_3
    invoke-virtual {v3, v4, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v10

    .line 1599
    .local v10, "bldr":Landroid/net/Uri$Builder;
    if-eqz p3, :cond_8

    .line 1600
    const-string/jumbo v2, "photo"

    move-object/from16 v0, p3

    invoke-virtual {v10, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1602
    :cond_8
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/vkcoffee/android/LinkRedirActivity;->createIntentForNotification(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v13

    .line 1603
    .local v13, "notificationIntent":Landroid/content/Intent;
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1604
    const/high16 v2, 0x10000000

    invoke-virtual {v13, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1605
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v13, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 1607
    .local v7, "contentIntent":Landroid/app/PendingIntent;
    new-instance v11, Landroid/content/Intent;

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-class v3, Lcom/vkcoffee/android/LongPollService;

    invoke-direct {v11, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1608
    .local v11, "cancelIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.vkcoffee.android.CANCEL_NOTIFICATION"

    invoke-virtual {v11, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1609
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v11, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 1611
    .local v15, "pendingCancel":Landroid/app/PendingIntent;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080306

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1612
    .local v8, "ticker":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1613
    .local v17, "truncatedChatTitle":Ljava/lang/String;
    if-eqz p1, :cond_9

    .line 1614
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x28

    if-le v2, v3, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    const/16 v4, 0x28

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1616
    :cond_9
    :goto_5
    if-eqz p1, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_6
    if-eqz p1, :cond_e

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f080307

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_7
    move-object/from16 v2, p0

    move-object/from16 v4, p2

    move-object/from16 v6, p3

    move/from16 v9, p5

    invoke-static/range {v2 .. v9}, Lcom/vkcoffee/android/LongPollService;->createNotification(Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object v2

    sput-object v2, Lcom/vkcoffee/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 1617
    sget-object v2, Lcom/vkcoffee/android/LongPollService;->notification1:Landroid/app/Notification;

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 1618
    const-string/jumbo v2, "vk_longpoll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget v4, Lcom/vkcoffee/android/LongPollService;->prevNumNewMessages:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumNewMessages()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1619
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    sget-object v4, Lcom/vkcoffee/android/LongPollService;->notification1:Landroid/app/Notification;

    const v2, 0x77359400

    move/from16 v0, p5

    if-ge v0, v2, :cond_f

    const-string/jumbo v2, "PrivateMessages"

    :goto_8
    const/4 v5, 0x1

    invoke-static {v3, v4, v2, v5}, Lcom/vkcoffee/android/NotificationUtils;->applySettings(Landroid/content/Context;Landroid/app/Notification;Ljava/lang/String;Z)V

    .line 1620
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumNewMessages()I

    move-result v2

    sput v2, Lcom/vkcoffee/android/LongPollService;->prevNumNewMessages:I

    .line 1621
    sget-object v2, Lcom/vkcoffee/android/LongPollService;->notification1:Landroid/app/Notification;

    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumNewMessages()I

    move-result v3

    iput v3, v2, Landroid/app/Notification;->number:I

    .line 1622
    sget-object v2, Lcom/vkcoffee/android/LongPollService;->notification1:Landroid/app/Notification;

    iput-object v15, v2, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 1624
    const/16 v2, 0xa

    invoke-virtual {v12, v2}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1625
    const/16 v2, 0xa

    sget-object v3, Lcom/vkcoffee/android/LongPollService;->notification1:Landroid/app/Notification;

    invoke-virtual {v12, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .end local v7    # "contentIntent":Landroid/app/PendingIntent;
    .end local v8    # "ticker":Ljava/lang/String;
    .end local v10    # "bldr":Landroid/net/Uri$Builder;
    .end local v11    # "cancelIntent":Landroid/content/Intent;
    .end local v13    # "notificationIntent":Landroid/content/Intent;
    .end local v15    # "pendingCancel":Landroid/app/PendingIntent;
    .end local v17    # "truncatedChatTitle":Ljava/lang/String;
    :cond_a
    move-object/from16 v2, p2

    .line 1597
    goto/16 :goto_3

    .restart local v7    # "contentIntent":Landroid/app/PendingIntent;
    .restart local v10    # "bldr":Landroid/net/Uri$Builder;
    .restart local v11    # "cancelIntent":Landroid/content/Intent;
    .restart local v13    # "notificationIntent":Landroid/content/Intent;
    .restart local v15    # "pendingCancel":Landroid/app/PendingIntent;
    :cond_b
    move-object/from16 v2, p2

    .line 1611
    goto/16 :goto_4

    .restart local v8    # "ticker":Ljava/lang/String;
    .restart local v17    # "truncatedChatTitle":Ljava/lang/String;
    :cond_c
    move-object/from16 v17, p1

    .line 1614
    goto/16 :goto_5

    :cond_d
    move-object/from16 v3, p2

    .line 1616
    goto/16 :goto_6

    :cond_e
    const-string/jumbo v5, " "

    goto :goto_7

    .line 1619
    :cond_f
    const-string/jumbo v2, "ChatMessages"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_8
.end method

.method private updateServerInfo()Z
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 271
    :try_start_0
    sget-boolean v5, Lcom/vkcoffee/android/Global;->inited:Z

    if-nez v5, :cond_0

    .line 272
    const/4 v5, 0x1

    sput-boolean v5, Lcom/vkcoffee/android/Global;->inited:Z

    .line 273
    invoke-virtual {p0}, Lcom/vkcoffee/android/LongPollService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sput-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    .line 274
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/vkcoffee/android/LongPollService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 275
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "sid"

    invoke-interface {v0, v5}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 276
    const-string/jumbo v5, "uid"

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    sput v5, Lcom/vkcoffee/android/Global;->uid:I

    .line 280
    const-string/jumbo v5, "sid"

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    .line 281
    const-string/jumbo v5, "secret"

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/vkcoffee/android/Global;->secret:Ljava/lang/String;

    .line 284
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :cond_0
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/vkcoffee/android/LongPollService;->server:Ljava/lang/String;

    .line 288
    new-instance v5, Lcom/vkcoffee/android/api/VKAPIRequest;

    const-string/jumbo v6, "execute"

    invoke-direct {v5, v6}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "code"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "return {c:API.getCounters(),s:API.messages.getLongPollServer({use_ssl:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    .line 289
    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v8

    const-string/jumbo v9, "useHTTPS"

    const/4 v10, 0x0

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1

    :goto_0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, "}),fo:API.friends.getOnline({online_mobile:1})};"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    new-instance v5, Lcom/vkcoffee/android/LongPollService$1;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/LongPollService$1;-><init>(Lcom/vkcoffee/android/LongPollService;)V

    .line 290
    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v4

    .line 333
    invoke-virtual {v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    move-result v1

    .line 334
    .local v1, "res":Z
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->syncStateWithServer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    .end local v1    # "res":Z
    :goto_1
    return v1

    :cond_1
    move v4, v3

    .line 289
    goto :goto_0

    .line 336
    :catch_0
    move-exception v2

    .line 337
    .local v2, "x":Ljava/lang/Exception;
    sget-boolean v4, Lcom/vkcoffee/android/LongPollService;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 338
    const-string/jumbo v4, "vk"

    const-string/jumbo v5, "error updating longpoll server"

    invoke-static {v4, v5, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    move v1, v3

    .line 341
    goto :goto_1
.end method


# virtual methods
.method public cancelDelayedStop()V
    .locals 1

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/vkcoffee/android/LongPollService;->stopDelayTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 2011
    iget-object v0, p0, Lcom/vkcoffee/android/LongPollService;->stopDelayTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2012
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/LongPollService;->stopDelayTimer:Ljava/util/Timer;

    .line 2023
    :cond_0
    :goto_0
    return-void

    .line 2014
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/LongPollService;->needStop:Z

    .line 2019
    iget-object v0, p0, Lcom/vkcoffee/android/LongPollService;->lpThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/vkcoffee/android/LongPollService;->started:Z

    if-nez v0, :cond_0

    .line 2020
    :cond_2
    invoke-direct {p0}, Lcom/vkcoffee/android/LongPollService;->start()V

    goto :goto_0
.end method

.method public getTypings(I)Ljava/util/List;
    .locals 18
    .param p1, "peer"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 910
    const v11, 0x77359400

    move/from16 v0, p1

    if-ge v0, v11, :cond_1

    .line 911
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/LongPollService;->typings:Ljava/util/HashMap;

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/LongPollService;->typings:Ljava/util/HashMap;

    move/from16 v0, p1

    int-to-long v12, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/LongPollService;->typings:Ljava/util/HashMap;

    move/from16 v0, p1

    int-to-long v12, v0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/LongPollService;->typings:Ljava/util/HashMap;

    move/from16 v0, p1

    int-to-long v14, v0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x1b58

    cmp-long v11, v12, v14

    if-gez v11, :cond_0

    .line 912
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Integer;

    const/4 v12, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 932
    :goto_0
    return-object v6

    .line 914
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 917
    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/LongPollService;->typingLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v11}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    :goto_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/LongPollService;->typings:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 922
    .local v4, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 923
    .local v6, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 924
    .local v2, "k":J
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/LongPollService;->typings:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 925
    .local v8, "time":J
    long-to-int v5, v2

    .line 926
    .local v5, "peerID":I
    const/16 v11, 0x20

    shr-long v14, v2, v11

    long-to-int v7, v14

    .line 927
    .local v7, "userID":I
    move/from16 v0, p1

    if-ne v5, v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    const-wide/16 v16, 0x1b58

    cmp-long v11, v14, v16

    if-gez v11, :cond_2

    .line 928
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 918
    .end local v2    # "k":J
    .end local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v5    # "peerID":I
    .end local v6    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v7    # "userID":I
    .end local v8    # "time":J
    :catch_0
    move-exception v10

    .line 919
    .local v10, "x":Ljava/lang/Exception;
    invoke-static {v10}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_1

    .line 931
    .end local v10    # "x":Ljava/lang/Exception;
    .restart local v4    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Long;>;"
    .restart local v6    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/vkcoffee/android/LongPollService;->typingLock:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v11}, Ljava/util/concurrent/Semaphore;->release()V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 1822
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1840
    const-string/jumbo v0, "vk_longpoll"

    const-string/jumbo v1, "Starting LongPoll service."

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    sput-object p0, Lcom/vkcoffee/android/Global;->longPoll:Lcom/vkcoffee/android/LongPollService;

    .line 1842
    iget-object v0, p0, Lcom/vkcoffee/android/LongPollService;->typingCancelThread:Lcom/vkcoffee/android/background/WorkerThread;

    invoke-virtual {v0}, Lcom/vkcoffee/android/background/WorkerThread;->start()V

    .line 1843
    const-string/jumbo v0, "longpoll"

    invoke-virtual {p0, v0, v2}, Lcom/vkcoffee/android/LongPollService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "new_system"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vkcoffee/android/LongPollService;->newSystem:Z

    .line 1844
    invoke-direct {p0}, Lcom/vkcoffee/android/LongPollService;->start()V

    .line 1845
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1849
    const-string/jumbo v0, "vk_longpoll"

    const-string/jumbo v1, "Stopping LongPoll service."

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    invoke-direct {p0}, Lcom/vkcoffee/android/LongPollService;->sendOffline()V

    .line 1851
    invoke-direct {p0}, Lcom/vkcoffee/android/LongPollService;->stop()V

    .line 1852
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 1827
    const-string/jumbo v0, "LocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received start id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1828
    if-eqz p1, :cond_0

    const-string/jumbo v0, "com.vkcoffee.android.CANCEL_NOTIFICATION"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1829
    const/4 v0, 0x0

    sput-object v0, Lcom/vkcoffee/android/LongPollService;->notification1:Landroid/app/Notification;

    .line 1831
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 938
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string/jumbo v1, "LongPoll"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 939
    iget-boolean v0, p0, Lcom/vkcoffee/android/LongPollService;->needStop:Z

    if-nez v0, :cond_0

    .line 940
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkcoffee/android/LongPollService;->longPollRunning:Z

    .line 941
    invoke-direct {p0}, Lcom/vkcoffee/android/LongPollService;->runLongPoll()V

    .line 942
    sput-boolean v2, Lcom/vkcoffee/android/LongPollService;->longPollRunning:Z

    sput-boolean v2, Lcom/vkcoffee/android/LongPollService;->longPollActive:Z

    .line 944
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/LongPollService;->lpThread:Ljava/lang/Thread;

    .line 945
    iput-boolean v2, p0, Lcom/vkcoffee/android/LongPollService;->started:Z

    .line 946
    return-void
.end method

.method public setNumUnread(I)V
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 692
    invoke-static {p1}, Lcom/vkcoffee/android/LongPollService;->setNumNewMessages(I)V

    .line 693
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->notifyCountersChanged()V

    .line 694
    invoke-static {}, Lcom/vkcoffee/android/LongPollService;->getNumNewMessages()I

    move-result v1

    if-nez v1, :cond_0

    .line 695
    const-string/jumbo v1, "notification"

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/LongPollService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 696
    .local v0, "mgr":Landroid/app/NotificationManager;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 698
    .end local v0    # "mgr":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method

.method public startSendingOnline()V
    .locals 6

    .prologue
    .line 1715
    new-instance v1, Lcom/vkcoffee/android/LongPollService$10;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/LongPollService$10;-><init>(Lcom/vkcoffee/android/LongPollService;)V

    .line 1722
    .local v1, "tt":Ljava/util/TimerTask;
    iget-object v0, p0, Lcom/vkcoffee/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1724
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1728
    :cond_0
    :goto_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    .line 1729
    iget-object v0, p0, Lcom/vkcoffee/android/LongPollService;->onlineTimer:Ljava/util/Timer;

    const-wide/16 v2, 0x2710

    const-wide/32 v4, 0x1d4c0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 1730
    return-void

    .line 1725
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public stopDelayed()V
    .locals 6

    .prologue
    .line 1991
    iget-object v1, p0, Lcom/vkcoffee/android/LongPollService;->stopDelayTimer:Ljava/util/Timer;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/vkcoffee/android/LongPollService;->needStop:Z

    if-eqz v1, :cond_1

    .line 2007
    :cond_0
    :goto_0
    return-void

    .line 1995
    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/LongPollService;->stopDelayTimer:Ljava/util/Timer;

    .line 1996
    iget-object v1, p0, Lcom/vkcoffee/android/LongPollService;->stopDelayTimer:Ljava/util/Timer;

    new-instance v2, Lcom/vkcoffee/android/LongPollService$14;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/LongPollService$14;-><init>(Lcom/vkcoffee/android/LongPollService;)V

    const-wide/32 v4, 0x2bf20

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2004
    :catch_0
    move-exception v0

    .line 2005
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method
