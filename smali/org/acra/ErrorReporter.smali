.class public Lorg/acra/ErrorReporter;
.super Ljava/lang/Object;
.source "ErrorReporter.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/acra/ErrorReporter$ReportBuilder;,
        Lorg/acra/ErrorReporter$TimeHelper;
    }
.end annotation


# static fields
.field private static final NULL_EXCEPTION_HANDLER_INITIALIZER:Lorg/acra/ExceptionHandlerInitializer;

.field private static mNotificationCounter:I


# instance fields
.field private final crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

.field private enabled:Z

.field private volatile exceptionHandlerInitializer:Lorg/acra/ExceptionHandlerInitializer;

.field private final fileNameParser:Lorg/acra/CrashReportFileNameParser;

.field private lastActivityCreated:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/app/Application;

.field private final mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final mReportSenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/acra/sender/ReportSender;",
            ">;"
        }
    .end annotation
.end field

.field private final prefs:Landroid/content/SharedPreferences;

.field private final supportedAndroidVersion:Z

.field private toastWaitEnded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lorg/acra/ErrorReporter$1;

    invoke-direct {v0}, Lorg/acra/ErrorReporter$1;-><init>()V

    sput-object v0, Lorg/acra/ErrorReporter;->NULL_EXCEPTION_HANDLER_INITIALIZER:Lorg/acra/ExceptionHandlerInitializer;

    .line 124
    const/4 v0, 0x0

    sput v0, Lorg/acra/ErrorReporter;->mNotificationCounter:I

    return-void
.end method

.method constructor <init>(Landroid/app/Application;Landroid/content/SharedPreferences;ZZ)V
    .locals 4
    .param p1, "context"    # Landroid/app/Application;
    .param p2, "prefs"    # Landroid/content/SharedPreferences;
    .param p3, "enabled"    # Z
    .param p4, "supportedAndroidVersion"    # Z

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/acra/ErrorReporter;->enabled:Z

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/List;

    .line 98
    new-instance v2, Lorg/acra/CrashReportFileNameParser;

    invoke-direct {v2}, Lorg/acra/CrashReportFileNameParser;-><init>()V

    iput-object v2, p0, Lorg/acra/ErrorReporter;->fileNameParser:Lorg/acra/CrashReportFileNameParser;

    .line 105
    new-instance v2, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/acra/ErrorReporter;->lastActivityCreated:Ljava/lang/ref/WeakReference;

    .line 111
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/acra/ErrorReporter;->toastWaitEnded:Z

    .line 119
    sget-object v2, Lorg/acra/ErrorReporter;->NULL_EXCEPTION_HANDLER_INITIALIZER:Lorg/acra/ExceptionHandlerInitializer;

    iput-object v2, p0, Lorg/acra/ErrorReporter;->exceptionHandlerInitializer:Lorg/acra/ExceptionHandlerInitializer;

    .line 139
    iput-object p1, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    .line 140
    iput-object p2, p0, Lorg/acra/ErrorReporter;->prefs:Landroid/content/SharedPreferences;

    .line 141
    iput-boolean p3, p0, Lorg/acra/ErrorReporter;->enabled:Z

    .line 142
    iput-boolean p4, p0, Lorg/acra/ErrorReporter;->supportedAndroidVersion:Z

    .line 147
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/ACRAConfiguration;->getReportFields()Ljava/util/List;

    move-result-object v2

    sget-object v3, Lorg/acra/ReportField;->INITIAL_CONFIGURATION:Lorg/acra/ReportField;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    iget-object v2, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-static {v2}, Lorg/acra/collector/ConfigurationCollector;->collectConfiguration(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "initialConfiguration":Ljava/lang/String;
    :goto_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 158
    .local v0, "appStartDate":Ljava/util/Calendar;
    invoke-static {}, Lorg/acra/collector/Compatibility;->getAPILevel()I

    move-result v2

    const/16 v3, 0xe

    if-lt v2, v3, :cond_0

    .line 160
    new-instance v2, Lorg/acra/ErrorReporter$2;

    invoke-direct {v2, p0}, Lorg/acra/ErrorReporter$2;-><init>(Lorg/acra/ErrorReporter;)V

    invoke-static {p1, v2}, Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ApplicationHelper;->registerActivityLifecycleCallbacks(Landroid/app/Application;Lorg/acra/jraf/android/util/activitylifecyclecallbackscompat/ActivityLifecycleCallbacksCompat;)V

    .line 211
    :cond_0
    new-instance v2, Lorg/acra/collector/CrashReportDataFactory;

    iget-object v3, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-direct {v2, v3, p2, v0, v1}, Lorg/acra/collector/CrashReportDataFactory;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/util/Calendar;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

    .line 215
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    iput-object v2, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 216
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 217
    return-void

    .line 150
    .end local v0    # "appStartDate":Ljava/util/Calendar;
    .end local v1    # "initialConfiguration":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "initialConfiguration":Ljava/lang/String;
    goto :goto_0
.end method

.method static synthetic access$002(Lorg/acra/ErrorReporter;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .param p0, "x0"    # Lorg/acra/ErrorReporter;
    .param p1, "x1"    # Ljava/lang/ref/WeakReference;

    .prologue
    .line 83
    iput-object p1, p0, Lorg/acra/ErrorReporter;->lastActivityCreated:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic access$1100(Lorg/acra/ErrorReporter;)Z
    .locals 1
    .param p0, "x0"    # Lorg/acra/ErrorReporter;

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->toastWaitEnded:Z

    return v0
.end method

.method static synthetic access$1102(Lorg/acra/ErrorReporter;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/acra/ErrorReporter;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lorg/acra/ErrorReporter;->toastWaitEnded:Z

    return p1
.end method

.method static synthetic access$1200(Lorg/acra/ErrorReporter;Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)Landroid/content/Intent;
    .locals 1
    .param p0, "x0"    # Lorg/acra/ErrorReporter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lorg/acra/ErrorReporter$ReportBuilder;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lorg/acra/ErrorReporter;->createCrashReportDialogIntent(Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lorg/acra/ErrorReporter;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lorg/acra/ErrorReporter;
    .param p1, "x1"    # Ljava/lang/Thread;
    .param p2, "x2"    # Ljava/lang/Throwable;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lorg/acra/ErrorReporter;->endApplication(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1400(Lorg/acra/ErrorReporter;Lorg/acra/ErrorReporter$ReportBuilder;)V
    .locals 0
    .param p0, "x0"    # Lorg/acra/ErrorReporter;
    .param p1, "x1"    # Lorg/acra/ErrorReporter$ReportBuilder;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lorg/acra/ErrorReporter;->report(Lorg/acra/ErrorReporter$ReportBuilder;)V

    return-void
.end method

.method static synthetic access$400(Lorg/acra/ErrorReporter;)Landroid/app/Application;
    .locals 1
    .param p0, "x0"    # Lorg/acra/ErrorReporter;

    .prologue
    .line 83
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    return-object v0
.end method

.method private containsOnlySilentOrApprovedReports([Ljava/lang/String;)Z
    .locals 5
    .param p1, "reportFileNames"    # [Ljava/lang/String;

    .prologue
    .line 1002
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1003
    .local v3, "reportFileName":Ljava/lang/String;
    iget-object v4, p0, Lorg/acra/ErrorReporter;->fileNameParser:Lorg/acra/CrashReportFileNameParser;

    invoke-virtual {v4, v3}, Lorg/acra/CrashReportFileNameParser;->isApproved(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1004
    const/4 v4, 0x0

    .line 1007
    .end local v3    # "reportFileName":Ljava/lang/String;
    :goto_1
    return v4

    .line 1002
    .restart local v3    # "reportFileName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1007
    .end local v3    # "reportFileName":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method private createCrashReportDialogIntent(Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)Landroid/content/Intent;
    .locals 5
    .param p1, "reportFileName"    # Ljava/lang/String;
    .param p2, "reportBuilder"    # Lorg/acra/ErrorReporter$ReportBuilder;

    .prologue
    .line 870
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Creating DialogIntent for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lorg/acra/ErrorReporter$ReportBuilder;->access$600(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lorg/acra/ACRAConfiguration;->reportDialogClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 872
    .local v0, "dialogIntent":Landroid/content/Intent;
    const-string/jumbo v1, "REPORT_FILE_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 873
    const-string/jumbo v1, "REPORT_EXCEPTION"

    invoke-static {p2}, Lorg/acra/ErrorReporter$ReportBuilder;->access$600(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 874
    return-object v0
.end method

.method private createNotification(Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)V
    .locals 19
    .param p1, "reportFileName"    # Ljava/lang/String;
    .param p2, "reportBuilder"    # Lorg/acra/ErrorReporter$ReportBuilder;

    .prologue
    .line 888
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    const-string/jumbo v16, "notification"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/NotificationManager;

    .line 890
    .local v11, "notificationManager":Landroid/app/NotificationManager;
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v3

    .line 893
    .local v3, "conf":Lorg/acra/annotation/ReportsCrashes;
    invoke-interface {v3}, Lorg/acra/annotation/ReportsCrashes;->resNotifIcon()I

    move-result v9

    .line 895
    .local v9, "icon":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-interface {v3}, Lorg/acra/annotation/ReportsCrashes;->resNotifTickerText()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    .line 896
    .local v12, "tickerText":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 898
    .local v14, "when":J
    sget-object v13, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v16, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "Creating Notification for "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    invoke-direct/range {p0 .. p2}, Lorg/acra/ErrorReporter;->createCrashReportDialogIntent(Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)Landroid/content/Intent;

    move-result-object v7

    .line 900
    .local v7, "crashReportDialogIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    sget v16, Lorg/acra/ErrorReporter;->mNotificationCounter:I

    add-int/lit8 v17, v16, 0x1

    sput v17, Lorg/acra/ErrorReporter;->mNotificationCounter:I

    const/high16 v17, 0x8000000

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v13, v0, v7, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 902
    .local v4, "contentIntent":Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-interface {v3}, Lorg/acra/annotation/ReportsCrashes;->resNotifTitle()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 903
    .local v6, "contentTitle":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-interface {v3}, Lorg/acra/annotation/ReportsCrashes;->resNotifText()I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 905
    .local v5, "contentText":Ljava/lang/CharSequence;
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-direct {v2, v13}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 906
    .local v2, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v2, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    invoke-virtual {v13, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    invoke-virtual {v13, v14, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v10

    .line 916
    .local v10, "notification":Landroid/app/Notification;
    iget v13, v10, Landroid/app/Notification;->flags:I

    or-int/lit8 v13, v13, 0x10

    iput v13, v10, Landroid/app/Notification;->flags:I

    .line 921
    invoke-direct/range {p0 .. p2}, Lorg/acra/ErrorReporter;->createCrashReportDialogIntent(Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)Landroid/content/Intent;

    move-result-object v8

    .line 922
    .local v8, "deleteIntent":Landroid/content/Intent;
    const-string/jumbo v13, "FORCE_CANCEL"

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v8, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 923
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    const/16 v16, -0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v13, v0, v8, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    iput-object v13, v10, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 926
    const/16 v13, 0x29a

    invoke-virtual {v11, v13, v10}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 927
    return-void
.end method

.method private deletePendingReports(ZZI)V
    .locals 10
    .param p1, "deleteApprovedReports"    # Z
    .param p2, "deleteNonApprovedReports"    # Z
    .param p3, "nbOfLatestToKeep"    # I

    .prologue
    .line 976
    new-instance v5, Lorg/acra/CrashReportFinder;

    iget-object v6, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-direct {v5, v6}, Lorg/acra/CrashReportFinder;-><init>(Landroid/content/Context;)V

    .line 977
    .local v5, "reportFinder":Lorg/acra/CrashReportFinder;
    invoke-virtual {v5}, Lorg/acra/CrashReportFinder;->getCrashReportFiles()[Ljava/lang/String;

    move-result-object v2

    .line 978
    .local v2, "filesList":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 979
    const/4 v3, 0x0

    .local v3, "iFile":I
    :goto_0
    array-length v6, v2

    sub-int/2addr v6, p3

    if-ge v3, v6, :cond_3

    .line 980
    aget-object v0, v2, v3

    .line 981
    .local v0, "fileName":Ljava/lang/String;
    iget-object v6, p0, Lorg/acra/ErrorReporter;->fileNameParser:Lorg/acra/CrashReportFileNameParser;

    invoke-virtual {v6, v0}, Lorg/acra/CrashReportFileNameParser;->isApproved(Ljava/lang/String;)Z

    move-result v4

    .line 982
    .local v4, "isReportApproved":Z
    if-eqz v4, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-nez v4, :cond_2

    if-eqz p2, :cond_2

    .line 983
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-direct {v1, v6, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 984
    .local v1, "fileToDelete":Ljava/io/File;
    sget-object v6, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v7, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Deleting file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_2

    .line 986
    sget-object v6, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v7, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Could not delete report : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 979
    .end local v1    # "fileToDelete":Ljava/io/File;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 990
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v4    # "isReportApproved":Z
    :cond_3
    return-void
.end method

.method private endApplication(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "uncaughtExceptionThread"    # Ljava/lang/Thread;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 451
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/acra/ACRAConfiguration;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v4

    sget-object v5, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v4, v5, :cond_0

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/acra/ACRAConfiguration;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v4

    sget-object v5, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-ne v4, v5, :cond_1

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/acra/ACRAConfiguration;->forceCloseDialogAfterToast()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v2, v0

    .line 456
    .local v2, "letDefaultHandlerEndApplication":Z
    :goto_0
    if-eqz p1, :cond_2

    .line 457
    .local v0, "handlingUncaughtException":Z
    :goto_1
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    iget-object v3, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v3, :cond_3

    .line 459
    sget-object v3, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v4, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Handing Exception on to default ExceptionHandler"

    invoke-interface {v3, v4, v5}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v3, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v3, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 482
    :goto_2
    return-void

    .end local v0    # "handlingUncaughtException":Z
    .end local v2    # "letDefaultHandlerEndApplication":Z
    :cond_1
    move v2, v3

    .line 451
    goto :goto_0

    .restart local v2    # "letDefaultHandlerEndApplication":Z
    :cond_2
    move v0, v3

    .line 456
    goto :goto_1

    .line 465
    .restart local v0    # "handlingUncaughtException":Z
    :cond_3
    sget-object v3, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v4, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " fatal error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5, p2}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 471
    iget-object v3, p0, Lorg/acra/ErrorReporter;->lastActivityCreated:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 472
    .local v1, "lastActivity":Landroid/app/Activity;
    if-eqz v1, :cond_4

    .line 473
    sget-object v3, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v4, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Finishing the last Activity prior to killing the Process"

    invoke-interface {v3, v4, v5}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 475
    sget-object v3, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v4, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Finished "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v3, p0, Lorg/acra/ErrorReporter;->lastActivityCreated:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->clear()V

    .line 479
    :cond_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 480
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    goto :goto_2
.end method

.method public static getInstance()Lorg/acra/ErrorReporter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 229
    invoke-static {}, Lorg/acra/ACRA;->getErrorReporter()Lorg/acra/ErrorReporter;

    move-result-object v0

    return-object v0
.end method

.method private getReportFileName(Lorg/acra/collector/CrashReportData;)Ljava/lang/String;
    .locals 6
    .param p1, "crashData"    # Lorg/acra/collector/CrashReportData;

    .prologue
    .line 930
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 931
    .local v1, "now":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 932
    .local v2, "timestamp":J
    sget-object v4, Lorg/acra/ReportField;->IS_SILENT:Lorg/acra/ReportField;

    invoke-virtual {p1, v4}, Lorg/acra/collector/CrashReportData;->getProperty(Lorg/acra/ReportField;)Ljava/lang/String;

    move-result-object v0

    .line 933
    .local v0, "isSilent":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_0

    sget-object v4, Lorg/acra/ACRAConstants;->SILENT_SUFFIX:Ljava/lang/String;

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ".stacktrace"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_0
    const-string/jumbo v4, ""

    goto :goto_0
.end method

.method private report(Lorg/acra/ErrorReporter$ReportBuilder;)V
    .locals 14
    .param p1, "reportBuilder"    # Lorg/acra/ErrorReporter$ReportBuilder;

    .prologue
    .line 699
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->enabled:Z

    if-nez v0, :cond_1

    .line 861
    :cond_0
    :goto_0
    return-void

    .line 704
    :cond_1
    :try_start_0
    iget-object v0, p0, Lorg/acra/ErrorReporter;->exceptionHandlerInitializer:Lorg/acra/ExceptionHandlerInitializer;

    invoke-interface {v0, p0}, Lorg/acra/ExceptionHandlerInitializer;->initializeExceptionHandler(Lorg/acra/ErrorReporter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    :goto_1
    const/4 v9, 0x0

    .line 711
    .local v9, "sendOnlySilentReports":Z
    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$200(Lorg/acra/ErrorReporter$ReportBuilder;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 713
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v8

    .line 726
    .local v8, "reportingInteractionMode":Lorg/acra/ReportingInteractionMode;
    :cond_2
    :goto_2
    sget-object v0, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq v8, v0, :cond_3

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->resToastText()I

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-eq v8, v0, :cond_3

    sget-object v0, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    if-ne v8, v0, :cond_a

    :cond_3
    const/4 v12, 0x1

    .line 729
    .local v12, "shouldDisplayToast":Z
    :goto_3
    new-instance v11, Lorg/acra/ErrorReporter$TimeHelper;

    const/4 v0, 0x0

    invoke-direct {v11, v0}, Lorg/acra/ErrorReporter$TimeHelper;-><init>(Lorg/acra/ErrorReporter$1;)V

    .line 730
    .local v11, "sentToastTimeMillis":Lorg/acra/ErrorReporter$TimeHelper;
    if-eqz v12, :cond_4

    .line 731
    new-instance v0, Lorg/acra/ErrorReporter$3;

    invoke-direct {v0, p0, v11}, Lorg/acra/ErrorReporter$3;-><init>(Lorg/acra/ErrorReporter;Lorg/acra/ErrorReporter$TimeHelper;)V

    invoke-virtual {v0}, Lorg/acra/ErrorReporter$3;->start()V

    .line 752
    :cond_4
    iget-object v0, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$500(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$600(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$700(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/util/Map;

    move-result-object v3

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$200(Lorg/acra/ErrorReporter$ReportBuilder;)Z

    move-result v4

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$800(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lorg/acra/collector/CrashReportDataFactory;->createCrashData(Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;ZLjava/lang/Thread;)Lorg/acra/collector/CrashReportData;

    move-result-object v6

    .line 758
    .local v6, "crashReportData":Lorg/acra/collector/CrashReportData;
    invoke-direct {p0, v6}, Lorg/acra/ErrorReporter;->getReportFileName(Lorg/acra/collector/CrashReportData;)Ljava/lang/String;

    move-result-object v4

    .line 759
    .local v4, "reportFileName":Ljava/lang/String;
    invoke-direct {p0, v4, v6}, Lorg/acra/ErrorReporter;->saveCrashReportFile(Ljava/lang/String;Lorg/acra/collector/CrashReportData;)V

    .line 761
    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$900(Lorg/acra/ErrorReporter$ReportBuilder;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->sendReportsAtShutdown()Z

    move-result v0

    if-nez v0, :cond_5

    .line 762
    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$800(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Thread;

    move-result-object v0

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$600(Lorg/acra/ErrorReporter$ReportBuilder;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/acra/ErrorReporter;->endApplication(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 765
    :cond_5
    const/4 v10, 0x0

    .line 767
    .local v10, "sender":Lorg/acra/SendWorker;
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v8, v0, :cond_6

    sget-object v0, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq v8, v0, :cond_6

    iget-object v0, p0, Lorg/acra/ErrorReporter;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "acra.alwaysaccept"

    const/4 v5, 0x0

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 772
    :cond_6
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "About to start ReportSenderWorker from #handleException"

    invoke-interface {v0, v1, v5}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    const/4 v0, 0x1

    invoke-virtual {p0, v9, v0}, Lorg/acra/ErrorReporter;->startSendingReports(ZZ)Lorg/acra/SendWorker;

    move-result-object v10

    .line 774
    sget-object v0, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-ne v8, v0, :cond_7

    invoke-static {p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$900(Lorg/acra/ErrorReporter$ReportBuilder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    :cond_7
    :goto_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/acra/ErrorReporter;->toastWaitEnded:Z

    .line 786
    if-eqz v12, :cond_8

    .line 789
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/acra/ErrorReporter;->toastWaitEnded:Z

    .line 790
    new-instance v0, Lorg/acra/ErrorReporter$4;

    invoke-direct {v0, p0, v11}, Lorg/acra/ErrorReporter$4;-><init>(Lorg/acra/ErrorReporter;Lorg/acra/ErrorReporter$TimeHelper;)V

    invoke-virtual {v0}, Lorg/acra/ErrorReporter$4;->start()V

    .line 812
    :cond_8
    move-object v2, v10

    .line 813
    .local v2, "worker":Lorg/acra/SendWorker;
    sget-object v0, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    if-ne v8, v0, :cond_c

    iget-object v0, p0, Lorg/acra/ErrorReporter;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "acra.alwaysaccept"

    const/4 v5, 0x0

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v3, 0x1

    .line 816
    .local v3, "showDirectDialog":Z
    :goto_5
    new-instance v0, Lorg/acra/ErrorReporter$5;

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/acra/ErrorReporter$5;-><init>(Lorg/acra/ErrorReporter;Lorg/acra/SendWorker;ZLjava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)V

    invoke-virtual {v0}, Lorg/acra/ErrorReporter$5;->start()V

    goto/16 :goto_0

    .line 705
    .end local v2    # "worker":Lorg/acra/SendWorker;
    .end local v3    # "showDirectDialog":Z
    .end local v4    # "reportFileName":Ljava/lang/String;
    .end local v6    # "crashReportData":Lorg/acra/collector/CrashReportData;
    .end local v8    # "reportingInteractionMode":Lorg/acra/ReportingInteractionMode;
    .end local v9    # "sendOnlySilentReports":Z
    .end local v10    # "sender":Lorg/acra/SendWorker;
    .end local v11    # "sentToastTimeMillis":Lorg/acra/ErrorReporter$TimeHelper;
    .end local v12    # "shouldDisplayToast":Z
    :catch_0
    move-exception v7

    .line 706
    .local v7, "exceptionInRunnable":Ljava/lang/Exception;
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed to initlize "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v13, p0, Lorg/acra/ErrorReporter;->exceptionHandlerInitializer:Lorg/acra/ExceptionHandlerInitializer;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v13, " from #handleException"

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 715
    .end local v7    # "exceptionInRunnable":Ljava/lang/Exception;
    .restart local v9    # "sendOnlySilentReports":Z
    :cond_9
    sget-object v8, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    .line 721
    .restart local v8    # "reportingInteractionMode":Lorg/acra/ReportingInteractionMode;
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ACRAConfiguration;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v0

    sget-object v1, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v0, v1, :cond_2

    .line 722
    const/4 v9, 0x1

    goto/16 :goto_2

    .line 726
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 780
    .restart local v4    # "reportFileName":Ljava/lang/String;
    .restart local v6    # "crashReportData":Lorg/acra/collector/CrashReportData;
    .restart local v10    # "sender":Lorg/acra/SendWorker;
    .restart local v11    # "sentToastTimeMillis":Lorg/acra/ErrorReporter$TimeHelper;
    .restart local v12    # "shouldDisplayToast":Z
    :cond_b
    sget-object v0, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-ne v8, v0, :cond_7

    .line 781
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v5, "Creating Notification."

    invoke-interface {v0, v1, v5}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    invoke-direct {p0, v4, p1}, Lorg/acra/ErrorReporter;->createNotification(Ljava/lang/String;Lorg/acra/ErrorReporter$ReportBuilder;)V

    goto :goto_4

    .line 813
    .restart local v2    # "worker":Lorg/acra/SendWorker;
    :cond_c
    const/4 v3, 0x0

    goto :goto_5
.end method

.method private saveCrashReportFile(Ljava/lang/String;Lorg/acra/collector/CrashReportData;)V
    .locals 6
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "crashData"    # Lorg/acra/collector/CrashReportData;

    .prologue
    .line 954
    :try_start_0
    sget-object v2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Writing crash report file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    new-instance v1, Lorg/acra/CrashReportPersister;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-direct {v1, v2}, Lorg/acra/CrashReportPersister;-><init>(Landroid/content/Context;)V

    .line 956
    .local v1, "persister":Lorg/acra/CrashReportPersister;
    invoke-virtual {v1, p2, p1}, Lorg/acra/CrashReportPersister;->store(Lorg/acra/collector/CrashReportData;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 960
    .end local v1    # "persister":Lorg/acra/CrashReportPersister;
    :goto_0
    return-void

    .line 957
    :catch_0
    move-exception v0

    .line 958
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v4, "An error occurred while writing the report file..."

    invoke-interface {v2, v3, v4, v0}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addCustomData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

    invoke-virtual {v0, p1, p2}, Lorg/acra/collector/CrashReportDataFactory;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 244
    return-void
.end method

.method public addReportSender(Lorg/acra/sender/ReportSender;)V
    .locals 1
    .param p1, "sender"    # Lorg/acra/sender/ReportSender;

    .prologue
    .line 347
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    return-void
.end method

.method public checkReportsOnApplicationStart()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 551
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v12

    invoke-virtual {v12}, Lorg/acra/ACRAConfiguration;->deleteOldUnsentReportsOnApplicationStart()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 554
    iget-object v12, p0, Lorg/acra/ErrorReporter;->prefs:Landroid/content/SharedPreferences;

    const-string/jumbo v13, "acra.lastVersionNr"

    invoke-interface {v12, v13, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    int-to-long v2, v12

    .line 555
    .local v2, "lastVersionNr":J
    new-instance v6, Lorg/acra/util/PackageManagerWrapper;

    iget-object v12, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-direct {v6, v12}, Lorg/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 556
    .local v6, "packageManagerWrapper":Lorg/acra/util/PackageManagerWrapper;
    invoke-virtual {v6}, Lorg/acra/util/PackageManagerWrapper;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 557
    .local v5, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_1

    .line 558
    iget v12, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-long v12, v12

    cmp-long v12, v12, v2

    if-lez v12, :cond_7

    move v1, v10

    .line 559
    .local v1, "newVersion":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 560
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->deletePendingReports()V

    .line 562
    :cond_0
    iget-object v12, p0, Lorg/acra/ErrorReporter;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 563
    .local v7, "prefsEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v12, "acra.lastVersionNr"

    iget v13, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-interface {v7, v12, v13}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 564
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 568
    .end local v1    # "newVersion":Z
    .end local v2    # "lastVersionNr":J
    .end local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "packageManagerWrapper":Lorg/acra/util/PackageManagerWrapper;
    .end local v7    # "prefsEditor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v12

    invoke-virtual {v12}, Lorg/acra/ACRAConfiguration;->mode()Lorg/acra/ReportingInteractionMode;

    move-result-object v9

    .line 570
    .local v9, "reportingInteractionMode":Lorg/acra/ReportingInteractionMode;
    sget-object v12, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-eq v9, v12, :cond_2

    sget-object v12, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    if-ne v9, v12, :cond_3

    :cond_2
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v12

    invoke-virtual {v12}, Lorg/acra/ACRAConfiguration;->deleteUnapprovedReportsOnApplicationStart()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 578
    invoke-virtual {p0, v10}, Lorg/acra/ErrorReporter;->deletePendingNonApprovedReports(Z)V

    .line 581
    :cond_3
    new-instance v8, Lorg/acra/CrashReportFinder;

    iget-object v12, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-direct {v8, v12}, Lorg/acra/CrashReportFinder;-><init>(Landroid/content/Context;)V

    .line 582
    .local v8, "reportFinder":Lorg/acra/CrashReportFinder;
    invoke-virtual {v8}, Lorg/acra/CrashReportFinder;->getCrashReportFiles()[Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "filesList":[Ljava/lang/String;
    if-eqz v0, :cond_6

    array-length v12, v0

    if-lez v12, :cond_6

    .line 593
    invoke-direct {p0, v0}, Lorg/acra/ErrorReporter;->containsOnlySilentOrApprovedReports([Ljava/lang/String;)Z

    move-result v4

    .line 595
    .local v4, "onlySilentOrApprovedReports":Z
    sget-object v12, Lorg/acra/ReportingInteractionMode;->SILENT:Lorg/acra/ReportingInteractionMode;

    if-eq v9, v12, :cond_4

    sget-object v12, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-eq v9, v12, :cond_4

    if-eqz v4, :cond_6

    sget-object v12, Lorg/acra/ReportingInteractionMode;->NOTIFICATION:Lorg/acra/ReportingInteractionMode;

    if-eq v9, v12, :cond_4

    sget-object v12, Lorg/acra/ReportingInteractionMode;->DIALOG:Lorg/acra/ReportingInteractionMode;

    if-ne v9, v12, :cond_6

    .line 599
    :cond_4
    sget-object v12, Lorg/acra/ReportingInteractionMode;->TOAST:Lorg/acra/ReportingInteractionMode;

    if-ne v9, v12, :cond_5

    if-nez v4, :cond_5

    .line 602
    iget-object v12, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v13

    invoke-virtual {v13}, Lorg/acra/ACRAConfiguration;->resToastText()I

    move-result v13

    invoke-static {v12, v13, v10}, Lorg/acra/util/ToastSender;->sendToast(Landroid/content/Context;II)V

    .line 605
    :cond_5
    sget-object v10, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v12, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v13, "About to start ReportSenderWorker from #checkReportOnApplicationStart"

    invoke-interface {v10, v12, v13}, Lorg/acra/log/ACRALog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    invoke-virtual {p0, v11, v11}, Lorg/acra/ErrorReporter;->startSendingReports(ZZ)Lorg/acra/SendWorker;

    .line 610
    .end local v4    # "onlySilentOrApprovedReports":Z
    :cond_6
    return-void

    .end local v0    # "filesList":[Ljava/lang/String;
    .end local v8    # "reportFinder":Lorg/acra/CrashReportFinder;
    .end local v9    # "reportingInteractionMode":Lorg/acra/ReportingInteractionMode;
    .restart local v2    # "lastVersionNr":J
    .restart local v5    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v6    # "packageManagerWrapper":Lorg/acra/util/PackageManagerWrapper;
    :cond_7
    move v1, v11

    .line 558
    goto :goto_0
.end method

.method public clearCustomData()V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

    invoke-virtual {v0}, Lorg/acra/collector/CrashReportDataFactory;->clearCustomData()V

    .line 324
    return-void
.end method

.method deletePendingNonApprovedReports(Z)V
    .locals 3
    .param p1, "keepOne"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 622
    if-eqz p1, :cond_0

    move v0, v1

    .line 623
    .local v0, "nbReportsToKeep":I
    :goto_0
    invoke-direct {p0, v2, v1, v0}, Lorg/acra/ErrorReporter;->deletePendingReports(ZZI)V

    .line 624
    return-void

    .end local v0    # "nbReportsToKeep":I
    :cond_0
    move v0, v2

    .line 622
    goto :goto_0
.end method

.method deletePendingReports()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 542
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lorg/acra/ErrorReporter;->deletePendingReports(ZZI)V

    .line 543
    return-void
.end method

.method public getCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 337
    iget-object v0, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

    invoke-virtual {v0, p1}, Lorg/acra/collector/CrashReportDataFactory;->getCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleException(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 658
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->reportBuilder()Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/acra/ErrorReporter$ReportBuilder;->exception(Ljava/lang/Throwable;)Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ErrorReporter$ReportBuilder;->send()V

    .line 661
    return-void
.end method

.method public handleException(Ljava/lang/Throwable;Z)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "endApplication"    # Z

    .prologue
    .line 639
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->reportBuilder()Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/acra/ErrorReporter$ReportBuilder;->exception(Ljava/lang/Throwable;)Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    .line 641
    .local v0, "builder":Lorg/acra/ErrorReporter$ReportBuilder;
    if-eqz p2, :cond_0

    .line 642
    invoke-virtual {v0}, Lorg/acra/ErrorReporter$ReportBuilder;->endsApplication()Lorg/acra/ErrorReporter$ReportBuilder;

    .line 644
    :cond_0
    invoke-virtual {v0}, Lorg/acra/ErrorReporter$ReportBuilder;->send()V

    .line 645
    return-void
.end method

.method public handleSilentException(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 495
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->enabled:Z

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->reportBuilder()Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/acra/ErrorReporter$ReportBuilder;->exception(Ljava/lang/Throwable;)Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ErrorReporter$ReportBuilder;->forceSilent()Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/acra/ErrorReporter$ReportBuilder;->send()V

    .line 500
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "ACRA sent Silent report."

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :goto_0
    return-void

    .line 504
    :cond_0
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "ACRA is disabled. Silent report not sent."

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 269
    iget-object v0, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

    invoke-virtual {v0, p1, p2}, Lorg/acra/collector/CrashReportDataFactory;->putCustomData(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeAllReportSenders()V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 386
    return-void
.end method

.method public removeCustomData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 315
    iget-object v0, p0, Lorg/acra/ErrorReporter;->crashReportDataFactory:Lorg/acra/collector/CrashReportDataFactory;

    invoke-virtual {v0, p1}, Lorg/acra/collector/CrashReportDataFactory;->removeCustomData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public removeReportSender(Lorg/acra/sender/ReportSender;)V
    .locals 1
    .param p1, "sender"    # Lorg/acra/sender/ReportSender;

    .prologue
    .line 359
    iget-object v0, p0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 360
    return-void
.end method

.method public removeReportSenders(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 370
    .local p1, "senderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lorg/acra/sender/ReportSender;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 371
    iget-object v2, p0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/acra/sender/ReportSender;

    .line 372
    .local v1, "sender":Lorg/acra/sender/ReportSender;
    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 373
    iget-object v2, p0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 377
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "sender":Lorg/acra/sender/ReportSender;
    :cond_1
    return-void
.end method

.method public reportBuilder()Lorg/acra/ErrorReporter$ReportBuilder;
    .locals 1

    .prologue
    .line 669
    new-instance v0, Lorg/acra/ErrorReporter$ReportBuilder;

    invoke-direct {v0, p0}, Lorg/acra/ErrorReporter$ReportBuilder;-><init>(Lorg/acra/ErrorReporter;)V

    return-object v0
.end method

.method public setDefaultReportSenders()V
    .locals 7

    .prologue
    .line 1015
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v0

    .line 1016
    .local v0, "conf":Lorg/acra/annotation/ReportsCrashes;
    invoke-static {}, Lorg/acra/ACRA;->getApplication()Landroid/app/Application;

    move-result-object v1

    .line 1017
    .local v1, "mApplication":Landroid/app/Application;
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->removeAllReportSenders()V

    .line 1021
    const-string/jumbo v3, ""

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->mailTo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1022
    sget-object v3, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v4, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " reports will be sent by email (if accepted by user)."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    new-instance v3, Lorg/acra/sender/EmailIntentSender;

    invoke-direct {v3, v1}, Lorg/acra/sender/EmailIntentSender;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3}, Lorg/acra/ErrorReporter;->setReportSender(Lorg/acra/sender/ReportSender;)V

    .line 1047
    :cond_0
    :goto_0
    return-void

    .line 1027
    :cond_1
    new-instance v2, Lorg/acra/util/PackageManagerWrapper;

    invoke-direct {v2, v1}, Lorg/acra/util/PackageManagerWrapper;-><init>(Landroid/content/Context;)V

    .line 1028
    .local v2, "pm":Lorg/acra/util/PackageManagerWrapper;
    const-string/jumbo v3, "android.permission.INTERNET"

    invoke-virtual {v2, v3}, Lorg/acra/util/PackageManagerWrapper;->hasPermission(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1034
    sget-object v3, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v4, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " should be granted permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "android.permission.INTERNET"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " if you want your crash reports to be sent. If you don\'t want to add this permission to your application you can also enable sending reports by email. If this is your will then provide your email address in @ReportsCrashes(mailTo=\"your.account@domain.com\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1044
    :cond_2
    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->formUri()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, ""

    invoke-interface {v0}, Lorg/acra/annotation/ReportsCrashes;->formUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1045
    new-instance v3, Lorg/acra/sender/HttpSender;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Lorg/acra/ACRAConfiguration;->httpMethod()Lorg/acra/sender/HttpSender$Method;

    move-result-object v4

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lorg/acra/ACRAConfiguration;->reportType()Lorg/acra/sender/HttpSender$Type;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lorg/acra/sender/HttpSender;-><init>(Lorg/acra/sender/HttpSender$Method;Lorg/acra/sender/HttpSender$Type;Ljava/util/Map;)V

    invoke-virtual {p0, v3}, Lorg/acra/ErrorReporter;->setReportSender(Lorg/acra/sender/ReportSender;)V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 515
    iget-boolean v0, p0, Lorg/acra/ErrorReporter;->supportedAndroidVersion:Z

    if-nez v0, :cond_0

    .line 516
    sget-object v0, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v1, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v2, "ACRA 4.7.0+ requires Froyo or greater. ACRA is disabled and will NOT catch crashes or send messages."

    invoke-interface {v0, v1, v2}, Lorg/acra/log/ACRALog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :goto_0
    return-void

    .line 518
    :cond_0
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ACRA is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_1

    const-string/jumbo v0, "enabled"

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, " for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iput-boolean p1, p0, Lorg/acra/ErrorReporter;->enabled:Z

    goto :goto_0

    .line 518
    :cond_1
    const-string/jumbo v0, "disabled"

    goto :goto_1
.end method

.method public setExceptionHandlerInitializer(Lorg/acra/ExceptionHandlerInitializer;)V
    .locals 0
    .param p1, "initializer"    # Lorg/acra/ExceptionHandlerInitializer;

    .prologue
    .line 301
    if-eqz p1, :cond_0

    .end local p1    # "initializer":Lorg/acra/ExceptionHandlerInitializer;
    :goto_0
    iput-object p1, p0, Lorg/acra/ErrorReporter;->exceptionHandlerInitializer:Lorg/acra/ExceptionHandlerInitializer;

    .line 302
    return-void

    .line 301
    .restart local p1    # "initializer":Lorg/acra/ExceptionHandlerInitializer;
    :cond_0
    sget-object p1, Lorg/acra/ErrorReporter;->NULL_EXCEPTION_HANDLER_INITIALIZER:Lorg/acra/ExceptionHandlerInitializer;

    goto :goto_0
.end method

.method public setReportSender(Lorg/acra/sender/ReportSender;)V
    .locals 0
    .param p1, "sender"    # Lorg/acra/sender/ReportSender;

    .prologue
    .line 396
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->removeAllReportSenders()V

    .line 397
    invoke-virtual {p0, p1}, Lorg/acra/ErrorReporter;->addReportSender(Lorg/acra/sender/ReportSender;)V

    .line 398
    return-void
.end method

.method startSendingReports(ZZ)Lorg/acra/SendWorker;
    .locals 3
    .param p1, "onlySendSilentReports"    # Z
    .param p2, "approveReportsFirst"    # Z

    .prologue
    .line 533
    new-instance v0, Lorg/acra/SendWorker;

    iget-object v1, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    iget-object v2, p0, Lorg/acra/ErrorReporter;->mReportSenders:Ljava/util/List;

    invoke-direct {v0, v1, v2, p1, p2}, Lorg/acra/SendWorker;-><init>(Landroid/content/Context;Ljava/util/List;ZZ)V

    .line 534
    .local v0, "worker":Lorg/acra/SendWorker;
    invoke-virtual {v0}, Lorg/acra/SendWorker;->start()V

    .line 535
    return-object v0
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 5
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 412
    :try_start_0
    iget-boolean v1, p0, Lorg/acra/ErrorReporter;->enabled:Z

    if-nez v1, :cond_2

    .line 413
    iget-object v1, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_1

    .line 414
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ACRA is disabled for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " - forwarding uncaught Exception on to default ExceptionHandler"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v1, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 418
    :cond_1
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ACRA is disabled for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " - no default ExceptionHandler"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ACRA caught a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 436
    :catch_0
    move-exception v0

    .line 439
    .local v0, "fatality":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_0

    .line 440
    iget-object v1, p0, Lorg/acra/ErrorReporter;->mDfltExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 426
    .end local v0    # "fatality":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ACRA caught a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/acra/ErrorReporter;->mContext:Landroid/app/Application;

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, p2}, Lorg/acra/log/ACRALog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    sget-object v1, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v2, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v3, "Building report"

    invoke-interface {v1, v2, v3}, Lorg/acra/log/ACRALog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {p0}, Lorg/acra/ErrorReporter;->reportBuilder()Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v1

    invoke-static {v1, p1}, Lorg/acra/ErrorReporter$ReportBuilder;->access$100(Lorg/acra/ErrorReporter$ReportBuilder;Ljava/lang/Thread;)Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/acra/ErrorReporter$ReportBuilder;->exception(Ljava/lang/Throwable;)Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ErrorReporter$ReportBuilder;->endsApplication()Lorg/acra/ErrorReporter$ReportBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/acra/ErrorReporter$ReportBuilder;->send()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
