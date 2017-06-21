.class public Lru/mail/android/mytracker/utils/PreferencesManager;
.super Ljava/lang/Object;
.source "PreferencesManager.java"


# static fields
.field private static initialized:Z

.field private static instance:Lru/mail/android/mytracker/utils/PreferencesManager;


# instance fields
.field private context:Landroid/content/Context;

.field private preferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method private getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lru/mail/android/mytracker/utils/PreferencesManager;->preferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getInstance()Lru/mail/android/mytracker/utils/PreferencesManager;
    .locals 2

    .prologue
    .line 25
    const-class v1, Lru/mail/android/mytracker/utils/PreferencesManager;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lru/mail/android/mytracker/utils/PreferencesManager;->instance:Lru/mail/android/mytracker/utils/PreferencesManager;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lru/mail/android/mytracker/utils/PreferencesManager;

    invoke-direct {v0}, Lru/mail/android/mytracker/utils/PreferencesManager;-><init>()V

    sput-object v0, Lru/mail/android/mytracker/utils/PreferencesManager;->instance:Lru/mail/android/mytracker/utils/PreferencesManager;

    .line 29
    :cond_0
    sget-object v0, Lru/mail/android/mytracker/utils/PreferencesManager;->instance:Lru/mail/android/mytracker/utils/PreferencesManager;

    monitor-exit v1

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Lru/mail/android/mytracker/utils/PreferencesManager;->preferences:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 146
    iget-object v0, p0, Lru/mail/android/mytracker/utils/PreferencesManager;->preferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized putBoolean(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lru/mail/android/mytracker/utils/PreferencesManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 164
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 165
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 163
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized putLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lru/mail/android/mytracker/utils/PreferencesManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 176
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 177
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    .line 175
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lru/mail/android/mytracker/utils/PreferencesManager;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 152
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 153
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 151
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public getAppBuild()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-string/jumbo v0, "appVersion"

    invoke-direct {p0, v0}, Lru/mail/android/mytracker/utils/PreferencesManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string/jumbo v0, "appId"

    invoke-direct {p0, v0}, Lru/mail/android/mytracker/utils/PreferencesManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppsInstalledHash()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "appsHash"

    invoke-direct {p0, v0}, Lru/mail/android/mytracker/utils/PreferencesManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomEventsSkipped()J
    .locals 2

    .prologue
    .line 131
    const-string/jumbo v0, "customEventsSkipped"

    invoke-direct {p0, v0}, Lru/mail/android/mytracker/utils/PreferencesManager;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEventTimestampBase()J
    .locals 2

    .prologue
    .line 121
    const-string/jumbo v0, "eventTimestampBase"

    invoke-direct {p0, v0}, Lru/mail/android/mytracker/utils/PreferencesManager;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMRGSid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    const-string/jumbo v0, "mrgsDeviceId"

    invoke-direct {p0, v0}, Lru/mail/android/mytracker/utils/PreferencesManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReferrer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string/jumbo v0, "referrer"

    invoke-direct {p0, v0}, Lru/mail/android/mytracker/utils/PreferencesManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)Lru/mail/android/mytracker/utils/PreferencesManager;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    sget-boolean v0, Lru/mail/android/mytracker/utils/PreferencesManager;->initialized:Z

    if-nez v0, :cond_0

    .line 37
    iput-object p1, p0, Lru/mail/android/mytracker/utils/PreferencesManager;->context:Landroid/content/Context;

    .line 38
    const-string/jumbo v0, "mytracker_prefs"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lru/mail/android/mytracker/utils/PreferencesManager;->preferences:Landroid/content/SharedPreferences;

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lru/mail/android/mytracker/utils/PreferencesManager;->initialized:Z

    .line 42
    :cond_0
    return-object p0
.end method

.method public isFirstStart(Ljava/lang/String;)Z
    .locals 3
    .param p1, "currentAppId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 67
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 71
    :cond_0
    :goto_0
    return v1

    .line 70
    :cond_1
    const-string/jumbo v2, "appId"

    invoke-direct {p0, v2}, Lru/mail/android/mytracker/utils/PreferencesManager;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "savedAppId":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPreinstallRead()Z
    .locals 1

    .prologue
    .line 96
    const-string/jumbo v0, "preinstallRead"

    invoke-direct {p0, v0}, Lru/mail/android/mytracker/utils/PreferencesManager;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isReferrerSent()Z
    .locals 1

    .prologue
    .line 86
    const-string/jumbo v0, "referrerSent"

    invoke-direct {p0, v0}, Lru/mail/android/mytracker/utils/PreferencesManager;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setAppBuild(Ljava/lang/String;)V
    .locals 1
    .param p1, "appBuild"    # Ljava/lang/String;

    .prologue
    .line 111
    const-string/jumbo v0, "appVersion"

    invoke-direct {p0, v0, p1}, Lru/mail/android/mytracker/utils/PreferencesManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 62
    const-string/jumbo v0, "appId"

    invoke-direct {p0, v0, p1}, Lru/mail/android/mytracker/utils/PreferencesManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public setAppsInstalledHash(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string/jumbo v0, "appsHash"

    invoke-direct {p0, v0, p1}, Lru/mail/android/mytracker/utils/PreferencesManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public setCustomEventsSkipped(J)V
    .locals 1
    .param p1, "customEventsSkipped"    # J

    .prologue
    .line 126
    const-string/jumbo v0, "customEventsSkipped"

    invoke-direct {p0, v0, p1, p2}, Lru/mail/android/mytracker/utils/PreferencesManager;->putLong(Ljava/lang/String;J)V

    .line 127
    return-void
.end method

.method public setEventTimestampBase(J)V
    .locals 1
    .param p1, "timestampBase"    # J

    .prologue
    .line 116
    const-string/jumbo v0, "eventTimestampBase"

    invoke-direct {p0, v0, p1, p2}, Lru/mail/android/mytracker/utils/PreferencesManager;->putLong(Ljava/lang/String;J)V

    .line 117
    return-void
.end method

.method public setMRGSid(Ljava/lang/String;)V
    .locals 1
    .param p1, "mrgsid"    # Ljava/lang/String;

    .prologue
    .line 141
    const-string/jumbo v0, "mrgsDeviceId"

    invoke-direct {p0, v0, p1}, Lru/mail/android/mytracker/utils/PreferencesManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public setPreinstallRead(Z)V
    .locals 1
    .param p1, "read"    # Z

    .prologue
    .line 101
    const-string/jumbo v0, "preinstallRead"

    invoke-direct {p0, v0, p1}, Lru/mail/android/mytracker/utils/PreferencesManager;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    return-void
.end method

.method public setReferrer(Ljava/lang/String;)V
    .locals 1
    .param p1, "referrer"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string/jumbo v0, "referrer"

    invoke-direct {p0, v0, p1}, Lru/mail/android/mytracker/utils/PreferencesManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public setReferrerSent(Z)V
    .locals 1
    .param p1, "referrerSent"    # Z

    .prologue
    .line 91
    const-string/jumbo v0, "referrerSent"

    invoke-direct {p0, v0, p1}, Lru/mail/android/mytracker/utils/PreferencesManager;->putBoolean(Ljava/lang/String;Z)V

    .line 92
    return-void
.end method
