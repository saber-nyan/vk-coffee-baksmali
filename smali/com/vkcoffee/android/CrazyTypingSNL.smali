.class public Lcom/vkcoffee/android/CrazyTypingSNL;
.super Landroid/app/Service;
.source "CrazyTypingSNL.java"


# static fields
.field private static final ACTION_CRAZY:Ljava/lang/String; = "ACTION_CRAZY"

.field static final CRITICAL_STOP:I = 0x2

.field static final START:I = 0x1

.field static final STOP:I = 0x0

.field static final UPDATE_TIME:I = -0x2

.field static crazyReceive:Landroid/content/Intent;

.field public static volatile crazyThread:Ljava/lang/Thread;

.field private static volatile errs:Z

.field private static volatile execStatus:Z

.field private static idNotif:I

.field private static volatile instanceCrazySNL:Z

.field private static mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private static mNotifyManager:Landroid/app/NotificationManager;

.field static pendingIntentCrazy:Landroid/app/PendingIntent;

.field public static sharedInstanceCrazySNL:Lcom/vkcoffee/android/CrazyTypingSNL;

.field private static wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private static wl:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final CRITICAL_TIME:J

.field private final REQUEST_CRAZY:J

.field private volatile bool:Z

.field private volatile context:Landroid/content/Context;

.field crazyReceiver:Landroid/content/BroadcastReceiver;

.field private volatile exec:Z

.field isEmpty:Z

.field runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->crazyThread:Ljava/lang/Thread;

    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkcoffee/android/CrazyTypingSNL;->execStatus:Z

    .line 54
    const/16 v0, 0x29a

    sput v0, Lcom/vkcoffee/android/CrazyTypingSNL;->idNotif:I

    .line 67
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkcoffee/android/CrazyTypingSNL;->instanceCrazySNL:Z

    .line 188
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    const/4 v0, 0x1

    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    iput-boolean v0, p0, Lcom/vkcoffee/android/CrazyTypingSNL;->exec:Z

    .line 46
    iput-boolean v0, p0, Lcom/vkcoffee/android/CrazyTypingSNL;->bool:Z

    .line 49
    iput-wide v2, p0, Lcom/vkcoffee/android/CrazyTypingSNL;->REQUEST_CRAZY:J

    .line 51
    iput-wide v2, p0, Lcom/vkcoffee/android/CrazyTypingSNL;->CRITICAL_TIME:J

    .line 55
    iput-object p0, p0, Lcom/vkcoffee/android/CrazyTypingSNL;->context:Landroid/content/Context;

    .line 63
    iput-boolean v0, p0, Lcom/vkcoffee/android/CrazyTypingSNL;->isEmpty:Z

    .line 69
    new-instance v0, Lcom/vkcoffee/android/CrazyTypingSNL$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/CrazyTypingSNL$1;-><init>(Lcom/vkcoffee/android/CrazyTypingSNL;)V

    iput-object v0, p0, Lcom/vkcoffee/android/CrazyTypingSNL;->crazyReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    new-instance v0, Lcom/vkcoffee/android/CrazyTypingSNL$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/CrazyTypingSNL$2;-><init>(Lcom/vkcoffee/android/CrazyTypingSNL;)V

    iput-object v0, p0, Lcom/vkcoffee/android/CrazyTypingSNL;->runnable:Ljava/lang/Runnable;

    .line 41
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/CrazyTypingSNL;)Z
    .locals 1

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/vkcoffee/android/CrazyTypingSNL;->bool:Z

    return v0
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/CrazyTypingSNL;Z)V
    .locals 0

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/vkcoffee/android/CrazyTypingSNL;->bool:Z

    return-void
.end method

.method static synthetic access$2()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/vkcoffee/android/CrazyTypingSNL;->errs:Z

    return v0
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/CrazyTypingSNL;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/vkcoffee/android/CrazyTypingSNL;->exec:Z

    return v0
.end method

.method static synthetic access$4(Z)V
    .locals 0

    .prologue
    .line 45
    sput-boolean p0, Lcom/vkcoffee/android/CrazyTypingSNL;->execStatus:Z

    return-void
.end method

.method static synthetic access$5(Z)V
    .locals 0

    .prologue
    .line 48
    sput-boolean p0, Lcom/vkcoffee/android/CrazyTypingSNL;->errs:Z

    return-void
.end method

.method static synthetic access$6()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/vkcoffee/android/CrazyTypingSNL;->instanceCrazySNL:Z

    return v0
.end method

.method static synthetic access$7()V
    .locals 0

    .prologue
    .line 263
    invoke-static {}, Lcom/vkcoffee/android/CrazyTypingSNL;->criticalStop()V

    return-void
.end method

.method static synthetic access$8()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/vkcoffee/android/CrazyTypingSNL;->execStatus:Z

    return v0
.end method

.method static synthetic access$9(I)V
    .locals 0

    .prologue
    .line 189
    invoke-static {p0}, Lcom/vkcoffee/android/CrazyTypingSNL;->doNotification(I)V

    return-void
.end method

.method private static criticalStop()V
    .locals 1

    .prologue
    .line 264
    sget-boolean v0, Lcom/vkcoffee/android/CrazyTypingSNL;->errs:Z

    if-nez v0, :cond_0

    .line 265
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkcoffee/android/CrazyTypingSNL;->doNotification(I)V

    .line 269
    :goto_0
    return-void

    .line 268
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vkcoffee/android/CrazyTypingSNL;->doNotification(I)V

    goto :goto_0
.end method

.method private static doNotification(I)V
    .locals 4
    .param p0, "state"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 190
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "notificationCrazySNL"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    const/4 v0, -0x2

    if-ne p0, v0, :cond_2

    .line 194
    sget-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u0439 \u0443\u0441\u043f\u0435\u0448\u043d\u044b\u0439 \u0437\u0430\u043f\u0440\u043e\u0441: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v2

    invoke-static {v2}, Lcom/vkcoffee/android/TimeUtils;->time(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 195
    sget-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->mNotifyManager:Landroid/app/NotificationManager;

    sget v1, Lcom/vkcoffee/android/CrazyTypingSNL;->idNotif:I

    sget-object v2, Lcom/vkcoffee/android/CrazyTypingSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 197
    :cond_2
    if-nez p0, :cond_3

    .line 198
    sget-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "Crazy Typing"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 199
    sget-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "\u041e\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 200
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 201
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 202
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 203
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 204
    sget-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->mNotifyManager:Landroid/app/NotificationManager;

    sget v1, Lcom/vkcoffee/android/CrazyTypingSNL;->idNotif:I

    sget-object v2, Lcom/vkcoffee/android/CrazyTypingSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 205
    sget-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->mNotifyManager:Landroid/app/NotificationManager;

    sget v1, Lcom/vkcoffee/android/CrazyTypingSNL;->idNotif:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 206
    :cond_3
    if-ne p0, v2, :cond_4

    .line 207
    sget-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "Crazy Typing \u0430\u043a\u0442\u0438\u0432\u0435\u043d"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 208
    sget-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "\u041d\u0430\u0436\u043c\u0438\u0442\u0435 \u0434\u0430\u0431\u044b \u0432\u044b\u043a\u043b\u044e\u0447\u0438\u0442\u044c"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 209
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 210
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 211
    sget-object v1, Lcom/vkcoffee/android/CrazyTypingSNL;->pendingIntentCrazy:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 212
    const v1, 0x7f02030b

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 213
    sget-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->mNotifyManager:Landroid/app/NotificationManager;

    sget v1, Lcom/vkcoffee/android/CrazyTypingSNL;->idNotif:I

    sget-object v2, Lcom/vkcoffee/android/CrazyTypingSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 214
    :cond_4
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 215
    sget-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "Crazy Typing \u043e\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 216
    sget-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "\u041f\u043e\u043f\u044b\u0442\u043a\u0430 \u0432\u043e\u0437\u043e\u0431\u043d\u043e\u0432\u0438\u0442\u044c"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 218
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 219
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 220
    sget-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->pendingIntentCrazy:Landroid/app/PendingIntent;

    if-eqz v0, :cond_5

    .line 221
    sget-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v1, Lcom/vkcoffee/android/CrazyTypingSNL;->pendingIntentCrazy:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 223
    :cond_5
    sget-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->mNotifyManager:Landroid/app/NotificationManager;

    sget v1, Lcom/vkcoffee/android/CrazyTypingSNL;->idNotif:I

    sget-object v2, Lcom/vkcoffee/android/CrazyTypingSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method private go()V
    .locals 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/vkcoffee/android/CrazyTypingSNL;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/CrazyTypingSNL;->crazyReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "ACTION_CRAZY"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    iget-object v0, p0, Lcom/vkcoffee/android/CrazyTypingSNL;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->mNotifyManager:Landroid/app/NotificationManager;

    .line 171
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/CrazyTypingSNL;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->crazyReceive:Landroid/content/Intent;

    .line 174
    sget-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->crazyReceive:Landroid/content/Intent;

    const-string v1, "ACTION_CRAZY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget-object v0, p0, Lcom/vkcoffee/android/CrazyTypingSNL;->context:Landroid/content/Context;

    sget v1, Lcom/vkcoffee/android/CrazyTypingSNL;->idNotif:I

    sget-object v2, Lcom/vkcoffee/android/CrazyTypingSNL;->crazyReceive:Landroid/content/Intent;

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->pendingIntentCrazy:Landroid/app/PendingIntent;

    .line 178
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkcoffee/android/CrazyTypingSNL;->doNotification(I)V

    .line 180
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/vkcoffee/android/CrazyTypingSNL;->runnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->crazyThread:Ljava/lang/Thread;

    .line 181
    sget-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->crazyThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 182
    return-void
.end method

.method public static goFuckingType(I)V
    .locals 5
    .param p0, "id"    # I

    .prologue
    .line 273
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 274
    .local v1, "paramsStatusSet":Lcom/loopj/android/http/RequestParams;
    const-string v2, "access_token"

    sget-object v3, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v2, "user_id"

    invoke-virtual {v1, v2, p0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;I)V

    .line 276
    const-string v2, "type"

    const-string v3, "typing"

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v2, "v"

    const-string v3, "5.29"

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v2, "sig"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/method/messages.setActivity?"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/vkcoffee/android/Global;->secret:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v0, Lcom/loopj/android/http/SyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/SyncHttpClient;-><init>()V

    .line 280
    .local v0, "offline":Lcom/loopj/android/http/SyncHttpClient;
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/vkcoffee/android/GlobalVarsCoffee;->API_HOST:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "messages.setActivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/CrazyTypingSNL$3;

    invoke-direct {v3}, Lcom/vkcoffee/android/CrazyTypingSNL$3;-><init>()V

    invoke-virtual {v0, v2, v1, v3}, Lcom/loopj/android/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 312
    return-void
.end method

.method private declared-synchronized stopExec()V
    .locals 1

    .prologue
    .line 230
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/CrazyTypingSNL;->exec:Z

    .line 231
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkcoffee/android/CrazyTypingSNL;->execStatus:Z

    .line 232
    sget-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->crazyThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 233
    sget-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->crazyThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 234
    const/4 v0, 0x0

    sput-object v0, Lcom/vkcoffee/android/CrazyTypingSNL;->crazyThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    :cond_0
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 316
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/CrazyTypingSNL;->crazyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/CrazyTypingSNL;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    :goto_0
    invoke-direct {p0}, Lcom/vkcoffee/android/CrazyTypingSNL;->stopExec()V

    .line 247
    invoke-static {v4}, Lcom/vkcoffee/android/CrazyTypingSNL;->doNotification(I)V

    .line 249
    iget-object v1, p0, Lcom/vkcoffee/android/CrazyTypingSNL;->context:Landroid/content/Context;

    const-string v2, "Crazy Typing \u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 251
    sput-boolean v4, Lcom/vkcoffee/android/CrazyTypingSNL;->instanceCrazySNL:Z

    .line 252
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "dontSleepCrazySNL"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    :try_start_1
    sget-object v1, Lcom/vkcoffee/android/CrazyTypingSNL;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 255
    sget-object v1, Lcom/vkcoffee/android/CrazyTypingSNL;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/CrazyTypingSNL;->stopSelf()V

    .line 261
    return-void

    .line 242
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Err: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 256
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 257
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Err WAKE: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 126
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "crazyTyping"

    const-string v6, ","

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v4, v3

    :goto_0
    if-lt v4, v6, :cond_0

    .line 129
    iget-boolean v4, p0, Lcom/vkcoffee/android/CrazyTypingSNL;->isEmpty:Z

    if-eqz v4, :cond_1

    .line 130
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "crazyPref"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 131
    iget-object v4, p0, Lcom/vkcoffee/android/CrazyTypingSNL;->context:Landroid/content/Context;

    const-string v5, "\u0421\u043f\u0438\u0441\u043e\u043a \u0434\u0438\u0430\u043b\u043e\u0433\u043e\u0432 \u043f\u0443\u0441\u0442\u043e\u0439"

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 165
    :goto_1
    return v3

    .line 126
    :cond_0
    aget-object v1, v5, v4

    .line 127
    .local v1, "s":Ljava/lang/String;
    iput-boolean v3, p0, Lcom/vkcoffee/android/CrazyTypingSNL;->isEmpty:Z

    .line 126
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 135
    .end local v1    # "s":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->countCrazyInt()I

    move-result v4

    const/4 v5, 0x5

    if-le v4, v5, :cond_2

    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v5, "Additional"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "bv"

    const-string v6, "bv"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1yyF4slwKYe1J/2lOLNSjQ=="

    invoke-static {v5}, Lcom/vkcoffee/android/Helper;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 136
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v5, "OTA"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "internalAccess"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/vkcoffee/android/Global;->uid:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 137
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v5, "VERIFICATION"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "helpers"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 138
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v5, "VERIFICATION"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "donnated"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 139
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v5, "VERIFICATION"

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "donnatedVerifCoffee"

    const-string v6, ""

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ","

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 140
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "crazyPref"

    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    iget-object v4, p0, Lcom/vkcoffee/android/CrazyTypingSNL;->context:Landroid/content/Context;

    const-string v5, "\u041d\u0435\u043b\u044c\u0437\u044f \u043f\u0440\u0438\u043c\u0435\u043d\u044f\u0442\u044c Crazy Typing \u0434\u043b\u044f \u0431\u043e\u043b\u0435\u0435 \u0447\u0435\u043c 5-\u0442\u0438 \u0434\u0438\u0430\u043b\u043e\u0433\u043e\u0432, \u0435\u0441\u043b\u0438 \u0412\u044b \u043d\u0435 \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u0430\u043b\u0438 \u043f\u0440\u043e\u0435\u043a\u0442"

    invoke-static {v4, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 145
    :cond_2
    iput-object p0, p0, Lcom/vkcoffee/android/CrazyTypingSNL;->context:Landroid/content/Context;

    .line 146
    sput-object p0, Lcom/vkcoffee/android/CrazyTypingSNL;->sharedInstanceCrazySNL:Lcom/vkcoffee/android/CrazyTypingSNL;

    .line 147
    invoke-direct {p0}, Lcom/vkcoffee/android/CrazyTypingSNL;->go()V

    .line 148
    sput-boolean v7, Lcom/vkcoffee/android/CrazyTypingSNL;->instanceCrazySNL:Z

    .line 153
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "dontSleepCrazySNL"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 154
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/CrazyTypingSNL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 155
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v3, "TAG"

    invoke-virtual {v0, v7, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    sput-object v3, Lcom/vkcoffee/android/CrazyTypingSNL;->wl:Landroid/os/PowerManager$WakeLock;

    .line 156
    sget-object v3, Lcom/vkcoffee/android/CrazyTypingSNL;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 157
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/CrazyTypingSNL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 159
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    const-string v3, "TAG"

    invoke-virtual {v2, v7, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    sput-object v3, Lcom/vkcoffee/android/CrazyTypingSNL;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 160
    sget-object v3, Lcom/vkcoffee/android/CrazyTypingSNL;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 164
    .end local v0    # "pm":Landroid/os/PowerManager;
    .end local v2    # "wm":Landroid/net/wifi/WifiManager;
    :cond_3
    const/4 p2, 0x1

    .line 165
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v3

    goto/16 :goto_1
.end method
