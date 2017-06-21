.class public final Lru/mail/android/mytracker/TrackerParams;
.super Ljava/lang/Object;
.source "TrackerParams.java"


# static fields
.field public static final DEFAULT_LAUNCH_TIMEOUT_SEC:I = 0x1e

.field public static final MAX_LAUNCH_TIMEOUT_SEC:I = 0x1c20


# instance fields
.field private final customParams:Lru/mail/android/mytracker/providers/CustomParamsDataProvider;

.field private final id:Ljava/lang/String;

.field private isTrackingAppsEnabled:Z

.field private isTrackingLaunchEnabled:Z

.field private isTrackingLocationEnabled:Z

.field private isTrackingPreinstallsEnabled:Z

.field private launchTimeout:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean v0, p0, Lru/mail/android/mytracker/TrackerParams;->isTrackingLaunchEnabled:Z

    .line 32
    iput-boolean v0, p0, Lru/mail/android/mytracker/TrackerParams;->isTrackingAppsEnabled:Z

    .line 33
    iput-boolean v0, p0, Lru/mail/android/mytracker/TrackerParams;->isTrackingPreinstallsEnabled:Z

    .line 34
    iput-boolean v0, p0, Lru/mail/android/mytracker/TrackerParams;->isTrackingLocationEnabled:Z

    .line 107
    iput-object p1, p0, Lru/mail/android/mytracker/TrackerParams;->id:Ljava/lang/String;

    .line 108
    new-instance v0, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;

    invoke-direct {v0}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;-><init>()V

    iput-object v0, p0, Lru/mail/android/mytracker/TrackerParams;->customParams:Lru/mail/android/mytracker/providers/CustomParamsDataProvider;

    .line 109
    const/16 v0, 0x1e

    iput v0, p0, Lru/mail/android/mytracker/TrackerParams;->launchTimeout:I

    .line 110
    return-void
.end method


# virtual methods
.method public getCustomParams()Lru/mail/android/mytracker/providers/CustomParamsDataProvider;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lru/mail/android/mytracker/TrackerParams;->customParams:Lru/mail/android/mytracker/providers/CustomParamsDataProvider;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lru/mail/android/mytracker/TrackerParams;->id:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getLaunchTimeout()I
    .locals 1

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lru/mail/android/mytracker/TrackerParams;->launchTimeout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isTrackingAppsEnabled()Z
    .locals 1

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lru/mail/android/mytracker/TrackerParams;->isTrackingAppsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isTrackingLaunchEnabled()Z
    .locals 1

    .prologue
    .line 47
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lru/mail/android/mytracker/TrackerParams;->isTrackingLaunchEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isTrackingLocationEnabled()Z
    .locals 1

    .prologue
    .line 82
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lru/mail/android/mytracker/TrackerParams;->isTrackingLocationEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isTrackingPreinstallsEnabled()Z
    .locals 1

    .prologue
    .line 72
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lru/mail/android/mytracker/TrackerParams;->isTrackingPreinstallsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public putDataToBuilder(Lru/mail/android/mytracker/builders/JSONBuilder;)V
    .locals 1
    .param p1, "builder"    # Lru/mail/android/mytracker/builders/JSONBuilder;

    .prologue
    .line 134
    iget-object v0, p0, Lru/mail/android/mytracker/TrackerParams;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->setAppId(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, p1}, Lru/mail/android/mytracker/TrackerParams;->putSettingsToBuilder(Lru/mail/android/mytracker/builders/JSONBuilder;)V

    .line 136
    iget-object v0, p0, Lru/mail/android/mytracker/TrackerParams;->customParams:Lru/mail/android/mytracker/providers/CustomParamsDataProvider;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->putDataToBuilder(Lru/mail/android/mytracker/builders/JSONBuilder;)V

    .line 137
    return-void
.end method

.method public putSettingsToBuilder(Lru/mail/android/mytracker/builders/JSONBuilder;)V
    .locals 2
    .param p1, "builder"    # Lru/mail/android/mytracker/builders/JSONBuilder;

    .prologue
    .line 116
    iget v0, p0, Lru/mail/android/mytracker/TrackerParams;->launchTimeout:I

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_0

    .line 118
    iget v0, p0, Lru/mail/android/mytracker/TrackerParams;->launchTimeout:I

    invoke-virtual {p1, v0}, Lru/mail/android/mytracker/builders/JSONBuilder;->putSettingsLaunchTimeoutSec(I)V

    .line 121
    :cond_0
    iget-boolean v0, p0, Lru/mail/android/mytracker/TrackerParams;->isTrackingLocationEnabled:Z

    if-nez v0, :cond_1

    .line 123
    invoke-virtual {p1}, Lru/mail/android/mytracker/builders/JSONBuilder;->putSettingsTrackLocationDisabled()V

    .line 126
    :cond_1
    iget-boolean v0, p0, Lru/mail/android/mytracker/TrackerParams;->isTrackingLaunchEnabled:Z

    if-nez v0, :cond_2

    .line 128
    invoke-virtual {p1}, Lru/mail/android/mytracker/builders/JSONBuilder;->putSettingsTrackingLaunchDisabled()V

    .line 130
    :cond_2
    return-void
.end method

.method public declared-synchronized setLaunchTimeout(I)V
    .locals 1
    .param p1, "seconds"    # I

    .prologue
    .line 92
    monitor-enter p0

    const/16 v0, 0x1c20

    if-le p1, v0, :cond_1

    const/16 p1, 0x1c20

    .line 94
    :cond_0
    :goto_0
    :try_start_0
    iput p1, p0, Lru/mail/android/mytracker/TrackerParams;->launchTimeout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 93
    :cond_1
    const/16 v0, 0x1e

    if-ge p1, v0, :cond_0

    const/16 p1, 0x1e

    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTrackingAppsEnabled(Z)V
    .locals 1
    .param p1, "trackingAppsEnabled"    # Z

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lru/mail/android/mytracker/TrackerParams;->isTrackingAppsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTrackingLaunchEnabled(Z)V
    .locals 1
    .param p1, "trackingLaunchEnabled"    # Z

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lru/mail/android/mytracker/TrackerParams;->isTrackingLaunchEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTrackingLocationEnabled(Z)V
    .locals 1
    .param p1, "isTrackingLocationEnabled"    # Z

    .prologue
    .line 87
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lru/mail/android/mytracker/TrackerParams;->isTrackingLocationEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setTrackingPreinstallsEnabled(Z)V
    .locals 1
    .param p1, "trackingPreinstallsEnabled"    # Z

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lru/mail/android/mytracker/TrackerParams;->isTrackingPreinstallsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
