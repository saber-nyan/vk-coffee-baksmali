.class public final Lcom/google/android/gms/measurement/internal/zzt$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/internal/zzt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "zzb"
.end annotation


# instance fields
.field private zzaDV:J

.field final synthetic zzaXA:Lcom/google/android/gms/measurement/internal/zzt;

.field private final zzaXB:J

.field private zzaXz:Z

.field private final zzvs:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;J)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzt$zzb;->zzaXA:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzcM(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzt$zzb;->zzvs:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzt$zzb;->zzaXB:J

    return-void
.end method

.method private zzCR()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzt$zzb;->zzaXz:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzt$zzb;->zzaXz:Z

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt$zzb;->zzaXA:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzt;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt$zzb;->zzvs:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzt$zzb;->zzaXB:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzt$zzb;->zzaDV:J

    goto :goto_0
.end method


# virtual methods
.method public get()J
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt$zzb;->zzCR()V

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzt$zzb;->zzaDV:J

    return-wide v0
.end method

.method public set(J)V
    .locals 3
    .param p1, "value"    # J
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt$zzb;->zzaXA:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzt;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt$zzb;->zzvs:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzt$zzb;->zzaDV:J

    return-void
.end method
