.class public Lcom/google/android/gms/ads/internal/formats/zzc;
.super Lcom/google/android/gms/internal/zzch$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private final mUri:Landroid/net/Uri;

.field private final zzxU:Landroid/graphics/drawable/Drawable;

.field private final zzxV:D


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzch$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzc;->zzxU:Landroid/graphics/drawable/Drawable;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzc;->mUri:Landroid/net/Uri;

    iput-wide p3, p0, Lcom/google/android/gms/ads/internal/formats/zzc;->zzxV:D

    return-void
.end method


# virtual methods
.method public getScale()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/ads/internal/formats/zzc;->zzxV:D

    return-wide v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzc;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public zzdJ()Lcom/google/android/gms/dynamic/zzd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzc;->zzxU:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzC(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    return-object v0
.end method
