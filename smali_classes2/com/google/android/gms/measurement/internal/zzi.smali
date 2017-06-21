.class Lcom/google/android/gms/measurement/internal/zzi;
.super Ljava/lang/Object;


# instance fields
.field final mName:Ljava/lang/String;

.field final zzaUa:Ljava/lang/String;

.field final zzaVP:J

.field final zzaVQ:J

.field final zzaVR:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJJ)V
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzcM(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzcM(Ljava/lang/String;)Ljava/lang/String;

    cmp-long v0, p3, v4

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzac(Z)V

    cmp-long v0, p5, v4

    if-ltz v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzx;->zzac(Z)V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzi;->zzaUa:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzi;->mName:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzi;->zzaVP:J

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzi;->zzaVQ:J

    iput-wide p7, p0, Lcom/google/android/gms/measurement/internal/zzi;->zzaVR:J

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method zzCB()Lcom/google/android/gms/measurement/internal/zzi;
    .locals 10

    const-wide/16 v8, 0x1

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzi;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzi;->zzaUa:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzi;->mName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzi;->zzaVP:J

    add-long/2addr v4, v8

    iget-wide v6, p0, Lcom/google/android/gms/measurement/internal/zzi;->zzaVQ:J

    add-long/2addr v6, v8

    iget-wide v8, p0, Lcom/google/android/gms/measurement/internal/zzi;->zzaVR:J

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zzi;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    return-object v1
.end method

.method zzab(J)Lcom/google/android/gms/measurement/internal/zzi;
    .locals 11

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzi;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzi;->zzaUa:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzi;->mName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzi;->zzaVP:J

    iget-wide v6, p0, Lcom/google/android/gms/measurement/internal/zzi;->zzaVQ:J

    move-wide v8, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/measurement/internal/zzi;-><init>(Ljava/lang/String;Ljava/lang/String;JJJ)V

    return-object v1
.end method
