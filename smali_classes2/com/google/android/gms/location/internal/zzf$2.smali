.class Lcom/google/android/gms/location/internal/zzf$2;
.super Lcom/google/android/gms/location/internal/zzf$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/location/internal/zzf;->removeGeofences(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaAp:Landroid/app/PendingIntent;

.field final synthetic zzaOE:Lcom/google/android/gms/location/internal/zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/location/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/location/internal/zzf$2;->zzaOE:Lcom/google/android/gms/location/internal/zzf;

    iput-object p3, p0, Lcom/google/android/gms/location/internal/zzf$2;->zzaAp:Landroid/app/PendingIntent;

    invoke-direct {p0, p2}, Lcom/google/android/gms/location/internal/zzf$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    invoke-virtual {p0, p1}, Lcom/google/android/gms/location/internal/zzf$2;->zza(Lcom/google/android/gms/location/internal/zzl;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/location/internal/zzl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/location/internal/zzf$2;->zzaAp:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0, p0}, Lcom/google/android/gms/location/internal/zzl;->zza(Landroid/app/PendingIntent;Lcom/google/android/gms/common/api/internal/zza$zzb;)V

    return-void
.end method
