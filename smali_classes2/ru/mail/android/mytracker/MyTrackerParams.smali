.class public final Lru/mail/android/mytracker/MyTrackerParams;
.super Ljava/lang/Object;
.source "MyTrackerParams.java"


# instance fields
.field final internalParams:Lru/mail/android/mytracker/TrackerParams;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lru/mail/android/mytracker/TrackerParams;

    invoke-direct {v0, p1}, Lru/mail/android/mytracker/TrackerParams;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lru/mail/android/mytracker/MyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    .line 117
    iget-object v0, p0, Lru/mail/android/mytracker/MyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0, v1}, Lru/mail/android/mytracker/TrackerParams;->setTrackingPreinstallsEnabled(Z)V

    .line 118
    iget-object v0, p0, Lru/mail/android/mytracker/MyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0, v1}, Lru/mail/android/mytracker/TrackerParams;->setTrackingAppsEnabled(Z)V

    .line 119
    return-void
.end method


# virtual methods
.method public getAge()I
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lru/mail/android/mytracker/MyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0}, Lru/mail/android/mytracker/TrackerParams;->getCustomParams()Lru/mail/android/mytracker/providers/CustomParamsDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->getAge()I

    move-result v0

    return v0
.end method

.method public getCustomUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lru/mail/android/mytracker/MyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0}, Lru/mail/android/mytracker/TrackerParams;->getCustomParams()Lru/mail/android/mytracker/providers/CustomParamsDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->getCustomUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomUserIds()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lru/mail/android/mytracker/MyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0}, Lru/mail/android/mytracker/TrackerParams;->getCustomParams()Lru/mail/android/mytracker/providers/CustomParamsDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->getCustomUserIds()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGender()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lru/mail/android/mytracker/MyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0}, Lru/mail/android/mytracker/TrackerParams;->getCustomParams()Lru/mail/android/mytracker/providers/CustomParamsDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->getGender()I

    move-result v0

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lru/mail/android/mytracker/MyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0}, Lru/mail/android/mytracker/TrackerParams;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLang(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 48
    iget-object v0, p0, Lru/mail/android/mytracker/MyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0}, Lru/mail/android/mytracker/TrackerParams;->getCustomParams()Lru/mail/android/mytracker/providers/CustomParamsDataProvider;

    move-result-object v0

    invoke-virtual {v0}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->getLang()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLaunchTimeout()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lru/mail/android/mytracker/MyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0}, Lru/mail/android/mytracker/TrackerParams;->getLaunchTimeout()I

    move-result v0

    return v0
.end method

.method public isTrackingLaunchEnabled()Z
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lru/mail/android/mytracker/MyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0}, Lru/mail/android/mytracker/TrackerParams;->isTrackingLaunchEnabled()Z

    move-result v0

    return v0
.end method

.method public isTrackingLocationEnabled()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lru/mail/android/mytracker/MyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0}, Lru/mail/android/mytracker/TrackerParams;->isTrackingLocationEnabled()Z

    move-result v0

    return v0
.end method

.method public setAge(I)V
    .locals 1
    .param p1, "age"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lru/mail/android/mytracker/MyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0}, Lru/mail/android/mytracker/TrackerParams;->getCustomParams()Lru/mail/android/mytracker/providers/CustomParamsDataProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->setAge(I)V

    .line 64
    return-void
.end method

.method public setCustomUserId(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lru/mail/android/mytracker/MyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0}, Lru/mail/android/mytracker/TrackerParams;->getCustomParams()Lru/mail/android/mytracker/providers/CustomParamsDataProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->setCustomUserId(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public setCustomUserIds([Ljava/lang/String;)V
    .locals 1
    .param p1, "ids"    # [Ljava/lang/String;

    .prologue
    .line 83
    iget-object v0, p0, Lru/mail/android/mytracker/MyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0}, Lru/mail/android/mytracker/TrackerParams;->getCustomParams()Lru/mail/android/mytracker/providers/CustomParamsDataProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->setCustomUserIds([Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public setGender(I)V
    .locals 1
    .param p1, "gender"    # I

    .prologue
    .line 53
    iget-object v0, p0, Lru/mail/android/mytracker/MyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0}, Lru/mail/android/mytracker/TrackerParams;->getCustomParams()Lru/mail/android/mytracker/providers/CustomParamsDataProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->setGender(I)V

    .line 54
    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 1
    .param p1, "lang"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lru/mail/android/mytracker/MyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0}, Lru/mail/android/mytracker/TrackerParams;->getCustomParams()Lru/mail/android/mytracker/providers/CustomParamsDataProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/providers/CustomParamsDataProvider;->setLang(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public setLaunchTimeout(I)V
    .locals 1
    .param p1, "seconds"    # I

    .prologue
    .line 103
    iget-object v0, p0, Lru/mail/android/mytracker/MyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/TrackerParams;->setLaunchTimeout(I)V

    .line 104
    return-void
.end method

.method public setTrackingLaunchEnabled(Z)V
    .locals 1
    .param p1, "trackingLaunchEnabled"    # Z

    .prologue
    .line 38
    iget-object v0, p0, Lru/mail/android/mytracker/MyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/TrackerParams;->setTrackingLaunchEnabled(Z)V

    .line 39
    return-void
.end method

.method public setTrackingLocationEnabled(Z)V
    .locals 1
    .param p1, "isTrackingLocationEnabled"    # Z

    .prologue
    .line 98
    iget-object v0, p0, Lru/mail/android/mytracker/MyTrackerParams;->internalParams:Lru/mail/android/mytracker/TrackerParams;

    invoke-virtual {v0, p1}, Lru/mail/android/mytracker/TrackerParams;->setTrackingLocationEnabled(Z)V

    .line 99
    return-void
.end method
