.class public Lcom/google/android/gms/internal/zzbz;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private final zzxv:J

.field private final zzxw:Ljava/lang/String;

.field private final zzxx:Lcom/google/android/gms/internal/zzbz;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/google/android/gms/internal/zzbz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/zzbz;->zzxv:J

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbz;->zzxw:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbz;->zzxx:Lcom/google/android/gms/internal/zzbz;

    return-void
.end method


# virtual methods
.method getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzbz;->zzxv:J

    return-wide v0
.end method

.method zzdy()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbz;->zzxw:Ljava/lang/String;

    return-object v0
.end method

.method zzdz()Lcom/google/android/gms/internal/zzbz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbz;->zzxx:Lcom/google/android/gms/internal/zzbz;

    return-object v0
.end method
