.class public Lcom/google/android/gms/measurement/internal/zzag;
.super Lcom/google/android/gms/measurement/internal/zzz;


# instance fields
.field private zzRH:Z

.field private final zzRI:Landroid/app/AlarmManager;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/zzw;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzz;-><init>(Lcom/google/android/gms/measurement/internal/zzw;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzag;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzag;->zzRI:Landroid/app/AlarmManager;

    return-void
.end method

.method private zzld()Landroid/app/PendingIntent;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzag;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/measurement/AppMeasurementReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v1, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzag;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzag;->zzjv()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzag;->zzRH:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzag;->zzRI:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzag;->zzld()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzAo()Lcom/google/android/gms/measurement/internal/zzp;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCd()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCd()V

    return-void
.end method

.method public bridge synthetic zzCe()Lcom/google/android/gms/measurement/internal/zzc;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCe()Lcom/google/android/gms/measurement/internal/zzc;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCf()Lcom/google/android/gms/measurement/internal/zzab;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCf()Lcom/google/android/gms/measurement/internal/zzab;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCg()Lcom/google/android/gms/measurement/internal/zzn;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCg()Lcom/google/android/gms/measurement/internal/zzn;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCh()Lcom/google/android/gms/measurement/internal/zzg;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCh()Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCi()Lcom/google/android/gms/measurement/internal/zzac;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCi()Lcom/google/android/gms/measurement/internal/zzac;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCj()Lcom/google/android/gms/measurement/internal/zze;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCj()Lcom/google/android/gms/measurement/internal/zze;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCk()Lcom/google/android/gms/measurement/internal/zzaj;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCk()Lcom/google/android/gms/measurement/internal/zzaj;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCl()Lcom/google/android/gms/measurement/internal/zzu;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCl()Lcom/google/android/gms/measurement/internal/zzu;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCm()Lcom/google/android/gms/measurement/internal/zzad;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCm()Lcom/google/android/gms/measurement/internal/zzad;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCn()Lcom/google/android/gms/measurement/internal/zzv;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCn()Lcom/google/android/gms/measurement/internal/zzv;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCo()Lcom/google/android/gms/measurement/internal/zzt;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCo()Lcom/google/android/gms/measurement/internal/zzt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic zzCp()Lcom/google/android/gms/measurement/internal/zzd;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzCp()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    return-object v0
.end method

.method protected zziJ()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzag;->zzRI:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzag;->zzld()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public bridge synthetic zzjj()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzjj()V

    return-void
.end method

.method public bridge synthetic zzjk()V
    .locals 0

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzjk()V

    return-void
.end method

.method public bridge synthetic zzjl()Lcom/google/android/gms/internal/zzmq;
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/zzz;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    return-object v0
.end method

.method public zzt(J)V
    .locals 7

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzag;->zzjv()V

    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzac(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzag;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/AppMeasurementReceiver;->zzY(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v2, "Receiver not registered/enabled"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzag;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/AppMeasurementService;->zzZ(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v2, "Service not registered/enabled"

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzx;->zza(ZLjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzag;->cancel()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzag;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iput-boolean v1, p0, Lcom/google/android/gms/measurement/internal/zzag;->zzRH:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzag;->zzRI:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzag;->zzCp()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/zzd;->zzBZ()J

    move-result-wide v4

    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzag;->zzld()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
