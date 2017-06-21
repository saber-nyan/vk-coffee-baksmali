.class public final Lcom/google/android/gms/common/stats/zzd;
.super Ljava/lang/Object;


# static fields
.field public static LOG_LEVEL_OFF:I

.field public static final zzanF:Landroid/content/ComponentName;

.field public static zzanG:I

.field public static zzanH:I

.field public static zzanI:I

.field public static zzanJ:I

.field public static zzanK:I

.field public static zzanL:I

.field public static zzanM:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.google.android.gms"

    const-string/jumbo v2, "com.google.android.gms.common.stats.GmsCoreStatsService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/stats/zzd;->zzanF:Landroid/content/ComponentName;

    const/4 v0, 0x0

    sput v0, Lcom/google/android/gms/common/stats/zzd;->LOG_LEVEL_OFF:I

    sput v3, Lcom/google/android/gms/common/stats/zzd;->zzanG:I

    const/4 v0, 0x2

    sput v0, Lcom/google/android/gms/common/stats/zzd;->zzanH:I

    const/4 v0, 0x4

    sput v0, Lcom/google/android/gms/common/stats/zzd;->zzanI:I

    const/16 v0, 0x8

    sput v0, Lcom/google/android/gms/common/stats/zzd;->zzanJ:I

    const/16 v0, 0x10

    sput v0, Lcom/google/android/gms/common/stats/zzd;->zzanK:I

    const/16 v0, 0x20

    sput v0, Lcom/google/android/gms/common/stats/zzd;->zzanL:I

    sput v3, Lcom/google/android/gms/common/stats/zzd;->zzanM:I

    return-void
.end method
