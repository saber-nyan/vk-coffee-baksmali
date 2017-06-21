.class public final Lru/mail/android/mytracker/MRMyTrackerParams;
.super Ljava/lang/Object;
.source "MRMyTrackerParams.java"


# instance fields
.field final internalParams:Lru/mail/android/mytracker/TrackerParams;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Lru/mail/android/mytracker/TrackerParams;

    invoke-direct {v0, p1}, Lru/mail/android/mytracker/TrackerParams;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lru/mail/android/mytracker/MRMyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    .line 94
    return-void
.end method


# virtual methods
.method public getCustomParams()Lru/mail/android/mytracker/providers/CustomParamsDataProvider;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lru/mail/android/mytracker/MRMyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0}, Lru/mail/android/mytracker/TrackerParams;->getCustomParams()Lru/mail/android/mytracker/providers/CustomParamsDataProvider;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lru/mail/android/mytracker/MRMyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0}, Lru/mail/android/mytracker/TrackerParams;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLaunchTimeout()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lru/mail/android/mytracker/MRMyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0}, Lru/mail/android/mytracker/TrackerParams;->getLaunchTimeout()I

    move-result v0

    return v0
.end method

.method public isTrackingAppsEnabled()Z
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lru/mail/android/mytracker/MRMyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0}, Lru/mail/android/mytracker/TrackerParams;->isTrackingAppsEnabled()Z

    move-result v0

    return v0
.end method

.method public isTrackingLaunchEnabled()Z
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lru/mail/android/mytracker/MRMyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0}, Lru/mail/android/mytracker/TrackerParams;->isTrackingLaunchEnabled()Z

    move-result v0

    return v0
.end method

.method public isTrackingLocationEnabled()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lru/mail/android/mytracker/MRMyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0}, Lru/mail/android/mytracker/TrackerParams;->isTrackingLocationEnabled()Z

    move-result v0

    return v0
.end method

.method public isTrackingPreinstallsEnabled()Z
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lru/mail/android/mytracker/MRMyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0}, Lru/mail/android/mytracker/TrackerParams;->isTrackingPreinstallsEnabled()Z

    move-result v0

    return v0
.end method

.method public setLaunchTimeout(I)V
    .locals 1
    .param p1, "seconds"    # I

    .prologue
    .line 80
    iget-object v0, p0, Lru/mail/android/mytracker/MRMyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/TrackerParams;->setLaunchTimeout(I)V

    .line 81
    return-void
.end method

.method public setTrackingAppsEnabled(Z)V
    .locals 1
    .param p1, "trackingAppsEnabled"    # Z

    .prologue
    .line 50
    iget-object v0, p0, Lru/mail/android/mytracker/MRMyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/TrackerParams;->setTrackingAppsEnabled(Z)V

    .line 51
    return-void
.end method

.method public setTrackingLaunchEnabled(Z)V
    .locals 1
    .param p1, "trackingLaunchEnabled"    # Z

    .prologue
    .line 40
    iget-object v0, p0, Lru/mail/android/mytracker/MRMyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/TrackerParams;->setTrackingLaunchEnabled(Z)V

    .line 41
    return-void
.end method

.method public setTrackingLocationEnabled(Z)V
    .locals 1
    .param p1, "isTrackingLocationEnabled"    # Z

    .prologue
    .line 70
    iget-object v0, p0, Lru/mail/android/mytracker/MRMyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/TrackerParams;->setTrackingLocationEnabled(Z)V

    .line 71
    return-void
.end method

.method public setTrackingPreinstallsEnabled(Z)V
    .locals 1
    .param p1, "trackingPreinstallsEnabled"    # Z

    .prologue
    .line 60
    iget-object v0, p0, Lru/mail/android/mytracker/MRMyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/TrackerParams;->setTrackingPreinstallsEnabled(Z)V

    .line 61
    return-void
.end method
