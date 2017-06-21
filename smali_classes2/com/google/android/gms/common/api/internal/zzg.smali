.class public Lcom/google/android/gms/common/api/internal/zzg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/zzk;


# instance fields
.field private final zzahj:Lcom/google/android/gms/common/api/internal/zzl;

.field private zzahk:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/zzl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzg;->zzahk:Z

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzg;->zzahj:Lcom/google/android/gms/common/api/internal/zzl;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/common/api/internal/zzg;)Lcom/google/android/gms/common/api/internal/zzl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzg;->zzahj:Lcom/google/android/gms/common/api/internal/zzl;

    return-object v0
.end method

.method private zza(Lcom/google/android/gms/common/api/internal/zzj$zze;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/common/api/internal/zzj$zze",
            "<TA;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzg;->zzahj:Lcom/google/android/gms/common/api/internal/zzl;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzl;->zzagW:Lcom/google/android/gms/common/api/internal/zzj;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/zzj;->zzb(Lcom/google/android/gms/common/api/internal/zzj$zze;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzg;->zzahj:Lcom/google/android/gms/common/api/internal/zzl;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzl;->zzagW:Lcom/google/android/gms/common/api/internal/zzj;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/zzj$zze;->zzoR()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzj;->zza(Lcom/google/android/gms/common/api/Api$zzc;)Lcom/google/android/gms/common/api/Api$zzb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zzb;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzg;->zzahj:Lcom/google/android/gms/common/api/internal/zzl;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/zzl;->zzaio:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/android/gms/common/api/internal/zzj$zze;->zzoR()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/zzj$zze;->zzw(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/internal/zzj$zze;->zzb(Lcom/google/android/gms/common/api/Api$zzb;)V

    goto :goto_0
.end method


# virtual methods
.method public begin()V
    .locals 0

    return-void
.end method

.method public connect()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzg;->zzahk:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzg;->zzahk:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzg;->zzahj:Lcom/google/android/gms/common/api/internal/zzl;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zzg$2;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/common/api/internal/zzg$2;-><init>(Lcom/google/android/gms/common/api/internal/zzg;Lcom/google/android/gms/common/api/internal/zzk;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzl;->zza(Lcom/google/android/gms/common/api/internal/zzl$zza;)V

    :cond_0
    return-void
.end method

.method public disconnect()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/common/api/internal/zzg;->zzahk:Z

    if-eqz v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzg;->zzahj:Lcom/google/android/gms/common/api/internal/zzl;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/zzl;->zzagW:Lcom/google/android/gms/common/api/internal/zzj;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/zzj;->zzpG()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzg;->zzahk:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzg;->zzahj:Lcom/google/android/gms/common/api/internal/zzl;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzl;->zzagW:Lcom/google/android/gms/common/api/internal/zzj;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzj;->zzaia:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/zzx;->zzpU()V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzg;->zzahj:Lcom/google/android/gms/common/api/internal/zzl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/api/internal/zzl;->zzh(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 2
    .param p1, "cause"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzg;->zzahj:Lcom/google/android/gms/common/api/internal/zzl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzl;->zzh(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzg;->zzahj:Lcom/google/android/gms/common/api/internal/zzl;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzl;->zzais:Lcom/google/android/gms/common/api/internal/zzp$zza;

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zzg;->zzahk:Z

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/common/api/internal/zzp$zza;->zzc(IZ)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/api/internal/zza$zza;)Lcom/google/android/gms/common/api/internal/zza$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/zza$zza",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/zzg;->zzb(Lcom/google/android/gms/common/api/internal/zza$zza;)Lcom/google/android/gms/common/api/internal/zza$zza;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;I)V"
        }
    .end annotation

    return-void
.end method

.method public zzb(Lcom/google/android/gms/common/api/internal/zza$zza;)Lcom/google/android/gms/common/api/internal/zza$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/common/api/internal/zza$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/zzg;->zza(Lcom/google/android/gms/common/api/internal/zzj$zze;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzg;->zzahj:Lcom/google/android/gms/common/api/internal/zzl;

    new-instance v1, Lcom/google/android/gms/common/api/internal/zzg$1;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/common/api/internal/zzg$1;-><init>(Lcom/google/android/gms/common/api/internal/zzg;Lcom/google/android/gms/common/api/internal/zzk;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzl;->zza(Lcom/google/android/gms/common/api/internal/zzl$zza;)V

    goto :goto_0
.end method

.method zzps()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/zzg;->zzahk:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/zzg;->zzahk:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzg;->zzahj:Lcom/google/android/gms/common/api/internal/zzl;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/zzl;->zzagW:Lcom/google/android/gms/common/api/internal/zzj;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/zzj;->zzaa(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/zzg;->disconnect()Z

    :cond_0
    return-void
.end method
