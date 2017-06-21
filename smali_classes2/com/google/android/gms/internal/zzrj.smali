.class public Lcom/google/android/gms/internal/zzrj;
.super Lcom/google/android/gms/common/internal/zzj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/zzj",
        "<",
        "Lcom/google/android/gms/internal/zzri;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;Lcom/google/android/gms/common/internal/zzf;)V
    .locals 7

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/16 v3, 0x49

    move-object v0, p0

    move-object v1, p1

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/zzj;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/zzf;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V

    return-void
.end method


# virtual methods
.method protected synthetic zzW(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrj;->zzdZ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzri;

    move-result-object v0

    return-object v0
.end method

.method protected zzdZ(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzri;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzri$zza;->zzdY(Landroid/os/IBinder;)Lcom/google/android/gms/internal/zzri;

    move-result-object v0

    return-object v0
.end method

.method protected zzgu()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.search.service.SEARCH_AUTH_START"

    return-object v0
.end method

.method protected zzgv()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "com.google.android.gms.search.internal.ISearchAuthService"

    return-object v0
.end method
