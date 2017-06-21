.class public final Lcom/google/android/gms/common/stats/zzc$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/stats/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# static fields
.field public static zzanA:Lcom/google/android/gms/internal/zzlz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzlz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzanB:Lcom/google/android/gms/internal/zzlz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzlz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzanC:Lcom/google/android/gms/internal/zzlz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzlz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzanD:Lcom/google/android/gms/internal/zzlz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzlz",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static zzanE:Lcom/google/android/gms/internal/zzlz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzlz",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static zzanz:Lcom/google/android/gms/internal/zzlz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzlz",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "gms:common:stats:connections:level"

    sget v1, Lcom/google/android/gms/common/stats/zzd;->LOG_LEVEL_OFF:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzlz;->zza(Ljava/lang/String;Ljava/lang/Integer;)Lcom/google/android/gms/internal/zzlz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzanz:Lcom/google/android/gms/internal/zzlz;

    const-string/jumbo v0, "gms:common:stats:connections:ignored_calling_processes"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzlz;->zzv(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzlz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzanA:Lcom/google/android/gms/internal/zzlz;

    const-string/jumbo v0, "gms:common:stats:connections:ignored_calling_services"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzlz;->zzv(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzlz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzanB:Lcom/google/android/gms/internal/zzlz;

    const-string/jumbo v0, "gms:common:stats:connections:ignored_target_processes"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzlz;->zzv(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzlz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzanC:Lcom/google/android/gms/internal/zzlz;

    const-string/jumbo v0, "gms:common:stats:connections:ignored_target_services"

    const-string/jumbo v1, "com.google.android.gms.auth.GetToken"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzlz;->zzv(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/zzlz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzanD:Lcom/google/android/gms/internal/zzlz;

    const-string/jumbo v0, "gms:common:stats:connections:time_out_duration"

    const-wide/32 v2, 0x927c0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzlz;->zza(Ljava/lang/String;Ljava/lang/Long;)Lcom/google/android/gms/internal/zzlz;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/stats/zzc$zza;->zzanE:Lcom/google/android/gms/internal/zzlz;

    return-void
.end method
