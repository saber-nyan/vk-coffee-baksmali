.class public Lcom/vkcoffee/android/StatusSNL;
.super Landroid/app/Service;
.source "StatusSNL.java"


# static fields
.field private static final ACTION_STATUS:Ljava/lang/String; = "ACTION_STATUS"

.field static final CRITICAL_STOP:I = 0x2

.field static final START:I = 0x1

.field static final STOP:I = 0x0

.field static final UPDATE_TIME:I = -0x2

.field private static volatile errs:Z

.field private static volatile execStatus:Z

.field private static idNotif:I

.field private static volatile instanceStatusSNL:Z

.field private static mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private static mNotifyManager:Landroid/app/NotificationManager;

.field static pendingIntentStatus:Landroid/app/PendingIntent;

.field public static sharedInstanceStatusSNL:Lcom/vkcoffee/android/StatusSNL;

.field static statusReceive:Landroid/content/Intent;

.field public static volatile statusThread:Ljava/lang/Thread;

.field private static wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

.field private static wl:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final CRITICAL_TIME:J

.field private final REQUEST_STATUS:J

.field private volatile bool:Z

.field private volatile context:Landroid/content/Context;

.field private volatile exec:Z

.field runnable:Ljava/lang/Runnable;

.field statusReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-object v0, Lcom/vkcoffee/android/StatusSNL;->statusThread:Ljava/lang/Thread;

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkcoffee/android/StatusSNL;->execStatus:Z

    .line 64
    const/16 v0, 0x22b

    sput v0, Lcom/vkcoffee/android/StatusSNL;->idNotif:I

    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkcoffee/android/StatusSNL;->instanceStatusSNL:Z

    .line 175
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    iput-boolean v0, p0, Lcom/vkcoffee/android/StatusSNL;->exec:Z

    .line 52
    iput-boolean v0, p0, Lcom/vkcoffee/android/StatusSNL;->bool:Z

    .line 55
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "Additional"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "bv"

    const-string v2, "bv"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1yyF4slwKYe1J/2lOLNSjQ=="

    invoke-static {v1}, Lcom/vkcoffee/android/Helper;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "OTA"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "internalAccess"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "VERIFICATION"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "helpers"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "VERIFICATION"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "donnated"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v1, "VERIFICATION"

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "donnatedVerifCoffee"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0xea60

    :goto_0
    int-to-long v0, v0

    iput-wide v0, p0, Lcom/vkcoffee/android/StatusSNL;->REQUEST_STATUS:J

    .line 61
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/vkcoffee/android/StatusSNL;->CRITICAL_TIME:J

    .line 65
    iput-object p0, p0, Lcom/vkcoffee/android/StatusSNL;->context:Landroid/content/Context;

    .line 85
    new-instance v0, Lcom/vkcoffee/android/StatusSNL$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/StatusSNL$1;-><init>(Lcom/vkcoffee/android/StatusSNL;)V

    iput-object v0, p0, Lcom/vkcoffee/android/StatusSNL;->statusReceiver:Landroid/content/BroadcastReceiver;

    .line 96
    new-instance v0, Lcom/vkcoffee/android/StatusSNL$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/StatusSNL$2;-><init>(Lcom/vkcoffee/android/StatusSNL;)V

    iput-object v0, p0, Lcom/vkcoffee/android/StatusSNL;->runnable:Ljava/lang/Runnable;

    .line 48
    return-void

    .line 59
    :cond_1
    const v0, 0x15f90

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/StatusSNL;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/vkcoffee/android/StatusSNL;->bool:Z

    return v0
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/StatusSNL;Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/vkcoffee/android/StatusSNL;->bool:Z

    return-void
.end method

.method static synthetic access$10(I)V
    .locals 0

    .prologue
    .line 176
    invoke-static {p0}, Lcom/vkcoffee/android/StatusSNL;->doNotification(I)V

    return-void
.end method

.method static synthetic access$2()Z
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/vkcoffee/android/StatusSNL;->errs:Z

    return v0
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/StatusSNL;)J
    .locals 2

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/vkcoffee/android/StatusSNL;->REQUEST_STATUS:J

    return-wide v0
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/StatusSNL;)Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/vkcoffee/android/StatusSNL;->exec:Z

    return v0
.end method

.method static synthetic access$5(Z)V
    .locals 0

    .prologue
    .line 53
    sput-boolean p0, Lcom/vkcoffee/android/StatusSNL;->execStatus:Z

    return-void
.end method

.method static synthetic access$6(Z)V
    .locals 0

    .prologue
    .line 54
    sput-boolean p0, Lcom/vkcoffee/android/StatusSNL;->errs:Z

    return-void
.end method

.method static synthetic access$7()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/vkcoffee/android/StatusSNL;->instanceStatusSNL:Z

    return v0
.end method

.method static synthetic access$8()V
    .locals 0

    .prologue
    .line 269
    invoke-static {}, Lcom/vkcoffee/android/StatusSNL;->criticalStop()V

    return-void
.end method

.method static synthetic access$9()Z
    .locals 1

    .prologue
    .line 53
    sget-boolean v0, Lcom/vkcoffee/android/StatusSNL;->execStatus:Z

    return v0
.end method

.method private static criticalStop()V
    .locals 1

    .prologue
    .line 270
    sget-boolean v0, Lcom/vkcoffee/android/StatusSNL;->errs:Z

    if-nez v0, :cond_0

    .line 271
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkcoffee/android/StatusSNL;->doNotification(I)V

    .line 275
    :goto_0
    return-void

    .line 274
    :cond_0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/vkcoffee/android/StatusSNL;->doNotification(I)V

    goto :goto_0
.end method

.method private static doNotification(I)V
    .locals 4
    .param p0, "state"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 177
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "notificationStatusSNL"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    const/4 v0, -0x2

    if-ne p0, v0, :cond_2

    .line 181
    sget-object v0, Lcom/vkcoffee/android/StatusSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

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
    sget-object v0, Lcom/vkcoffee/android/StatusSNL;->mNotifyManager:Landroid/app/NotificationManager;

    sget v1, Lcom/vkcoffee/android/StatusSNL;->idNotif:I

    sget-object v2, Lcom/vkcoffee/android/StatusSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 184
    :cond_2
    if-nez p0, :cond_3

    .line 185
    sget-object v0, Lcom/vkcoffee/android/StatusSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "\u0410\u0432\u0442\u043e\u0441\u0442\u0430\u0442\u0443\u0441"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 186
    sget-object v0, Lcom/vkcoffee/android/StatusSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "\u041e\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 187
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 188
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 189
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 190
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 191
    sget-object v0, Lcom/vkcoffee/android/StatusSNL;->mNotifyManager:Landroid/app/NotificationManager;

    sget v1, Lcom/vkcoffee/android/StatusSNL;->idNotif:I

    sget-object v2, Lcom/vkcoffee/android/StatusSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 192
    sget-object v0, Lcom/vkcoffee/android/StatusSNL;->mNotifyManager:Landroid/app/NotificationManager;

    sget v1, Lcom/vkcoffee/android/StatusSNL;->idNotif:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 193
    :cond_3
    if-ne p0, v2, :cond_4

    .line 194
    sget-object v0, Lcom/vkcoffee/android/StatusSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "\u0410\u0432\u0442\u043e\u0441\u0442\u0430\u0442\u0443\u0441 \u0430\u043a\u0442\u0438\u0432\u0435\u043d"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 195
    sget-object v0, Lcom/vkcoffee/android/StatusSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "\u041d\u0430\u0436\u043c\u0438\u0442\u0435 \u0434\u0430\u0431\u044b \u0432\u044b\u043a\u043b\u044e\u0447\u0438\u0442\u044c"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 196
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 197
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 198
    sget-object v1, Lcom/vkcoffee/android/StatusSNL;->pendingIntentStatus:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 199
    const v1, 0x7f02030c

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 200
    sget-object v0, Lcom/vkcoffee/android/StatusSNL;->mNotifyManager:Landroid/app/NotificationManager;

    sget v1, Lcom/vkcoffee/android/StatusSNL;->idNotif:I

    sget-object v2, Lcom/vkcoffee/android/StatusSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 201
    :cond_4
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    .line 202
    sget-object v0, Lcom/vkcoffee/android/StatusSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "\u0410\u0432\u0442\u043e\u0441\u0442\u0430\u0442\u0443\u0441 \u043e\u0441\u0442\u0430\u043d\u043e\u0432\u043b\u0435\u043d"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 203
    sget-object v0, Lcom/vkcoffee/android/StatusSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "\u041f\u043e\u043f\u044b\u0442\u043a\u0430 \u0432\u043e\u0437\u043e\u0431\u043d\u043e\u0432\u0438\u0442\u044c"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {v0, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 205
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 206
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 207
    sget-object v0, Lcom/vkcoffee/android/StatusSNL;->pendingIntentStatus:Landroid/app/PendingIntent;

    if-eqz v0, :cond_5

    .line 208
    sget-object v0, Lcom/vkcoffee/android/StatusSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v1, Lcom/vkcoffee/android/StatusSNL;->pendingIntentStatus:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 210
    :cond_5
    sget-object v0, Lcom/vkcoffee/android/StatusSNL;->mNotifyManager:Landroid/app/NotificationManager;

    sget v1, Lcom/vkcoffee/android/StatusSNL;->idNotif:I

    sget-object v2, Lcom/vkcoffee/android/StatusSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0
.end method

.method public static getPrevStatus()V
    .locals 2

    .prologue
    .line 278
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/StatusSNL$4;

    invoke-direct {v1}, Lcom/vkcoffee/android/StatusSNL$4;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 297
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 299
    return-void
.end method

.method private go()V
    .locals 4

    .prologue
    .line 156
    iget-object v0, p0, Lcom/vkcoffee/android/StatusSNL;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/vkcoffee/android/StatusSNL;->statusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "ACTION_STATUS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    iget-object v0, p0, Lcom/vkcoffee/android/StatusSNL;->context:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/vkcoffee/android/StatusSNL;->mNotifyManager:Landroid/app/NotificationManager;

    .line 158
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/StatusSNL;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/vkcoffee/android/StatusSNL;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 160
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/StatusSNL;->statusReceive:Landroid/content/Intent;

    .line 161
    sget-object v0, Lcom/vkcoffee/android/StatusSNL;->statusReceive:Landroid/content/Intent;

    const-string v1, "ACTION_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 163
    iget-object v0, p0, Lcom/vkcoffee/android/StatusSNL;->context:Landroid/content/Context;

    sget v1, Lcom/vkcoffee/android/StatusSNL;->idNotif:I

    sget-object v2, Lcom/vkcoffee/android/StatusSNL;->statusReceive:Landroid/content/Intent;

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/StatusSNL;->pendingIntentStatus:Landroid/app/PendingIntent;

    .line 165
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/vkcoffee/android/StatusSNL;->doNotification(I)V

    .line 167
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/vkcoffee/android/StatusSNL;->runnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, Lcom/vkcoffee/android/StatusSNL;->statusThread:Ljava/lang/Thread;

    .line 168
    sget-object v0, Lcom/vkcoffee/android/StatusSNL;->statusThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 169
    return-void
.end method

.method public static returnPrevStatus()V
    .locals 2

    .prologue
    .line 261
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/vkcoffee/android/StatusSNL$3;

    invoke-direct {v1}, Lcom/vkcoffee/android/StatusSNL$3;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 266
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 267
    return-void
.end method

.method public static setStatus(Ljava/lang/String;)V
    .locals 5
    .param p0, "status"    # Ljava/lang/String;

    .prologue
    .line 319
    new-instance v1, Lcom/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/loopj/android/http/RequestParams;-><init>()V

    .line 320
    .local v1, "paramsStatusSet":Lcom/loopj/android/http/RequestParams;
    const-string v2, "access_token"

    sget-object v3, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v2, "text"

    invoke-virtual {v1, v2, p0}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    const-string v2, "v"

    const-string v3, "5.29"

    invoke-virtual {v1, v2, v3}, Lcom/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    const-string v2, "sig"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "/method/status.set?"

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

    .line 324
    new-instance v0, Lcom/loopj/android/http/SyncHttpClient;

    invoke-direct {v0}, Lcom/loopj/android/http/SyncHttpClient;-><init>()V

    .line 325
    .local v0, "offline":Lcom/loopj/android/http/SyncHttpClient;
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/vkcoffee/android/GlobalVarsCoffee;->API_HOST:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "status.set"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/StatusSNL$5;

    invoke-direct {v3}, Lcom/vkcoffee/android/StatusSNL$5;-><init>()V

    invoke-virtual {v0, v2, v1, v3}, Lcom/loopj/android/http/SyncHttpClient;->get(Ljava/lang/String;Lcom/loopj/android/http/RequestParams;Lcom/loopj/android/http/ResponseHandlerInterface;)Lcom/loopj/android/http/RequestHandle;

    .line 357
    return-void
.end method

.method private declared-synchronized stopExec()V
    .locals 1

    .prologue
    .line 217
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/StatusSNL;->exec:Z

    .line 218
    const/4 v0, 0x0

    sput-boolean v0, Lcom/vkcoffee/android/StatusSNL;->execStatus:Z

    .line 219
    sget-object v0, Lcom/vkcoffee/android/StatusSNL;->statusThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 220
    sget-object v0, Lcom/vkcoffee/android/StatusSNL;->statusThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 221
    const/4 v0, 0x0

    sput-object v0, Lcom/vkcoffee/android/StatusSNL;->statusThread:Ljava/lang/Thread;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :cond_0
    monitor-exit p0

    return-void

    .line 217
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
    .line 361
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 228
    :try_start_0
    iget-object v2, p0, Lcom/vkcoffee/android/StatusSNL;->statusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/StatusSNL;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    invoke-direct {p0}, Lcom/vkcoffee/android/StatusSNL;->stopExec()V

    .line 236
    invoke-static {v5}, Lcom/vkcoffee/android/StatusSNL;->doNotification(I)V

    .line 239
    iget-object v2, p0, Lcom/vkcoffee/android/StatusSNL;->context:Landroid/content/Context;

    const-string v3, "\u0410\u0432\u0442\u043e\u0441\u0442\u0430\u0442\u0443\u0441 \u0432\u044b\u043a\u043b\u044e\u0447\u0435\u043d"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 241
    sput-boolean v5, Lcom/vkcoffee/android/StatusSNL;->instanceStatusSNL:Z

    .line 242
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "dontSleepStatusSNL"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    :try_start_1
    sget-object v2, Lcom/vkcoffee/android/StatusSNL;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 245
    sget-object v2, Lcom/vkcoffee/android/StatusSNL;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    :cond_0
    :goto_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vkcoffee.android.RELOAD_PROFILE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "id"

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 252
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lcom/vkcoffee/android/StatusSNL;->returnPrevStatus()V

    .line 256
    invoke-virtual {p0}, Lcom/vkcoffee/android/StatusSNL;->stopSelf()V

    .line 259
    return-void

    .line 229
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 230
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Err: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 247
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Err WAKE: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    const/4 v4, 0x1

    .line 133
    iput-object p0, p0, Lcom/vkcoffee/android/StatusSNL;->context:Landroid/content/Context;

    .line 134
    sput-object p0, Lcom/vkcoffee/android/StatusSNL;->sharedInstanceStatusSNL:Lcom/vkcoffee/android/StatusSNL;

    .line 135
    invoke-direct {p0}, Lcom/vkcoffee/android/StatusSNL;->go()V

    .line 136
    sput-boolean v4, Lcom/vkcoffee/android/StatusSNL;->instanceStatusSNL:Z

    .line 140
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "dontSleepStatusSNL"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/StatusSNL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 142
    .local v0, "pm":Landroid/os/PowerManager;
    const-string v2, "TAG"

    invoke-virtual {v0, v4, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/vkcoffee/android/StatusSNL;->wl:Landroid/os/PowerManager$WakeLock;

    .line 143
    sget-object v2, Lcom/vkcoffee/android/StatusSNL;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 144
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/StatusSNL;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 146
    .local v1, "wm":Landroid/net/wifi/WifiManager;
    const-string v2, "TAG"

    invoke-virtual {v1, v4, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v2

    sput-object v2, Lcom/vkcoffee/android/StatusSNL;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 147
    sget-object v2, Lcom/vkcoffee/android/StatusSNL;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 151
    .end local v0    # "pm":Landroid/os/PowerManager;
    .end local v1    # "wm":Landroid/net/wifi/WifiManager;
    :cond_0
    const/4 p2, 0x1

    .line 152
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v2

    return v2
.end method
