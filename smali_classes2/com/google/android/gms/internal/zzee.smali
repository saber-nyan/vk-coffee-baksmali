.class public Lcom/google/android/gms/internal/zzee;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzee$zza;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzee$zza;Lcom/google/android/gms/internal/zzan;)Lcom/google/android/gms/internal/zzed;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Lcom/google/android/gms/internal/zzee$zza",
            "<",
            "Lcom/google/android/gms/internal/zzed;",
            ">;",
            "Lcom/google/android/gms/internal/zzan;",
            ")",
            "Lcom/google/android/gms/internal/zzed;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzef;

    invoke-direct {v0, p1, p2, p4}, Lcom/google/android/gms/internal/zzef;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzan;)V

    iput-object v0, p3, Lcom/google/android/gms/internal/zzee$zza;->zzAR:Ljava/lang/Object;

    new-instance v1, Lcom/google/android/gms/internal/zzee$2;

    invoke-direct {v1, p0, p3}, Lcom/google/android/gms/internal/zzee$2;-><init>(Lcom/google/android/gms/internal/zzee;Lcom/google/android/gms/internal/zzee$zza;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzed;->zza(Lcom/google/android/gms/internal/zzed$zza;)V

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzee;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzee$zza;Lcom/google/android/gms/internal/zzan;)Lcom/google/android/gms/internal/zzed;
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/zzee;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzee$zza;Lcom/google/android/gms/internal/zzan;)Lcom/google/android/gms/internal/zzed;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/internal/zzan;)Ljava/util/concurrent/Future;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzan;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/zzed;",
            ">;"
        }
    .end annotation

    new-instance v4, Lcom/google/android/gms/internal/zzee$zza;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/zzee$zza;-><init>(Lcom/google/android/gms/internal/zzee$1;)V

    sget-object v7, Lcom/google/android/gms/internal/zzir;->zzMc:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/zzee$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzee$1;-><init>(Lcom/google/android/gms/internal/zzee;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzee$zza;Lcom/google/android/gms/internal/zzan;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v4
.end method
