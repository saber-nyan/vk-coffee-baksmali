.class public Lnet/hockeyapp/android/FeedbackManager;
.super Ljava/lang/Object;
.source "FeedbackManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;
    }
.end annotation


# static fields
.field private static final BROADCAST_ACTION:Ljava/lang/String; = "net.hockeyapp.android.SCREENSHOT"

.field private static final BROADCAST_REQUEST_CODE:I = 0x1

.field private static final SCREENSHOT_NOTIFICATION_ID:I = 0x1

.field private static currentActivity:Landroid/app/Activity;

.field private static identifier:Ljava/lang/String;

.field private static lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

.field private static notificationActive:Z

.field private static receiver:Landroid/content/BroadcastReceiver;

.field private static urlString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    sput-object v1, Lnet/hockeyapp/android/FeedbackManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 91
    const/4 v0, 0x0

    sput-boolean v0, Lnet/hockeyapp/android/FeedbackManager;->notificationActive:Z

    .line 96
    sput-object v1, Lnet/hockeyapp/android/FeedbackManager;->identifier:Ljava/lang/String;

    .line 101
    sput-object v1, Lnet/hockeyapp/android/FeedbackManager;->urlString:Ljava/lang/String;

    .line 106
    sput-object v1, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-static {p0}, Lnet/hockeyapp/android/FeedbackManager;->getURLString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static checkForAnswersAndNotify(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 183
    invoke-static {}, Lnet/hockeyapp/android/utils/PrefsUtil;->getInstance()Lnet/hockeyapp/android/utils/PrefsUtil;

    move-result-object v1

    invoke-virtual {v1, p0}, Lnet/hockeyapp/android/utils/PrefsUtil;->getFeedbackTokenFromPrefs(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 184
    .local v8, "token":Ljava/lang/String;
    if-nez v8, :cond_0

    .line 207
    :goto_0
    return-void

    .line 188
    :cond_0
    const-string/jumbo v1, "net.hockeyapp.android.feedback"

    invoke-virtual {p0, v1, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "idLastMessageSend"

    const/4 v4, -0x1

    .line 189
    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 191
    .local v11, "lastMessageId":I
    new-instance v0, Lnet/hockeyapp/android/tasks/SendFeedbackTask;

    invoke-static {p0}, Lnet/hockeyapp/android/FeedbackManager;->getURLString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lnet/hockeyapp/android/FeedbackManager$1;

    invoke-direct {v9, p0}, Lnet/hockeyapp/android/FeedbackManager$1;-><init>(Landroid/content/Context;)V

    const/4 v10, 0x1

    move-object v1, p0

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v10}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Landroid/os/Handler;Z)V

    .line 204
    .local v0, "sendFeedbackTask":Lnet/hockeyapp/android/tasks/SendFeedbackTask;
    invoke-virtual {v0, v12}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->setShowProgressDialog(Z)V

    .line 205
    invoke-virtual {v0, v11}, Lnet/hockeyapp/android/tasks/SendFeedbackTask;->setLastMessageId(I)V

    .line 206
    invoke-static {v0}, Lnet/hockeyapp/android/utils/AsyncTaskUtils;->execute(Landroid/os/AsyncTask;)V

    goto :goto_0
.end method

.method private static endNotification()V
    .locals 3

    .prologue
    .line 321
    const/4 v1, 0x0

    sput-boolean v1, Lnet/hockeyapp/android/FeedbackManager;->notificationActive:Z

    .line 323
    sget-object v1, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    sget-object v2, Lnet/hockeyapp/android/FeedbackManager;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 324
    sget-object v1, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    const-string/jumbo v2, "notification"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 325
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 326
    return-void
.end method

.method public static getLastListener()Lnet/hockeyapp/android/FeedbackManagerListener;
    .locals 1

    .prologue
    .line 215
    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    return-object v0
.end method

.method private static getURLString(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/hockeyapp/android/FeedbackManager;->urlString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "api/2/apps/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lnet/hockeyapp/android/FeedbackManager;->identifier:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/feedback/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appIdentifier"    # Ljava/lang/String;

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lnet/hockeyapp/android/FeedbackManager;->register(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/FeedbackManagerListener;)V

    .line 116
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/FeedbackManagerListener;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "urlString"    # Ljava/lang/String;
    .param p2, "appIdentifier"    # Ljava/lang/String;
    .param p3, "listener"    # Lnet/hockeyapp/android/FeedbackManagerListener;

    .prologue
    .line 138
    if-eqz p0, :cond_0

    .line 139
    sput-object p2, Lnet/hockeyapp/android/FeedbackManager;->identifier:Ljava/lang/String;

    .line 140
    sput-object p1, Lnet/hockeyapp/android/FeedbackManager;->urlString:Ljava/lang/String;

    .line 141
    sput-object p3, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    .line 143
    invoke-static {p0}, Lnet/hockeyapp/android/Constants;->loadFromContext(Landroid/content/Context;)V

    .line 145
    :cond_0
    return-void
.end method

.method public static register(Landroid/content/Context;Ljava/lang/String;Lnet/hockeyapp/android/FeedbackManagerListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "appIdentifier"    # Ljava/lang/String;
    .param p2, "listener"    # Lnet/hockeyapp/android/FeedbackManagerListener;

    .prologue
    .line 126
    const-string/jumbo v0, "https://sdk.hockeyapp.net/"

    invoke-static {p0, v0, p1, p2}, Lnet/hockeyapp/android/FeedbackManager;->register(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lnet/hockeyapp/android/FeedbackManagerListener;)V

    .line 127
    return-void
.end method

.method public static setActivityForScreenshot(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 234
    sput-object p0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    .line 236
    sget-boolean v0, Lnet/hockeyapp/android/FeedbackManager;->notificationActive:Z

    if-nez v0, :cond_0

    .line 237
    invoke-static {}, Lnet/hockeyapp/android/FeedbackManager;->startNotification()V

    .line 239
    :cond_0
    return-void
.end method

.method public static showFeedbackActivity(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    if-eqz p0, :cond_2

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v2, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    if-eqz v2, :cond_0

    .line 162
    sget-object v2, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    invoke-virtual {v2}, Lnet/hockeyapp/android/FeedbackManagerListener;->getFeedbackActivityClass()Ljava/lang/Class;

    move-result-object v0

    .line 164
    :cond_0
    if-nez v0, :cond_1

    .line 165
    const-class v0, Lnet/hockeyapp/android/FeedbackActivity;

    .line 168
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 169
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 170
    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 171
    const-string/jumbo v2, "url"

    invoke-static {p0}, Lnet/hockeyapp/android/FeedbackManager;->getURLString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 174
    .end local v0    # "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method private static startNotification()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 296
    sput-boolean v9, Lnet/hockeyapp/android/FeedbackManager;->notificationActive:Z

    .line 298
    sget-object v5, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    const-string/jumbo v6, "notification"

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 300
    .local v3, "notificationManager":Landroid/app/NotificationManager;
    sget-object v5, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "ic_menu_camera"

    const-string/jumbo v7, "drawable"

    const-string/jumbo v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 301
    .local v0, "iconId":I
    new-instance v2, Landroid/app/Notification;

    const-string/jumbo v5, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v2, v0, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 303
    .local v2, "notification":Landroid/app/Notification;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 304
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v5, "net.hockeyapp.android.SCREENSHOT"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    sget-object v5, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v9, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 306
    .local v4, "pendingIntent":Landroid/app/PendingIntent;
    sget-object v5, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    const-string/jumbo v6, "HockeyApp Feedback"

    const-string/jumbo v7, "Take a screenshot for your feedback."

    invoke-virtual {v2, v5, v6, v7, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 307
    invoke-virtual {v3, v9, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 309
    sget-object v5, Lnet/hockeyapp/android/FeedbackManager;->receiver:Landroid/content/BroadcastReceiver;

    if-nez v5, :cond_0

    .line 310
    new-instance v5, Lnet/hockeyapp/android/FeedbackManager$2;

    invoke-direct {v5}, Lnet/hockeyapp/android/FeedbackManager$2;-><init>()V

    sput-object v5, Lnet/hockeyapp/android/FeedbackManager;->receiver:Landroid/content/BroadcastReceiver;

    .line 317
    :cond_0
    sget-object v5, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    sget-object v6, Lnet/hockeyapp/android/FeedbackManager;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v8, "net.hockeyapp.android.SCREENSHOT"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 318
    return-void
.end method

.method public static takeScreenshot(Landroid/content/Context;)V
    .locals 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/16 v12, 0x7d0

    .line 262
    sget-object v10, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    .line 263
    .local v9, "view":Landroid/view/View;
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 264
    invoke-virtual {v9}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 266
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    sget-object v10, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v5

    .line 267
    .local v5, "filename":Ljava/lang/String;
    invoke-static {}, Lnet/hockeyapp/android/Constants;->getHockeyAppStorageDir()Ljava/io/File;

    move-result-object v3

    .line 268
    .local v3, "dir":Ljava/io/File;
    new-instance v7, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v3, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 269
    .local v7, "result":Ljava/io/File;
    const/4 v8, 0x1

    .line 270
    .local v8, "suffix":I
    :goto_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 271
    new-instance v7, Ljava/io/File;

    .end local v7    # "result":Ljava/io/File;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ".jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v3, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 272
    .restart local v7    # "result":Ljava/io/File;
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 276
    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 277
    .local v6, "out":Ljava/io/FileOutputStream;
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v0, v10, v11, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 278
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v6    # "out":Ljava/io/FileOutputStream;
    :goto_1
    new-instance v1, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v1, v10, v11}, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;-><init>(Ljava/lang/String;Lnet/hockeyapp/android/FeedbackManager$1;)V

    .line 287
    .local v1, "client":Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;
    new-instance v2, Landroid/media/MediaScannerConnection;

    sget-object v10, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    invoke-direct {v2, v10, v1}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 288
    .local v2, "connection":Landroid/media/MediaScannerConnection;
    invoke-virtual {v1, v2}, Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;->setConnection(Landroid/media/MediaScannerConnection;)V

    .line 289
    invoke-virtual {v2}, Landroid/media/MediaScannerConnection;->connect()V

    .line 291
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Screenshot \'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\' is available in gallery."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 292
    return-void

    .line 280
    .end local v1    # "client":Lnet/hockeyapp/android/FeedbackManager$MediaScannerClient;
    .end local v2    # "connection":Landroid/media/MediaScannerConnection;
    :catch_0
    move-exception v4

    .line 281
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "HockeyApp"

    const-string/jumbo v11, "Could not save screenshot."

    invoke-static {v10, v11, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    const-string/jumbo v10, "Screenshot could not be created. Sorry."

    invoke-static {p0, v10, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public static unregister()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    sput-object v0, Lnet/hockeyapp/android/FeedbackManager;->lastListener:Lnet/hockeyapp/android/FeedbackManagerListener;

    .line 152
    return-void
.end method

.method public static unsetCurrentActivityForScreenshot(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 247
    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    if-eq v0, p0, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    invoke-static {}, Lnet/hockeyapp/android/FeedbackManager;->endNotification()V

    .line 252
    const/4 v0, 0x0

    sput-object v0, Lnet/hockeyapp/android/FeedbackManager;->currentActivity:Landroid/app/Activity;

    goto :goto_0
.end method
