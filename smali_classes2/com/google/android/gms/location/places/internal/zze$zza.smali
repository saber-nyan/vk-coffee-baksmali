.class public Lcom/google/android/gms/location/places/internal/zze$zza;
.super Lcom/google/android/gms/common/api/Api$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/location/places/internal/zze;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/Api$zza",
        "<",
        "Lcom/google/android/gms/location/places/internal/zze;",
        "Lcom/google/android/gms/location/places/PlacesOptions;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaQs:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/api/Api$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/location/places/internal/zze$zza;->zzaQs:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zzb;
    .locals 7

    move-object v4, p4

    check-cast v4, Lcom/google/android/gms/location/places/PlacesOptions;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/location/places/internal/zze$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/location/places/PlacesOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/location/places/internal/zze;

    move-result-object v0

    return-object v0
.end method

.method public zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/location/places/PlacesOptions;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/location/places/internal/zze;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/zze$zza;->zzaQs:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v6, p0, Lcom/google/android/gms/location/places/internal/zze$zza;->zzaQs:Ljava/lang/String;

    :goto_0
    if-nez p4, :cond_1

    new-instance v0, Lcom/google/android/gms/location/places/PlacesOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/PlacesOptions$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/PlacesOptions$Builder;->build()Lcom/google/android/gms/location/places/PlacesOptions;

    move-result-object v7

    :goto_1
    new-instance v0, Lcom/google/android/gms/location/places/internal/zze;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/places/internal/zze;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Ljava/lang/String;Lcom/google/android/gms/location/places/PlacesOptions;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_1
    move-object v7, p4

    goto :goto_1
.end method
