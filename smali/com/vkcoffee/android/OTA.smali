.class public Lcom/vkcoffee/android/OTA;
.super Ljava/lang/Object;
.source "OTA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/OTA$Download;
    }
.end annotation


# static fields
.field public static CONTROL_VERSION:I = 0x0

.field public static final DATE_COMPILATION:Ljava/lang/String; = "05/09/2016"

.field public static final STAGE:Ljava/lang/String; = "Release"

.field public static final TREE:Ljava/lang/String;

.field public static final VERSION:Ljava/lang/String;

.field public static final VERSION_COFFEE:Ljava/lang/String;

.field private static final YES_ACTION:Ljava/lang/String; = "YES_ACTION"

.field private static activity:Landroid/app/Activity;

.field private static builderUpdate:Lcom/vkcoffee/android/VKAlertDialog$Builder;

.field private static fileLength:I

.field private static idNotif:I

.field private static mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private static mNotifyManager:Landroid/app/NotificationManager;

.field private static size:Ljava/lang/String;

.field private static speed:Ljava/lang/String;

.field private static toast:Z

.field private static total:J


# instance fields
.field call_method:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 57
    const/16 v0, 0x1c

    sput v0, Lcom/vkcoffee/android/OTA;->CONTROL_VERSION:I

    .line 58
    invoke-static {}, Lcom/vkcoffee/android/OTA;->getVerPackage()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/OTA;->VERSION:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/vkcoffee/android/OTA;->checkControl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/OTA;->TREE:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "4.3 (849) b"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/vkcoffee/android/OTA;->VERSION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/vkcoffee/android/OTA;->TREE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Release"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/OTA;->VERSION_COFFEE:Ljava/lang/String;

    .line 67
    const/4 v0, 0x1

    sput-boolean v0, Lcom/vkcoffee/android/OTA;->toast:Z

    .line 76
    sput v2, Lcom/vkcoffee/android/OTA;->idNotif:I

    .line 77
    const-string v0, "0"

    sput-object v0, Lcom/vkcoffee/android/OTA;->speed:Ljava/lang/String;

    .line 78
    const-string v0, "0"

    sput-object v0, Lcom/vkcoffee/android/OTA;->size:Ljava/lang/String;

    .line 79
    sput v2, Lcom/vkcoffee/android/OTA;->fileLength:I

    .line 80
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/vkcoffee/android/OTA;->total:J

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "toast"    # Z

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/vkcoffee/android/OTA$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/OTA$1;-><init>(Lcom/vkcoffee/android/OTA;)V

    iput-object v0, p0, Lcom/vkcoffee/android/OTA;->call_method:Landroid/content/BroadcastReceiver;

    .line 50
    sput-object p1, Lcom/vkcoffee/android/OTA;->activity:Landroid/app/Activity;

    .line 51
    sput-boolean p2, Lcom/vkcoffee/android/OTA;->toast:Z

    .line 52
    invoke-virtual {p0}, Lcom/vkcoffee/android/OTA;->go()V

    .line 53
    return-void
.end method

.method static synthetic access$0()Lcom/vkcoffee/android/VKAlertDialog$Builder;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/vkcoffee/android/OTA;->builderUpdate:Lcom/vkcoffee/android/VKAlertDialog$Builder;

    return-object v0
.end method

.method static synthetic access$1()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/vkcoffee/android/OTA;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$10()J
    .locals 2

    .prologue
    .line 80
    sget-wide v0, Lcom/vkcoffee/android/OTA;->total:J

    return-wide v0
.end method

.method static synthetic access$11(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    sput-object p0, Lcom/vkcoffee/android/OTA;->size:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$12()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/vkcoffee/android/OTA;->size:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 77
    sput-object p0, Lcom/vkcoffee/android/OTA;->speed:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/vkcoffee/android/OTA;->speed:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/vkcoffee/android/VKAlertDialog$Builder;)V
    .locals 0

    .prologue
    .line 75
    sput-object p0, Lcom/vkcoffee/android/OTA;->builderUpdate:Lcom/vkcoffee/android/VKAlertDialog$Builder;

    return-void
.end method

.method static synthetic access$2(Landroid/app/NotificationManager;)V
    .locals 0

    .prologue
    .line 73
    sput-object p0, Lcom/vkcoffee/android/OTA;->mNotifyManager:Landroid/app/NotificationManager;

    return-void
.end method

.method static synthetic access$3(Landroid/support/v4/app/NotificationCompat$Builder;)V
    .locals 0

    .prologue
    .line 74
    sput-object p0, Lcom/vkcoffee/android/OTA;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    return-void
.end method

.method static synthetic access$4()Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/vkcoffee/android/OTA;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    return-object v0
.end method

.method static synthetic access$5()Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/vkcoffee/android/OTA;->mNotifyManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$6()I
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/vkcoffee/android/OTA;->idNotif:I

    return v0
.end method

.method static synthetic access$7(I)V
    .locals 0

    .prologue
    .line 79
    sput p0, Lcom/vkcoffee/android/OTA;->fileLength:I

    return-void
.end method

.method static synthetic access$8()I
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/vkcoffee/android/OTA;->fileLength:I

    return v0
.end method

.method static synthetic access$9(J)V
    .locals 0

    .prologue
    .line 80
    sput-wide p0, Lcom/vkcoffee/android/OTA;->total:J

    return-void
.end method

.method private static checkControl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    sget v0, Lcom/vkcoffee/android/OTA;->CONTROL_VERSION:I

    if-lez v0, :cond_0

    sget v0, Lcom/vkcoffee/android/OTA;->CONTROL_VERSION:I

    const/16 v1, 0x63

    if-gt v0, v1, :cond_0

    .line 109
    const-string v0, " Release "

    .line 116
    :goto_0
    return-object v0

    .line 110
    :cond_0
    sget v0, Lcom/vkcoffee/android/OTA;->CONTROL_VERSION:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    sget v0, Lcom/vkcoffee/android/OTA;->CONTROL_VERSION:I

    const/16 v1, 0x3e7

    if-gt v0, v1, :cond_1

    .line 111
    const-string v0, " P_Test "

    goto :goto_0

    .line 113
    :cond_1
    sget v0, Lcom/vkcoffee/android/OTA;->CONTROL_VERSION:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_2

    sget v0, Lcom/vkcoffee/android/OTA;->CONTROL_VERSION:I

    const/16 v1, 0x270f

    if-gt v0, v1, :cond_2

    .line 114
    const-string v0, " Internal "

    goto :goto_0

    .line 116
    :cond_2
    const-string v0, " Unknwn "

    goto :goto_0
.end method

.method public static errDownload()V
    .locals 3

    .prologue
    .line 190
    sget-object v0, Lcom/vkcoffee/android/OTA;->activity:Landroid/app/Activity;

    const-string v1, "\u041f\u043e\u0445\u043e\u0436\u0435, \u0447\u0442\u043e \u0444\u0430\u0439\u043b \u043d\u0435 \u0434\u043e\u043a\u0430\u0447\u0430\u043b\u0441\u044f. \u041f\u043e\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0441\u043d\u043e\u0432\u0430."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 191
    return-void
.end method

.method public static errLink()V
    .locals 3

    .prologue
    .line 186
    sget-object v0, Lcom/vkcoffee/android/OTA;->activity:Landroid/app/Activity;

    const-string v1, "\u0412\u043e\u0437\u043d\u0438\u043a\u043b\u0430 \u043e\u0448\u0438\u0431\u043a\u0430 \u043f\u0440\u0438 \u043e\u0431\u0440\u0430\u0449\u0435\u043d\u0438\u0438 \u043a \u0441\u0441\u044b\u043b\u043a\u0435. \u041f\u043e\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0447\u0443\u0442\u044c \u043f\u043e\u0437\u0436\u0435."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 187
    return-void
.end method

.method public static getVerPackage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 97
    const-string v1, ""

    .line 99
    .local v1, "version":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    :goto_0
    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 102
    const-string v1, ":("

    goto :goto_0
.end method

.method public static startUpdate()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 121
    sget v1, Lcom/vkcoffee/android/OTA;->CONTROL_VERSION:I

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_0

    .line 149
    .local v0, "alert":Landroid/app/AlertDialog;
    :goto_0
    return-void

    .line 124
    .end local v0    # "alert":Landroid/app/AlertDialog;
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    sget-object v2, Lcom/vkcoffee/android/OTA;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/vkcoffee/android/OTA;->builderUpdate:Lcom/vkcoffee/android/VKAlertDialog$Builder;

    .line 125
    sget-object v1, Lcom/vkcoffee/android/OTA;->builderUpdate:Lcom/vkcoffee/android/VKAlertDialog$Builder;

    const-string v2, "\u0414\u043e\u0441\u0442\u0443\u043f\u043d\u043e \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0435. \u041e\u0431\u043d\u043e\u0432\u0438\u0442\u044c?"

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 126
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "OTA"

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "changeLog"

    const-string v4, "empty"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 127
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 128
    const-string v2, "\u041d\u0435\u0442"

    .line 129
    new-instance v3, Lcom/vkcoffee/android/OTA$2;

    invoke-direct {v3}, Lcom/vkcoffee/android/OTA$2;-><init>()V

    .line 128
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 136
    const-string v2, "\u0414\u0430"

    .line 137
    new-instance v3, Lcom/vkcoffee/android/OTA$3;

    invoke-direct {v3}, Lcom/vkcoffee/android/OTA$3;-><init>()V

    .line 136
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 144
    sget-object v1, Lcom/vkcoffee/android/OTA;->builderUpdate:Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 146
    .restart local v0    # "alert":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d3

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 148
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method public static updateApk()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 194
    invoke-static {}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->isOnline()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Lcom/vkcoffee/android/OTA$Download;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/OTA$Download;-><init>(Lcom/vkcoffee/android/OTA$Download;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "OTA"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "downloadLinkApk"

    const-string v5, "empty"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/OTA$Download;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    sget-object v0, Lcom/vkcoffee/android/OTA;->activity:Landroid/app/Activity;

    const-string v1, "\u041f\u0440\u043e\u0432\u0435\u0440\u044c\u0442\u0435 \u0441\u043e\u0435\u0434\u0438\u043d\u0435\u043d\u0438\u0435 \u0441 \u0438\u043d\u0442\u0435\u0440\u043d\u0435\u0442\u043e\u043c"

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static updateApp()V
    .locals 7

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "cacheDirCoffee"

    const-string v6, "VKCoffee"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/OTA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/VKCoffee_Update"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/vkcoffee/android/OTA;->CONTROL_VERSION:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 205
    sget-object v1, Lcom/vkcoffee/android/OTA;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 206
    return-void
.end method


# virtual methods
.method public go()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 152
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "OTA"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "controlVersion"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v5, :cond_6

    .line 154
    sget v2, Lcom/vkcoffee/android/OTA;->CONTROL_VERSION:I

    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "OTA"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "controlVersion"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-lt v2, v3, :cond_1

    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "OTA"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "debugTestStatus"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v7, :cond_0

    sget v2, Lcom/vkcoffee/android/OTA;->CONTROL_VERSION:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_0

    sget v2, Lcom/vkcoffee/android/OTA;->CONTROL_VERSION:I

    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "OTA"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "controlVersion"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-gt v2, v3, :cond_1

    :cond_0
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v3, "OTA"

    invoke-virtual {v2, v3, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "intenalTestStatus"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v7, :cond_5

    sget v2, Lcom/vkcoffee/android/OTA;->CONTROL_VERSION:I

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_5

    sget v2, Lcom/vkcoffee/android/OTA;->CONTROL_VERSION:I

    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "OTA"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "controlVersion"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-le v2, v3, :cond_5

    .line 155
    :cond_1
    sget-boolean v2, Lcom/vkcoffee/android/OTA;->toast:Z

    if-nez v2, :cond_4

    .line 156
    sget-object v2, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "debugOffNotifUpdate"

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2

    sget v2, Lcom/vkcoffee/android/OTA;->CONTROL_VERSION:I

    const/16 v3, 0x3e7

    if-le v2, v3, :cond_3

    .line 183
    :cond_2
    :goto_0
    return-void

    .line 159
    :cond_3
    sget-object v2, Lcom/vkcoffee/android/OTA;->activity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/vkcoffee/android/OTA;->call_method:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "YES_ACTION"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 160
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 161
    .local v1, "yesReceive":Landroid/content/Intent;
    const-string v2, "YES_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    sget-object v2, Lcom/vkcoffee/android/OTA;->activity:Landroid/app/Activity;

    const/16 v3, 0x3039

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 164
    .local v0, "pendingIntentYes":Landroid/app/PendingIntent;
    sget-object v2, Lcom/vkcoffee/android/OTA;->activity:Landroid/app/Activity;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    sput-object v2, Lcom/vkcoffee/android/OTA;->mNotifyManager:Landroid/app/NotificationManager;

    .line 165
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    sget-object v3, Lcom/vkcoffee/android/OTA;->activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/vkcoffee/android/OTA;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 166
    sget-object v2, Lcom/vkcoffee/android/OTA;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v3, "\u0414\u043e\u0441\u0442\u0443\u043f\u043d\u043e \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u0435"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 167
    sget-object v3, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string v4, "OTA"

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "viewVersion"

    const-string v5, "empty"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 168
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 169
    const v3, 0x7f020219

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 170
    invoke-virtual {v2, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 171
    sget-object v2, Lcom/vkcoffee/android/OTA;->mNotifyManager:Landroid/app/NotificationManager;

    sget v3, Lcom/vkcoffee/android/OTA;->idNotif:I

    sget-object v4, Lcom/vkcoffee/android/OTA;->mBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v4}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 174
    .end local v0    # "pendingIntentYes":Landroid/app/PendingIntent;
    .end local v1    # "yesReceive":Landroid/content/Intent;
    :cond_4
    invoke-static {}, Lcom/vkcoffee/android/OTA;->startUpdate()V

    goto :goto_0

    .line 178
    :cond_5
    sget-boolean v2, Lcom/vkcoffee/android/OTA;->toast:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/vkcoffee/android/OTA;->activity:Landroid/app/Activity;

    const-string v3, "\u041d\u043e\u0432\u043e\u0439 \u0432\u0435\u0440\u0441\u0438\u0438 \u043d\u0435 \u043e\u0431\u043d\u0430\u0440\u0443\u0436\u0435\u043d\u043e :("

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 181
    :cond_6
    sget-boolean v2, Lcom/vkcoffee/android/OTA;->toast:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/vkcoffee/android/OTA;->activity:Landroid/app/Activity;

    const-string v3, "\u0421\u0435\u0440\u0432\u0435\u0440 \u0441 \u043e\u0431\u043d\u043e\u0432\u043b\u0435\u043d\u0438\u044f\u043c\u0438 \u043d\u0435 \u0434\u043e\u0441\u0442\u0443\u043f\u0435\u043d"

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
