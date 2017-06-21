.class public final Lcom/google/android/gms/internal/zzrl;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzrl$zza;
    }
.end annotation


# static fields
.field public static final API:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/internal/zzro;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzUI:Lcom/google/android/gms/common/api/Api$zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<",
            "Lcom/google/android/gms/signin/internal/zzh;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzUJ:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/signin/internal/zzh;",
            "Lcom/google/android/gms/internal/zzro;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzWW:Lcom/google/android/gms/common/api/Scope;

.field public static final zzWX:Lcom/google/android/gms/common/api/Scope;

.field public static final zzaoG:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<",
            "Lcom/google/android/gms/internal/zzrl$zza;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzavN:Lcom/google/android/gms/common/api/Api$zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zzc",
            "<",
            "Lcom/google/android/gms/signin/internal/zzh;",
            ">;"
        }
    .end annotation
.end field

.field static final zzbgS:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<",
            "Lcom/google/android/gms/signin/internal/zzh;",
            "Lcom/google/android/gms/internal/zzrl$zza;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbgT:Lcom/google/android/gms/internal/zzrm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzrl;->zzUI:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/Api$zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzrl;->zzavN:Lcom/google/android/gms/common/api/Api$zzc;

    new-instance v0, Lcom/google/android/gms/internal/zzrl$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzrl$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzrl;->zzUJ:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/internal/zzrl$2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzrl$2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzrl;->zzbgS:Lcom/google/android/gms/common/api/Api$zza;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "profile"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzrl;->zzWW:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Scope;

    const-string/jumbo v1, "email"

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Scope;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/zzrl;->zzWX:Lcom/google/android/gms/common/api/Scope;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string/jumbo v1, "SignIn.API"

    sget-object v2, Lcom/google/android/gms/internal/zzrl;->zzUJ:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/internal/zzrl;->zzUI:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/internal/zzrl;->API:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/common/api/Api;

    const-string/jumbo v1, "SignIn.INTERNAL_API"

    sget-object v2, Lcom/google/android/gms/internal/zzrl;->zzbgS:Lcom/google/android/gms/common/api/Api$zza;

    sget-object v3, Lcom/google/android/gms/internal/zzrl;->zzavN:Lcom/google/android/gms/common/api/Api$zzc;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/Api;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/Api$zza;Lcom/google/android/gms/common/api/Api$zzc;)V

    sput-object v0, Lcom/google/android/gms/internal/zzrl;->zzaoG:Lcom/google/android/gms/common/api/Api;

    new-instance v0, Lcom/google/android/gms/signin/internal/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/signin/internal/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzrl;->zzbgT:Lcom/google/android/gms/internal/zzrm;

    return-void
.end method
