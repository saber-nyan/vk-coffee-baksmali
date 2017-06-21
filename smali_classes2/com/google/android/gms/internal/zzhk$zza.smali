.class Lcom/google/android/gms/internal/zzhk$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzhk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field public final zzKn:J

.field public final zzKo:Lcom/google/android/gms/internal/zzhj;

.field final synthetic zzKp:Lcom/google/android/gms/internal/zzhk;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzhk;Lcom/google/android/gms/internal/zzhj;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhk$zza;->zzKp:Lcom/google/android/gms/internal/zzhk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbG()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzhk$zza;->zzKn:J

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhk$zza;->zzKo:Lcom/google/android/gms/internal/zzhj;

    return-void
.end method


# virtual methods
.method public hasExpired()Z
    .locals 4

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzhk$zza;->zzKn:J

    sget-object v0, Lcom/google/android/gms/internal/zzbt;->zzwM:Lcom/google/android/gms/internal/zzbp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, v2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbG()Lcom/google/android/gms/internal/zzmq;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
