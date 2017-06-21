.class Lcom/google/android/gms/internal/zzmh$1;
.super Lcom/google/android/gms/internal/zzmi$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzmh;->zzf(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzamB:Lcom/google/android/gms/internal/zzmh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzmh;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzmh$1;->zzamB:Lcom/google/android/gms/internal/zzmh;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzmi$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

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

    check-cast p1, Lcom/google/android/gms/internal/zzmj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzmh$1;->zza(Lcom/google/android/gms/internal/zzmj;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzmj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzmj;->zzqJ()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzml;

    new-instance v1, Lcom/google/android/gms/internal/zzmh$zza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzmh$zza;-><init>(Lcom/google/android/gms/common/api/internal/zza$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzml;->zza(Lcom/google/android/gms/internal/zzmk;)V

    return-void
.end method
