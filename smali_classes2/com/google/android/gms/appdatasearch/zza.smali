.class public final Lcom/google/android/gms/appdatasearch/zza;
.super Ljava/lang/Object;


# static fields
.field public static final zzTA:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzTB:Lcom/google/android/gms/appdatasearch/zzk;

.field public static final zzTy:Lcom/google/android/gms/common/api/Api$zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<",
            "Lcom/google/android/gms/internal/zzki;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzTz:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/internal/zzki;",
            "Lcom/google/android/gms/common/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/zza;->zzTy:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/appdatasearch/zza$1;

    invoke-direct {v0}, Lcom/google/android/gms/appdatasearch/zza$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/zza;->zzTz:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string/jumbo v1, "AppDataSearch.LIGHTWEIGHT_API"

    sget-object v2, Lcom/google/android/gms/appdatasearch/zza;->zzTz:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/appdatasearch/zza;->zzTy:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/appdatasearch/zza;->zzTA:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/internal/zzkk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzkk;-><init>()V

    sput-object v0, Lcom/google/android/gms/appdatasearch/zza;->zzTB:Lcom/google/android/gms/appdatasearch/zzk;

    return-void
.end method
