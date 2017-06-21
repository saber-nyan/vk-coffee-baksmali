.class public Lcom/vkcoffee/android/OnlineSNL;
.super Landroid/app/Service;
.source "OnlineSNL.java"


# static fields
.field private static final ACTION_ONLINE:Ljava/lang/String; = "ACTION_ONLINE"

.field static final CRITICAL_STOP:I = 0x2

.field static final START:I = 0x1

.field static final STOP:I = 0x0

.field static final UPDATE_TIME:I = -0x2

.field private static volatile errs:Z

.field private static volatile execStatus:Z

.field private static idNotif:I

.field private static volatile instanceOnlineSNL:Z

.field private static mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private static mNotifyManager:Landroid/app/NotificationManager;

.field private static online:Z

.field static onlineReceive:Landroid/content/Intent;

.field public static volatile onlineThread:Ljava/lang/Thread;

.field static pendingIntentOnline:Landroid/app/PendingIntent;

.field public static sharedInstanceSNL:Lcom/vkcoffee/android/OnlineSNL;

.field private static wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private static wl:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final CRITICAL_TIME:J

.field private final FR_REQUEST:J

.field private final REQUEST:J

.field private volatile bool:Z

.field private volatile context:Landroid/content/Context;

.field private volatile exec:Z

.field onlineReceiver:Landroid/content/BroadcastReceiver;

.field runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    const/4 v0, 0x0

    sput-object v0, Lcom/vkcoffee/android/OnlineSNL;->onlineThread:Ljava/lang/Thread;

    .line 35
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkcoffee/android/OnlineSNL;->execStatus:Z

    .line 44
    const/16 v0, 0x3e7

    sput v0, Lcom/vkcoffee/android/OnlineSNL;->idNotif:I

    .line 48
    sput-boolean v1, Lcom/vkcoffee/android/OnlineSNL;->online:Z

    .line 55
    sput-boolean v1, Lcom/vkcoffee/android/OnlineSNL;->instanceOnlineSNL:Z

    .line 175
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 34
    iput-boolean v0, p0, Lcom/vkcoffee/android/OnlineSNL;->exec:Z

    .line 36
    iput-boolean v0, p0, Lcom/vkcoffee/android/OnlineSNL;->bool:Z

    .line 38
    const-wide/16 v0, 0x3a98

    iput-wide v0, p0, Lcom/vkcoffee/android/OnlineSNL;->REQUEST:J

    .line 39
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/vkcoffee/android/OnlineSNL;->FR_REQUEST:J

    .line 41
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/vkcoffee/android/OnlineSNL;->CRITICAL_TIME:J

    .line 45
    iput-object p0, p0, Lcom/vkcoffee/android/OnlineSNL;->context:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/vkcoffee/android/OnlineSNL$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/OnlineSNL$1;-><init>(Lcom/vkcoffee/android/OnlineSNL;)V

    iput-object v0, p0, Lcom/vkcoffee/android/OnlineSNL;->onlineReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    new-instance v0, Lcom/vkcoffee/android/OnlineSNL$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/OnlineSNL$2;-><init>(Lcom/vkcoffee/android/OnlineSNL;)V

    iput-object v0, p0, Lcom/vkcoffee/android/OnlineSNL;->runnable:Ljava/lang/Runnable;

    .line 31
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/OnlineSNL;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/vkcoffee/android/OnlineSNL;->bool:Z

    return v0
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/OnlineSNL;Z)V
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/vkcoffee/android/OnlineSNL;->bool:Z

    return-void
.end method

.method static synthetic access$10(I)V
    .locals 0

    .prologue
    .line 176
    invoke-static {p0}, Lcom/vkcoffee/android/OnlineSNL;->doNotification(I)V

    return-void
.end method

.method static synthetic access$2()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/vkcoffee/android/OnlineSNL;->online:Z

    return v0
.end method

.method static synthetic access$3()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/vkcoffee/android/OnlineSNL;->errs:Z

    return v0
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/OnlineSNL;)Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/vkcoffee/android/OnlineSNL;->exec:Z

    return v0
.end method

.method static synthetic access$5(Z)V
    .locals 0

    .prologue
    .line 35
    sput-boolean p0, Lcom/vkcoffee/android/OnlineSNL;->execStatus:Z

    return-void
.end method

.method static synthetic access$6(Z)V
    .locals 0

    .prologue
    .line 37
    sput-boolean p0, Lcom/vkcoffee/android/OnlineSNL;->errs:Z

    return-void
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/vkcoffee/android/OnlineSNL;->instanceOnlineSNL:Z

    return v0
.end method

.method static synthetic access$8()V
    .locals 0

    .prologue
    .line 260
    invoke-static {}, Lcom/vkcoffee/android/OnlineSNL;->criticalStop()V

    return-void
.end method

.method static synthetic access$9()Z
    .locals 1

    .prologue
    .line 35
    sget-boolean v0, Lcom/vkcoffee/android/OnlineSNL;->execStatus:Z

    return v0
.end method

.method private static criticalStop()V
    .locals 1

    .prologue
    .line 261
    sget-boolean v0, Lcom/vkcoffee/android/OnlineSNL;->errs:Z

    if-nez v0, :cond_0

    .line 262
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkcoffee/android/OnlineSNL;->doNotification(I)V

    .line 266
    :goto_0
    return-void

    .line 265
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vkcoffee/android/OnlineSNL;->doNotification(I)V

    goto :goto_0
.end method

.method private static doNotification(I)V
    .locals 5
    .param p0, "state"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 177
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "notificationOnlSNL"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    const/4 v0, -0x2

    if-ne p0, v0, :cond_2

    .line 181
    sget-object v0, Lcom/vkcoffee/android/OnlineSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

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

    .line 182
    sget-object v0, Lcom/vkcoffee/android/OnlineSNL;->mNotifyManager:Landroid/app/NotificationManager;

    sget v1, Lcom/vkcoffee/android/OnlineSNL;->idNotif:I

    sget-object v2, Lcom/vkcoffee/android/OnlineSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 184
    :cond_2
    if-nez p0, :cond_4

    .line 185
    sget-boolean v0, Lcom/vkcoffee/android/OnlineSNL;->online:Z

    if-eqz v0, :cond_3

    .line 186
    invoke-static {}, Lcom/vkcoffee/android/OnlineSNL;->setOffline()V

    .line 187
    sget-object v0, Lcom/vkcoffee/android/OnlineSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "\u041f\u043e\u0441\u0442\u043e\u044f\u043d\u043d\u044b\u0439 Online"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 192
    :goto_1
    sget-object v0, Lcom/vkcoffee/android/OnlineSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "\u041e\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 194
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 195
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 196
    sget-object v0, Lcom/vkcoffee/android/OnlineSNL;->mNotifyManager:Landroid/app/NotificationManager;

    sget v1, Lcom/vkcoffee/android/OnlineSNL;->idNotif:I

    sget-object v2, Lcom/vkcoffee/android/OnlineSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 197
    sget-object v0, Lcom/vkcoffee/android/OnlineSNL;->mNotifyManager:Landroid/app/NotificationManager;

    sget v1, Lcom/vkcoffee/android/OnlineSNL;->idNotif:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 190
    :cond_3
    sget-object v0, Lcom/vkcoffee/android/OnlineSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "\u0424\u0430\u043d\u0442\u043e\u043c\u043d\u044b\u0439 Online"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1

    .line 198
    :cond_4
    if-ne p0, v3, :cond_6

    .line 199
    sget-boolean v0, Lcom/vkcoffee/android/OnlineSNL;->online:Z

    if-eqz v0, :cond_5

    .line 200
    sget-object v0, Lcom/vkcoffee/android/OnlineSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Online \u0430\u043a\u0442\u0438\u0432\u0435\u043d: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getCurrentPlatformOnline()I

    move-result v2

    invoke-static {v2}, Lcom/vkcoffee/android/Platform;->getNamePlatform(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 201
    const v1, 0x7f02030d

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 207
    :goto_2
    sget-object v0, Lcom/vkcoffee/android/OnlineSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "\u041d\u0430\u0436\u043c\u0438\u0442\u0435 \u0434\u0430\u0431\u044b \u0432\u044b\u043a\u043b\u044e\u0447\u0438\u0442\u044c"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 208
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 209
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 210
    sget-object v1, Lcom/vkcoffee/android/OnlineSNL;->pendingIntentOnline:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 211
    sget-object v0, Lcom/vkcoffee/android/OnlineSNL;->mNotifyManager:Landroid/app/NotificationManager;

    sget v1, Lcom/vkcoffee/android/OnlineSNL;->idNotif:I

    sget-object v2, Lcom/vkcoffee/android/OnlineSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 203
    :cond_5
    sget-object v0, Lcom/vkcoffee/android/OnlineSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "\u0424\u0430\u043d\u0442\u043e\u043c\u043d\u044b\u0439 Online \u0430\u043a\u0442\u0438\u0432\u0435\u043d"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 204
    const v1, 0x7f02030a

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_2

    .line 212
    :cond_6
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 213
    sget-boolean v0, Lcom/vkcoffee/android/OnlineSNL;->online:Z

    if-eqz v0, :cond_8

    .line 214
    sget-object v0, Lcom/vkcoffee/android/OnlineSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "\u041f\u043e\u0441\u0442\u043e\u044f\u043d\u043d\u044b\u0439 Online \u043e\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 218
    :goto_3
    sget-object v0, Lcom/vkcoffee/android/OnlineSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "\u041f\u043e\u043f\u044b\u0442\u043a\u0430 \u0432\u043e\u0437\u043e\u0431\u043d\u043e\u0432\u0438\u0442\u044c"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 219
    invoke-virtual {v0, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 220
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 221
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 222
    sget-object v0, Lcom/vkcoffee/android/OnlineSNL;->pendingIntentOnline:Landroid/app/PendingIntent;

    if-eqz v0, :cond_7

    .line 223
    sget-object v0, Lcom/vkcoffee/android/OnlineSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v1, Lcom/vkcoffee/android/OnlineSNL;->pendingIntentOnline:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 225
    :cond_7
    sget-object v0, Lcom/vkcoffee/android/OnlineSNL;->mNotifyManager:Landroid/app/NotificationManager;

    sget v1, Lcom/vkcoffee/android/OnlineSNL;->idNotif:I

    sget-object v2, Lcom/vkcoffee/android/OnlineSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 216
    :cond_8
    sget-object v0, Lcom/vkcoffee/android/OnlineSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "\u0424\u0430\u043d\u0442\u043e\u043c\u043d\u044b\u0439 Online \u043e\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_3
.end method

.method private static getSecret()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getCurrentPlatformOnline()I

    move-result v0

    invoke-static {v0}, Lcom/vkcoffee/android/PlatformData;->secretIsEmpty(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getVKsecret()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getCurrentPlatformOnline()I

    move-result v0

    invoke-static {v0}, Lcom/vkcoffee/android/PlatformData;->getSecret(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getCurrentPlatformOnline()I

    move-result v0

    invoke-static {v0}, Lcom/vkcoffee/android/PlatformData;->sidIsEmpty(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getVKsid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/vkcoffee/android/PlatformData;->getCurrentPlatformOnline()I

    move-result v0

    invoke-static {v0}, Lcom/vkcoffee/android/PlatformData;->getSid(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private go()V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/vkcoffee/android/OnlineSNL;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/OnlineSNL;->onlineReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "ACTION_ONLINE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 149
    iget-object v0, p0, Lcom/vkcoffee/android/OnlineSNL;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/vkcoffee/android/OnlineSNL;->mNotifyManager:Landroid/app/NotificationManager;

    .line 150
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/OnlineSNL;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vkcoffee/android/OnlineSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 152
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/OnlineSNL;->onlineReceive:Landroid/content/Intent;

    .line 153
    sget-object v0, Lcom/vkcoffee/android/OnlineSNL;->onlineReceive:Landroid/content/Intent;

    const-string v1, "ACTION_ONLINE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    iget-object v0, p0, Lcom/vkcoffee/android/OnlineSNL;->context:Landroid/content/Context;

    sget v1, Lcom/vkcoffee/android/OnlineSNL;->idNotif:I

    sget-object v2, Lcom/vkcoffee/android/OnlineSNL;->onlineReceive:Landroid/content/Intent;

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/OnlineSNL;->pendingIntentOnline:Landroid/app/PendingIntent;

    .line 156
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkcoffee/android/OnlineSNL;->doNotification(I)V

    .line 157
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/vkcoffee/android/OnlineSNL;->runnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/vkcoffee/android/OnlineSNL;->onlineThread:Ljava/lang/Thread;

    .line 158
    sget-object v0, Lcom/vkcoffee/android/OnlineSNL;->onlineThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 159
    return-void
.end method

.method public static setOffline()V
    .locals 5

    .prologue
    .line 339
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 340
    .local v1, "paramsOffline":Lcom/loopj/android/http/RequestParams;
    const-string v2, "access_token"

    invoke-static {}, Lcom/vkcoffee/android/OnlineSNL;->getSid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const-string v2, "v"

    const-string v3, "5.29"

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    const-string v2, "sig"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/method/account.setOffline?"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/vkcoffee/android/OnlineSNL;->getSecret()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    new-instance v0, Lcom/loopj/android/http/SyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/SyncHttpClient;-><init>()V

    .line 344
    .local v0, "offline":Lcom/loopj/android/http/SyncHttpClient;
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/vkcoffee/android/GlobalVarsCoffee;->API_HOST:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "account.setOffline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/OnlineSNL$4;

    invoke-direct {v3}, Lcom/vkcoffee/android/OnlineSNL$4;-><init>()V

    invoke-virtual {v0, v2, v1, v3}, Lcom/loopj/android/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 375
    return-void
.end method

.method public static setOnline()V
    .locals 5

    .prologue
    .line 277
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 278
    .local v1, "paramsOnline":Lcom/loopj/android/http/RequestParams;
    const-string v2, "access_token"

    invoke-static {}, Lcom/vkcoffee/android/OnlineSNL;->getSid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v2, "v"

    const-string v3, "5.29"

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v2, "sig"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/method/account.setOnline?"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/vkcoffee/android/OnlineSNL;->getSecret()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    new-instance v0, Lcom/loopj/android/http/SyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/SyncHttpClient;-><init>()V

    .line 282
    .local v0, "online":Lcom/loopj/android/http/SyncHttpClient;
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/vkcoffee/android/GlobalVarsCoffee;->API_HOST:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "account.setOnline"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/OnlineSNL$3;

    invoke-direct {v3}, Lcom/vkcoffee/android/OnlineSNL$3;-><init>()V

    invoke-virtual {v0, v2, v1, v3}, Lcom/loopj/android/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 312
    return-void
.end method

.method private declared-synchronized stopExec()V
    .locals 1

    .prologue
    .line 164
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/OnlineSNL;->exec:Z

    .line 165
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkcoffee/android/OnlineSNL;->execStatus:Z

    .line 166
    sget-object v0, Lcom/vkcoffee/android/OnlineSNL;->onlineThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 167
    sget-object v0, Lcom/vkcoffee/android/OnlineSNL;->onlineThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 168
    const/4 v0, 0x0

    sput-object v0, Lcom/vkcoffee/android/OnlineSNL;->onlineThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    monitor-exit p0

    return-void

    .line 164
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
    .line 379
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 232
    :try_start_0
    iget-object v1, p0, Lcom/vkcoffee/android/OnlineSNL;->onlineReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/OnlineSNL;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    invoke-static {v4}, Lcom/vkcoffee/android/OnlineSNL;->doNotification(I)V

    .line 239
    sput-boolean v4, Lcom/vkcoffee/android/OnlineSNL;->instanceOnlineSNL:Z

    .line 240
    sget-boolean v1, Lcom/vkcoffee/android/OnlineSNL;->online:Z

    if-eqz v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/vkcoffee/android/OnlineSNL;->context:Landroid/content/Context;

    const-string v2, "\u041f\u043e\u0441\u0442\u043e\u044f\u043d\u043d\u044b\u0439 Online \u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d, \u0447\u0435\u0440\u0435\u0437 45 \u0441\u0435\u043a\u0443\u043d\u0434 \u0412\u044b \u0431\u0443\u0434\u0435\u0442\u0435 \u0432 Offline"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 246
    :goto_1
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "dontSleepOnlSNL"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    :try_start_1
    sget-object v1, Lcom/vkcoffee/android/OnlineSNL;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 249
    sget-object v1, Lcom/vkcoffee/android/OnlineSNL;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 254
    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/vkcoffee/android/OnlineSNL;->stopExec()V

    .line 256
    invoke-virtual {p0}, Lcom/vkcoffee/android/OnlineSNL;->stopSelf()V

    .line 258
    return-void

    .line 233
    :catch_0
    move-exception v0

    .line 234
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

    .line 243
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/OnlineSNL;->context:Landroid/content/Context;

    const-string v2, "\u0424\u0430\u043d\u0442\u043e\u043c\u043d\u044b\u0439 Online \u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d"

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 250
    :catch_1
    move-exception v0

    .line 251
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

    goto :goto_2
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 112
    :try_start_0
    const-string v3, "online"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/vkcoffee/android/OnlineSNL;->online:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    iput-object p0, p0, Lcom/vkcoffee/android/OnlineSNL;->context:Landroid/content/Context;

    .line 127
    sput-object p0, Lcom/vkcoffee/android/OnlineSNL;->sharedInstanceSNL:Lcom/vkcoffee/android/OnlineSNL;

    .line 128
    invoke-direct {p0}, Lcom/vkcoffee/android/OnlineSNL;->go()V

    .line 129
    sput-boolean v7, Lcom/vkcoffee/android/OnlineSNL;->instanceOnlineSNL:Z

    .line 132
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "dontSleepOnlSNL"

    invoke-interface {v3, v4, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/OnlineSNL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 134
    .local v1, "pm":Landroid/os/PowerManager;
    const-string v3, "TAG"

    invoke-virtual {v1, v7, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    sput-object v3, Lcom/vkcoffee/android/OnlineSNL;->wl:Landroid/os/PowerManager$WakeLock;

    .line 135
    sget-object v3, Lcom/vkcoffee/android/OnlineSNL;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 136
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/OnlineSNL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 138
    .local v2, "wm":Landroid/net/wifi/WifiManager;
    const-string v3, "TAG"

    invoke-virtual {v2, v7, v3}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v3

    sput-object v3, Lcom/vkcoffee/android/OnlineSNL;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 139
    sget-object v3, Lcom/vkcoffee/android/OnlineSNL;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 143
    .end local v1    # "pm":Landroid/os/PowerManager;
    .end local v2    # "wm":Landroid/net/wifi/WifiManager;
    :cond_0
    const/4 p2, 0x1

    .line 144
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v3

    return v3

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onStartCommand: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 115
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "stayOnlinePref"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 116
    sput-boolean v7, Lcom/vkcoffee/android/OnlineSNL;->online:Z

    goto :goto_0

    .line 117
    :cond_1
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "phantomOnlinePref"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    sput-boolean v6, Lcom/vkcoffee/android/OnlineSNL;->online:Z

    goto :goto_0

    .line 120
    :cond_2
    sput-boolean v6, Lcom/vkcoffee/android/OnlineSNL;->online:Z

    goto :goto_0
.end method
