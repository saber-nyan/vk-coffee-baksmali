.class Lcom/google/android/gms/measurement/internal/zza;
.super Ljava/lang/Object;


# instance fields
.field private zzSF:Ljava/lang/String;

.field private final zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

.field private final zzaUa:Ljava/lang/String;

.field private zzaVc:Ljava/lang/String;

.field private zzaVd:Ljava/lang/String;

.field private zzaVe:Ljava/lang/String;

.field private zzaVf:J

.field private zzaVg:J

.field private zzaVh:J

.field private zzaVi:Ljava/lang/String;

.field private zzaVj:J

.field private zzaVk:J

.field private zzaVl:Z

.field private zzaVm:J

.field private zzaVn:J

.field private zzaVo:J

.field private zzaVp:J

.field private zzaVq:Z

.field private zzaVr:J

.field private zzaVs:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzw;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzcM(Ljava/lang/String;)Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaUa:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    return-void
.end method


# virtual methods
.method public setAppVersion(Ljava/lang/String;)V
    .locals 2
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzSF:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzQ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzSF:Ljava/lang/String;

    return-void
.end method

.method public setMeasurementEnabled(Z)V
    .locals 2
    .param p1, "measurementEnabled"    # Z

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVl:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iput-boolean p1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVl:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzAr()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVl:Z

    return v0
.end method

.method public zzBi()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    return-void
.end method

.method public zzBj()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVc:Ljava/lang/String;

    return-object v0
.end method

.method public zzBk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVd:Ljava/lang/String;

    return-object v0
.end method

.method public zzBl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVe:Ljava/lang/String;

    return-object v0
.end method

.method public zzBm()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVg:J

    return-wide v0
.end method

.method public zzBn()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVh:J

    return-wide v0
.end method

.method public zzBo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVi:Ljava/lang/String;

    return-object v0
.end method

.method public zzBp()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVj:J

    return-wide v0
.end method

.method public zzBq()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVk:J

    return-wide v0
.end method

.method public zzBr()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVf:J

    return-wide v0
.end method

.method public zzBs()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVr:J

    return-wide v0
.end method

.method public zzBt()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVs:J

    return-wide v0
.end method

.method public zzBu()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVf:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzCF()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v0

    const-string/jumbo v1, "Bundle index overflow"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzfg(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVf:J

    return-void
.end method

.method public zzBv()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVm:J

    return-wide v0
.end method

.method public zzBw()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVn:J

    return-wide v0
.end method

.method public zzBx()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVo:J

    return-wide v0
.end method

.method public zzBy()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVp:J

    return-wide v0
.end method

.method public zzO(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVg:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVg:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzP(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVh:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVh:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzQ(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVj:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVj:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzR(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVk:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVk:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzS(J)V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-ltz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzac(Z)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVf:J

    cmp-long v3, v4, p1

    if-eqz v3, :cond_1

    :goto_1
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVf:J

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public zzT(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVr:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVr:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzU(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVs:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVs:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzV(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVm:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVm:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzW(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVn:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVn:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzX(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVo:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVo:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzY(J)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVp:J

    cmp-long v0, v2, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVp:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzeM(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVc:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzQ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVc:Ljava/lang/String;

    return-void
.end method

.method public zzeN(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVd:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzQ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVd:Ljava/lang/String;

    return-void
.end method

.method public zzeO(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVe:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzQ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVe:Ljava/lang/String;

    return-void
.end method

.method public zzeP(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVi:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzQ(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVq:Z

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaVi:Ljava/lang/String;

    return-void
.end method

.method public zzli()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzSF:Ljava/lang/String;

    return-object v0
.end method

.method public zzwK()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaTV:Lcom/google/android/gms/measurement/internal/zzw;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzw;->zzjk()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zza;->zzaUa:Ljava/lang/String;

    return-object v0
.end method
