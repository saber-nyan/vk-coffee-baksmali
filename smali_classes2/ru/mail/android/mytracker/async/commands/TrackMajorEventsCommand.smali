.class public Lru/mail/android/mytracker/async/commands/TrackMajorEventsCommand;
.super Lru/mail/android/mytracker/async/commands/EventsActionCommand;
.source "TrackMajorEventsCommand.java"


# static fields
.field private static final APP_PACKAGE:Ljava/lang/String; = "com.my.games.vendorapp"

.field private static final DEF_TYPE:Ljava/lang/String; = "string"

.field private static final DELIMITER:Ljava/lang/String; = "_"

.field private static final TYPE_MYTRACKER:Ljava/lang/String; = "mytracker"


# instance fields
.field private timestamp:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "dbHelper"    # Lru/mail/android/mytracker/database/MyTrackerDBHelper;
    .param p3, "trackerParams"    # Lru/mail/android/mytracker/TrackerParams;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lru/mail/android/mytracker/async/commands/EventsActionCommand;-><init>(Ljava/lang/String;Lru/mail/android/mytracker/database/MyTrackerDBHelper;Lru/mail/android/mytracker/TrackerParams;Landroid/content/Context;)V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lru/mail/android/mytracker/async/commands/TrackMajorEventsCommand;->timestamp:J

    .line 55
    return-void
.end method

.method private checkReferrer(Lru/mail/android/mytracker/utils/PreferencesManager;)V
    .locals 10
    .param p1, "preferencesManager"    # Lru/mail/android/mytracker/utils/PreferencesManager;

    .prologue
    .line 175
    const/4 v6, 0x0

    .line 176
    .local v6, "referrer":Ljava/lang/String;
    iget-object v7, p0, Lru/mail/android/mytracker/async/commands/TrackMajorEventsCommand;->trackerParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v7}, Lru/mail/android/mytracker/TrackerParams;->isTrackingPreinstallsEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Lru/mail/android/mytracker/utils/PreferencesManager;->isPreinstallRead()Z

    move-result v7

    if-nez v7, :cond_0

    .line 178
    const-string/jumbo v7, "check preinstall"

    invoke-static {v7}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 180
    iget-object v7, p0, Lru/mail/android/mytracker/async/commands/TrackMajorEventsCommand;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 181
    .local v5, "manager":Landroid/content/pm/PackageManager;
    iget-object v7, p0, Lru/mail/android/mytracker/async/commands/TrackMajorEventsCommand;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 182
    .local v1, "currentApp":Ljava/lang/String;
    const/4 v0, 0x0

    .line 186
    .local v0, "apkResources":Landroid/content/res/Resources;
    :try_start_0
    const-string/jumbo v7, "com.my.games.vendorapp"

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 192
    :goto_0
    const-string/jumbo v7, "mytracker"

    invoke-direct {p0, v0, v7, v1}, Lru/mail/android/mytracker/async/commands/TrackMajorEventsCommand;->getReferrerRecord(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 193
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Lru/mail/android/mytracker/utils/PreferencesManager;->setPreinstallRead(Z)V

    .line 195
    if-eqz v6, :cond_0

    .line 196
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "preinstall referrer: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 199
    .end local v0    # "apkResources":Landroid/content/res/Resources;
    .end local v1    # "currentApp":Ljava/lang/String;
    .end local v5    # "manager":Landroid/content/pm/PackageManager;
    :cond_0
    if-nez v6, :cond_1

    invoke-virtual {p1}, Lru/mail/android/mytracker/utils/PreferencesManager;->isReferrerSent()Z

    move-result v7

    if-nez v7, :cond_1

    .line 200
    invoke-virtual {p1}, Lru/mail/android/mytracker/utils/PreferencesManager;->getReferrer()Ljava/lang/String;

    move-result-object v6

    .line 202
    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 204
    invoke-virtual {p1, v6}, Lru/mail/android/mytracker/utils/PreferencesManager;->setReferrer(Ljava/lang/String;)V

    .line 206
    iget-wide v8, p0, Lru/mail/android/mytracker/async/commands/TrackMajorEventsCommand;->timestamp:J

    invoke-static {v6, v8, v9}, Lru/mail/android/mytracker/factories/EventsFactory;->getReferrerEvent(Ljava/lang/String;J)Lru/mail/android/mytracker/models/events/Event;

    move-result-object v3

    .line 207
    .local v3, "event":Lru/mail/android/mytracker/models/events/Event;
    invoke-virtual {p0, v3}, Lru/mail/android/mytracker/async/commands/TrackMajorEventsCommand;->insertEvent(Lru/mail/android/mytracker/models/events/Event;)Z

    move-result v4

    .line 208
    .local v4, "isSuccess":Z
    invoke-virtual {p1, v4}, Lru/mail/android/mytracker/utils/PreferencesManager;->setReferrerSent(Z)V

    .line 209
    if-eqz v4, :cond_3

    const-string/jumbo v7, "referrer inserted successfully"

    invoke-static {v7}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 212
    .end local v3    # "event":Lru/mail/android/mytracker/models/events/Event;
    .end local v4    # "isSuccess":Z
    :cond_2
    :goto_1
    return-void

    .line 187
    .restart local v0    # "apkResources":Landroid/content/res/Resources;
    .restart local v1    # "currentApp":Ljava/lang/String;
    .restart local v5    # "manager":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v2

    .line 189
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v7, "unable to locate vendor app: com.my.games.vendorapp"

    invoke-static {v7}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    .end local v0    # "apkResources":Landroid/content/res/Resources;
    .end local v1    # "currentApp":Ljava/lang/String;
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "manager":Landroid/content/pm/PackageManager;
    .restart local v3    # "event":Lru/mail/android/mytracker/models/events/Event;
    .restart local v4    # "isSuccess":Z
    :cond_3
    const-string/jumbo v7, "insert referrer failed"

    invoke-static {v7}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getAppInstallTime()J
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 141
    :try_start_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x8

    if-le v4, v5, :cond_0

    .line 143
    iget-object v4, p0, Lru/mail/android/mytracker/async/commands/TrackMajorEventsCommand;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, p0, Lru/mail/android/mytracker/async/commands/TrackMajorEventsCommand;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 144
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-wide v2

    .line 150
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception while trying to get app install time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lru/mail/android/mytracker/Tracer;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getCurrentAppVersion()Landroid/util/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    :try_start_0
    iget-object v2, p0, Lru/mail/android/mytracker/async/commands/TrackMajorEventsCommand;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lru/mail/android/mytracker/async/commands/TrackMajorEventsCommand;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 163
    .local v1, "pInfo":Landroid/content/pm/PackageInfo;
    new-instance v2, Landroid/util/Pair;

    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    .end local v1    # "pInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 164
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to read app version from package manager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lru/mail/android/mytracker/Tracer;->e(Ljava/lang/String;)V

    .line 169
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getReferrerRecord(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "apkResources"    # Landroid/content/res/Resources;
    .param p2, "tracker"    # Ljava/lang/String;
    .param p3, "currentApp"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 216
    if-nez p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-object v2

    .line 219
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "compoundId":Ljava/lang/String;
    const-string/jumbo v3, "string"

    const-string/jumbo v4, "com.my.games.vendorapp"

    invoke-virtual {p1, v0, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 222
    .local v1, "resId":I
    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected execute()Lru/mail/android/mytracker/async/commands/AsyncCommandResult;
    .locals 18

    .prologue
    .line 63
    new-instance v9, Lru/mail/android/mytracker/async/commands/AsyncCommandResult;

    invoke-direct {v9}, Lru/mail/android/mytracker/async/commands/AsyncCommandResult;-><init>()V

    .line 68
    .local v9, "result":Lru/mail/android/mytracker/async/commands/AsyncCommandResult;
    :try_start_0
    invoke-static {}, Lru/mail/android/mytracker/utils/PreferencesManager;->getInstance()Lru/mail/android/mytracker/utils/PreferencesManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lru/mail/android/mytracker/async/commands/TrackMajorEventsCommand;->context:Landroid/content/Context;

    invoke-virtual {v13, v14}, Lru/mail/android/mytracker/utils/PreferencesManager;->init(Landroid/content/Context;)Lru/mail/android/mytracker/utils/PreferencesManager;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 76
    .local v8, "preferencesManager":Lru/mail/android/mytracker/utils/PreferencesManager;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lru/mail/android/mytracker/async/commands/TrackMajorEventsCommand;->checkReferrer(Lru/mail/android/mytracker/utils/PreferencesManager;)V

    .line 80
    invoke-direct/range {p0 .. p0}, Lru/mail/android/mytracker/async/commands/TrackMajorEventsCommand;->getCurrentAppVersion()Landroid/util/Pair;

    move-result-object v12

    .line 81
    .local v12, "versionCodeName":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, ""

    .line 82
    .local v3, "currentBuild":Ljava/lang/String;
    const-string/jumbo v4, ""

    .line 83
    .local v4, "currentVersion":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 85
    iget-object v3, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local v3    # "currentBuild":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 86
    .restart local v3    # "currentBuild":Ljava/lang/String;
    iget-object v4, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local v4    # "currentVersion":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 88
    .restart local v4    # "currentVersion":Ljava/lang/String;
    :cond_0
    invoke-virtual {v8}, Lru/mail/android/mytracker/utils/PreferencesManager;->getAppBuild()Ljava/lang/String;

    move-result-object v11

    .line 89
    .local v11, "savedBuild":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lru/mail/android/mytracker/async/commands/TrackMajorEventsCommand;->trackerParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v13}, Lru/mail/android/mytracker/TrackerParams;->getId()Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, "currentAppId":Ljava/lang/String;
    invoke-virtual {v8, v2}, Lru/mail/android/mytracker/utils/PreferencesManager;->isFirstStart(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 99
    const-string/jumbo v13, "event install: no install flag"

    invoke-static {v13}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 100
    invoke-direct/range {p0 .. p0}, Lru/mail/android/mytracker/async/commands/TrackMajorEventsCommand;->getAppInstallTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-wide v0, v0, Lru/mail/android/mytracker/async/commands/TrackMajorEventsCommand;->timestamp:J

    move-wide/from16 v16, v0

    invoke-static/range {v14 .. v17}, Lru/mail/android/mytracker/factories/EventsFactory;->getInstallEvent(JJ)Lru/mail/android/mytracker/models/events/Event;

    move-result-object v6

    .line 101
    .local v6, "event":Lru/mail/android/mytracker/models/events/Event;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lru/mail/android/mytracker/async/commands/TrackMajorEventsCommand;->insertEvent(Lru/mail/android/mytracker/models/events/Event;)Z

    move-result v7

    .line 102
    .local v7, "isSuccess":Z
    if-eqz v7, :cond_1

    .line 104
    invoke-virtual {v8, v2}, Lru/mail/android/mytracker/utils/PreferencesManager;->setAppId(Ljava/lang/String;)V

    .line 105
    invoke-virtual {v8, v3}, Lru/mail/android/mytracker/utils/PreferencesManager;->setAppBuild(Ljava/lang/String;)V

    .line 125
    .end local v6    # "event":Lru/mail/android/mytracker/models/events/Event;
    :cond_1
    :goto_0
    if-eqz v7, :cond_6

    .line 127
    invoke-super/range {p0 .. p0}, Lru/mail/android/mytracker/async/commands/EventsActionCommand;->execute()Lru/mail/android/mytracker/async/commands/AsyncCommandResult;

    move-result-object v9

    .line 128
    invoke-virtual {v9}, Lru/mail/android/mytracker/async/commands/AsyncCommandResult;->isSuccess()Z

    move-result v13

    if-nez v13, :cond_5

    move-object v10, v9

    .line 133
    .end local v2    # "currentAppId":Ljava/lang/String;
    .end local v3    # "currentBuild":Ljava/lang/String;
    .end local v4    # "currentVersion":Ljava/lang/String;
    .end local v7    # "isSuccess":Z
    .end local v8    # "preferencesManager":Lru/mail/android/mytracker/utils/PreferencesManager;
    .end local v9    # "result":Lru/mail/android/mytracker/async/commands/AsyncCommandResult;
    .end local v11    # "savedBuild":Ljava/lang/String;
    .end local v12    # "versionCodeName":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    .local v10, "result":Ljava/lang/Object;
    :goto_1
    return-object v10

    .line 69
    .end local v10    # "result":Ljava/lang/Object;
    .restart local v9    # "result":Lru/mail/android/mytracker/async/commands/AsyncCommandResult;
    :catch_0
    move-exception v5

    .line 71
    .local v5, "e":Ljava/lang/Throwable;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "PreferencesManager error: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 72
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lru/mail/android/mytracker/async/commands/AsyncCommandResult;->setSuccess(Z)V

    move-object v10, v9

    .line 73
    .restart local v10    # "result":Ljava/lang/Object;
    goto :goto_1

    .line 108
    .end local v5    # "e":Ljava/lang/Throwable;
    .end local v10    # "result":Ljava/lang/Object;
    .restart local v2    # "currentAppId":Ljava/lang/String;
    .restart local v3    # "currentBuild":Ljava/lang/String;
    .restart local v4    # "currentVersion":Ljava/lang/String;
    .restart local v8    # "preferencesManager":Lru/mail/android/mytracker/utils/PreferencesManager;
    .restart local v11    # "savedBuild":Ljava/lang/String;
    .restart local v12    # "versionCodeName":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 110
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_3

    const-string/jumbo v13, "event update: no old version"

    invoke-static {v13}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 112
    :goto_2
    move-object/from16 v0, p0

    iget-wide v14, v0, Lru/mail/android/mytracker/async/commands/TrackMajorEventsCommand;->timestamp:J

    invoke-static {v3, v4, v14, v15}, Lru/mail/android/mytracker/factories/EventsFactory;->getUpdateEvent(Ljava/lang/String;Ljava/lang/String;J)Lru/mail/android/mytracker/models/events/Event;

    move-result-object v6

    .line 113
    .restart local v6    # "event":Lru/mail/android/mytracker/models/events/Event;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lru/mail/android/mytracker/async/commands/TrackMajorEventsCommand;->insertEvent(Lru/mail/android/mytracker/models/events/Event;)Z

    move-result v7

    .line 114
    .restart local v7    # "isSuccess":Z
    if-eqz v7, :cond_1

    .line 116
    invoke-virtual {v8, v3}, Lru/mail/android/mytracker/utils/PreferencesManager;->setAppBuild(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    .end local v6    # "event":Lru/mail/android/mytracker/models/events/Event;
    .end local v7    # "isSuccess":Z
    :cond_3
    const-string/jumbo v13, "event update: version changed"

    invoke-static {v13}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 121
    :cond_4
    const-string/jumbo v13, "no install/update"

    invoke-static {v13}, Lru/mail/android/mytracker/Tracer;->d(Ljava/lang/String;)V

    .line 122
    const/4 v7, 0x1

    .restart local v7    # "isSuccess":Z
    goto :goto_0

    .line 129
    :cond_5
    sget-object v13, Lru/mail/android/mytracker/enums/CriterionSend;->MAJOR_EVENT:Lru/mail/android/mytracker/enums/CriterionSend;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lru/mail/android/mytracker/async/commands/TrackMajorEventsCommand;->sendEvents(Lru/mail/android/mytracker/enums/CriterionSend;)Z

    move-result v7

    .line 132
    :cond_6
    invoke-virtual {v9, v7}, Lru/mail/android/mytracker/async/commands/AsyncCommandResult;->setSuccess(Z)V

    move-object v10, v9

    .line 133
    .restart local v10    # "result":Ljava/lang/Object;
    goto :goto_1
.end method
