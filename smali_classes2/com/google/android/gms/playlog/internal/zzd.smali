.class public Lcom/google/android/gms/playlog/internal/zzd;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field private final zzbdJ:Lcom/google/android/gms/internal/zzqu$zza;

.field private zzbdK:Z

.field private zzbdy:Lcom/google/android/gms/playlog/internal/zzf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzqu$zza;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbdJ:Lcom/google/android/gms/internal/zzqu$zza;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbdy:Lcom/google/android/gms/playlog/internal/zzf;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbdK:Z

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbdy:Lcom/google/android/gms/playlog/internal/zzf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/playlog/internal/zzf;->zzau(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbdK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbdJ:Lcom/google/android/gms/internal/zzqu$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbdJ:Lcom/google/android/gms/internal/zzqu$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqu$zza;->zzES()V

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbdK:Z

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbdy:Lcom/google/android/gms/playlog/internal/zzf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/playlog/internal/zzf;->zzau(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbdK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbdJ:Lcom/google/android/gms/internal/zzqu$zza;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbdJ:Lcom/google/android/gms/internal/zzqu$zza;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzqu$zza;->zzc(Landroid/app/PendingIntent;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbdK:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbdJ:Lcom/google/android/gms/internal/zzqu$zza;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzqu$zza;->zzET()V

    goto :goto_0
.end method

.method public onConnectionSuspended(I)V
    .locals 2
    .param p1, "cause"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbdy:Lcom/google/android/gms/playlog/internal/zzf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/playlog/internal/zzf;->zzau(Z)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/playlog/internal/zzf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbdy:Lcom/google/android/gms/playlog/internal/zzf;

    return-void
.end method

.method public zzat(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/playlog/internal/zzd;->zzbdK:Z

    return-void
.end method
