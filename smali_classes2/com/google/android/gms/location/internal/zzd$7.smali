.class Lcom/google/android/gms/location/internal/zzd$7;
.super Lcom/google/android/gms/location/internal/zzd$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/internal/zzd;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaOB:Landroid/os/Looper;

.field final synthetic zzaOv:Lcom/google/android/gms/location/LocationRequest;

.field final synthetic zzaOx:Lcom/google/android/gms/location/internal/zzd;

.field final synthetic zzaOy:Lcom/google/android/gms/location/LocationCallback;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/zzd;Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzd$7;->zzaOx:Lcom/google/android/gms/location/internal/zzd;

    iput-object p3, p0, Lcom/google/android/gms/location/internal/zzd$7;->zzaOv:Lcom/google/android/gms/location/LocationRequest;

    iput-object p4, p0, Lcom/google/android/gms/location/internal/zzd$7;->zzaOy:Lcom/google/android/gms/location/LocationCallback;

    iput-object p5, p0, Lcom/google/android/gms/location/internal/zzd$7;->zzaOB:Landroid/os/Looper;

    invoke-direct {p0, p2}, Lcom/google/android/gms/location/internal/zzd$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/location/internal/zzl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/internal/zzd$7;->zza(Lcom/google/android/gms/location/internal/zzl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/location/internal/zzl;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/location/internal/zzd$zzb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/location/internal/zzd$zzb;-><init>(Lcom/google/android/gms/common/api/internal/zza$zzb;)V

    iget-object v1, p0, Lcom/google/android/gms/location/internal/zzd$7;->zzaOv:Lcom/google/android/gms/location/LocationRequest;

    invoke-static {v1}, Lcom/google/android/gms/location/internal/LocationRequestInternal;->zzb(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/internal/LocationRequestInternal;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/location/internal/zzd$7;->zzaOy:Lcom/google/android/gms/location/LocationCallback;

    iget-object v3, p0, Lcom/google/android/gms/location/internal/zzd$7;->zzaOB:Landroid/os/Looper;

    invoke-virtual {p1, v1, v2, v3, v0}, Lcom/google/android/gms/location/internal/zzl;->zza(Lcom/google/android/gms/location/internal/LocationRequestInternal;Lcom/google/android/gms/location/LocationCallback;Landroid/os/Looper;Lcom/google/android/gms/location/internal/zzg;)V

    return-void
.end method
