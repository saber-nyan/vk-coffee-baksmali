.class public final Lcom/google/android/gms/measurement/internal/zzt$zzc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/internal/zzt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "zzc"
.end annotation


# instance fields
.field private final zzTl:J

.field final synthetic zzaXA:Lcom/google/android/gms/measurement/internal/zzt;

.field final zzaXC:Ljava/lang/String;

.field private final zzaXD:Ljava/lang/String;

.field private final zzaXE:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;J)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXA:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzcM(Ljava/lang/String;)Ljava/lang/String;

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzac(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":start"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXC:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXD:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXE:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzTl:J

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;JLcom/google/android/gms/measurement/internal/zzt$1;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/measurement/internal/zzt$zzc;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;J)V

    return-void
.end method

.method private zzlL()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXA:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->zzjk()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXA:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXA:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-static {v2}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzt;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXD:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXE:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXC:Ljava/lang/String;

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private zzlM()J
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXA:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/zzt;->zzjk()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzlO()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzlL()V

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXA:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    goto :goto_0
.end method

.method private zzlO()J
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXA:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzt;->zzc(Lcom/google/android/gms/measurement/internal/zzt;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXC:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public zzbq(Ljava/lang/String;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide/16 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzf(Ljava/lang/String;J)V

    return-void
.end method

.method public zzf(Ljava/lang/String;J)V
    .locals 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const-wide v6, 0x7fffffffffffffffL

    const-wide/16 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXA:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt;->zzjk()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzlO()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzlL()V

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p1, ""

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXA:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzt;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXD:Ljava/lang/String;

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXA:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzt;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXE:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXD:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXA:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzt;->zzb(Lcom/google/android/gms/measurement/internal/zzt;)Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v0

    and-long/2addr v0, v6

    add-long v4, v2, p2

    div-long v4, v6, v4

    mul-long/2addr v4, p2

    cmp-long v0, v0, v4

    if-gez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXA:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzt;->zza(Lcom/google/android/gms/measurement/internal/zzt;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXE:Ljava/lang/String;

    invoke-interface {v1, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXD:Ljava/lang/String;

    add-long/2addr v2, p2

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public zzlN()Landroid/util/Pair;
    .locals 10
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-wide/16 v8, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXA:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzt;->zzjk()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzlM()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzTl:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzTl:J

    const-wide/16 v6, 0x2

    mul-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzlL()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXA:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzt;->zzc(Lcom/google/android/gms/measurement/internal/zzt;)Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXE:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXA:Lcom/google/android/gms/measurement/internal/zzt;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/zzt;->zzc(Lcom/google/android/gms/measurement/internal/zzt;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzaXD:Ljava/lang/String;

    invoke-interface {v0, v2, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt$zzc;->zzlL()V

    if-eqz v1, :cond_2

    cmp-long v0, v2, v8

    if-gtz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXh:Landroid/util/Pair;

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/util/Pair;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method
