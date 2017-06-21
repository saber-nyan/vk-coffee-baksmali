.class public Lcom/google/android/gms/ads/internal/client/zzag;
.super Lcom/google/android/gms/ads/internal/client/zzs$zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/client/zzag$1;,
        Lcom/google/android/gms/ads/internal/client/zzag$zza;
    }
.end annotation


# instance fields
.field private zzpK:Lcom/google/android/gms/ads/internal/client/zzq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/client/zzs$zza;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/ads/internal/client/zzag;)Lcom/google/android/gms/ads/internal/client/zzq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzag;->zzpK:Lcom/google/android/gms/ads/internal/client/zzq;

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzcr;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzcs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzcu;Lcom/google/android/gms/internal/zzct;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/client/zzq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/client/zzag;->zzpK:Lcom/google/android/gms/ads/internal/client/zzq;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/client/zzx;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public zzbn()Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzag$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/internal/client/zzag$zza;-><init>(Lcom/google/android/gms/ads/internal/client/zzag;Lcom/google/android/gms/ads/internal/client/zzag$1;)V

    return-object v0
.end method
