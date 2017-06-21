.class public final Lcom/google/android/gms/maps/model/IndoorBuilding;
.super Ljava/lang/Object;


# instance fields
.field private final zzaTs:Lcom/google/android/gms/maps/model/internal/zzd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/model/internal/zzd;)V
    .locals 1
    .param p1, "delegate"    # Lcom/google/android/gms/maps/model/internal/zzd;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/internal/zzd;

    iput-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzaTs:Lcom/google/android/gms/maps/model/internal/zzd;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    instance-of v0, p1, Lcom/google/android/gms/maps/model/IndoorBuilding;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .end local p1    # "other":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzaTs:Lcom/google/android/gms/maps/model/internal/zzd;

    check-cast p1, Lcom/google/android/gms/maps/model/IndoorBuilding;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzaTs:Lcom/google/android/gms/maps/model/internal/zzd;

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/model/internal/zzd;->zzb(Lcom/google/android/gms/maps/model/internal/zzd;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getActiveLevelIndex()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzaTs:Lcom/google/android/gms/maps/model/internal/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/zzd;->getActiveLevelIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getDefaultLevelIndex()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzaTs:Lcom/google/android/gms/maps/model/internal/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/zzd;->getActiveLevelIndex()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public getLevels()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/IndoorLevel;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzaTs:Lcom/google/android/gms/maps/model/internal/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/zzd;->getLevels()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    new-instance v3, Lcom/google/android/gms/maps/model/IndoorLevel;

    invoke-static {v0}, Lcom/google/android/gms/maps/model/internal/zze$zza;->zzdh(Landroid/os/IBinder;)Lcom/google/android/gms/maps/model/internal/zze;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/google/android/gms/maps/model/IndoorLevel;-><init>(Lcom/google/android/gms/maps/model/internal/zze;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :cond_0
    return-object v1
.end method

.method public hashCode()I
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzaTs:Lcom/google/android/gms/maps/model/internal/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/zzd;->hashCodeRemote()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public isUnderground()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/model/IndoorBuilding;->zzaTs:Lcom/google/android/gms/maps/model/internal/zzd;

    invoke-interface {v0}, Lcom/google/android/gms/maps/model/internal/zzd;->isUnderground()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
