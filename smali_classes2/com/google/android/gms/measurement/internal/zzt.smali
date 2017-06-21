.class Lcom/google/android/gms/measurement/internal/zzt;
.super Lcom/google/android/gms/measurement/internal/zzz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/measurement/internal/zzt$1;,
        Lcom/google/android/gms/measurement/internal/zzt$zza;,
        Lcom/google/android/gms/measurement/internal/zzt$zzb;,
        Lcom/google/android/gms/measurement/internal/zzt$zzc;
    }
.end annotation


# static fields
.field static final zzaXh:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzTh:Landroid/content/SharedPreferences;

.field public final zzaXi:Lcom/google/android/gms/measurement/internal/zzt$zzc;

.field public final zzaXj:Lcom/google/android/gms/measurement/internal/zzt$zzb;

.field public final zzaXk:Lcom/google/android/gms/measurement/internal/zzt$zzb;

.field public final zzaXl:Lcom/google/android/gms/measurement/internal/zzt$zzb;

.field public final zzaXm:Lcom/google/android/gms/measurement/internal/zzt$zzb;

.field public final zzaXn:Lcom/google/android/gms/measurement/internal/zzt$zzb;

.field private zzaXo:Ljava/lang/String;

.field private zzaXp:Z

.field private zzaXq:J

.field private final zzaXr:Ljava/security/SecureRandom;

.field public final zzaXs:Lcom/google/android/gms/measurement/internal/zzt$zzb;

.field public final zzaXt:Lcom/google/android/gms/measurement/internal/zzt$zzb;

.field public final zzaXu:Lcom/google/android/gms/measurement/internal/zzt$zza;

.field public final zzaXv:Lcom/google/android/gms/measurement/internal/zzt$zzb;

.field public final zzaXw:Lcom/google/android/gms/measurement/internal/zzt$zzb;

.field public zzaXx:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/util/Pair;

    const-string/jumbo v1, ""

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXh:Landroid/util/Pair;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzw;)V
    .locals 10

    const-wide/16 v8, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/zzz;-><init>(Lcom/google/android/gms/measurement/internal/zzw;)V

    new-instance v1, Lcom/google/android/gms/measurement/internal/zzt$zzc;

    const-string/jumbo v3, "health_monitor"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzCp()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzd;->zzkX()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/measurement/internal/zzt$zzc;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;JLcom/google/android/gms/measurement/internal/zzt$1;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXi:Lcom/google/android/gms/measurement/internal/zzt$zzc;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzt$zzb;

    const-string/jumbo v1, "last_upload"

    invoke-direct {v0, p0, v1, v8, v9}, Lcom/google/android/gms/measurement/internal/zzt$zzb;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXj:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzt$zzb;

    const-string/jumbo v1, "last_upload_attempt"

    invoke-direct {v0, p0, v1, v8, v9}, Lcom/google/android/gms/measurement/internal/zzt$zzb;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXk:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzt$zzb;

    const-string/jumbo v1, "backoff"

    invoke-direct {v0, p0, v1, v8, v9}, Lcom/google/android/gms/measurement/internal/zzt$zzb;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXl:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzt$zzb;

    const-string/jumbo v1, "last_delete_stale"

    invoke-direct {v0, p0, v1, v8, v9}, Lcom/google/android/gms/measurement/internal/zzt$zzb;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXm:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzt$zzb;

    const-string/jumbo v1, "time_before_start"

    const-wide/16 v2, 0x2710

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzt$zzb;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXs:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzt$zzb;

    const-string/jumbo v1, "session_timeout"

    const-wide/32 v2, 0x1b7740

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzt$zzb;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXt:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzt$zza;

    const-string/jumbo v1, "start_new_session"

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzt$zza;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;Z)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXu:Lcom/google/android/gms/measurement/internal/zzt$zza;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzt$zzb;

    const-string/jumbo v1, "last_pause_time"

    invoke-direct {v0, p0, v1, v8, v9}, Lcom/google/android/gms/measurement/internal/zzt$zzb;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXv:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzt$zzb;

    const-string/jumbo v1, "time_active"

    invoke-direct {v0, p0, v1, v8, v9}, Lcom/google/android/gms/measurement/internal/zzt$zzb;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXw:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXr:Ljava/security/SecureRandom;

    new-instance v0, Lcom/google/android/gms/measurement/internal/zzt$zzb;

    const-string/jumbo v1, "midnight_offset"

    invoke-direct {v0, p0, v1, v8, v9}, Lcom/google/android/gms/measurement/internal/zzt$zzb;-><init>(Lcom/google/android/gms/measurement/internal/zzt;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXn:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    return-void
.end method

.method private zzCO()Landroid/content/SharedPreferences;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzjv()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzTh:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/measurement/internal/zzt;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzTh:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/measurement/internal/zzt;)Ljava/security/SecureRandom;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXr:Ljava/security/SecureRandom;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/measurement/internal/zzt;)Landroid/content/SharedPreferences;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzCO()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method setMeasurementEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzCK()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v0

    const-string/jumbo v1, "Setting measurementEnabled"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzCO()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "measurement_enabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method zzAr()Z
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzjk()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzCO()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "measurement_enabled"

    invoke-static {}, Lcom/google/android/gms/measurement/zza;->zzAs()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method zzCM()Ljava/lang/String;
    .locals 7

    const/4 v6, 0x1

    const/16 v0, 0x10

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXr:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v2, "%032x"

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/math/BigInteger;

    invoke-direct {v5, v6, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method zzCN()J
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzjv()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzjk()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXn:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzt$zzb;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXr:Ljava/security/SecureRandom;

    const v1, 0x5265c00

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXn:Lcom/google/android/gms/measurement/internal/zzt$zzb;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/measurement/internal/zzt$zzb;->set(J)V

    :cond_0
    return-wide v0
.end method

.method zzCP()Ljava/lang/Boolean;
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzjk()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzCO()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "use_service"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzCO()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "use_service"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected zzCQ()Ljava/lang/String;
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzjk()V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzCO()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "previous_os_version"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzCh()Lcom/google/android/gms/measurement/internal/zzg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzg;->zzCy()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzCO()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string/jumbo v3, "previous_os_version"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-object v0
.end method

.method zzar(Z)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzp;->zzCK()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v0

    const-string/jumbo v1, "Setting useService"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzCO()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "use_service"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method zzfh(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzjk()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzjl()Lcom/google/android/gms/internal/zzmq;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzmq;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXo:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXq:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXo:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXp:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzCp()Lcom/google/android/gms/measurement/internal/zzd;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/measurement/internal/zzd;->zzeS(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXq:J

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXo:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXp:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->setShouldSkipGmsCoreVersionCheck(Z)V

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXo:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXp:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->zzAo()Lcom/google/android/gms/measurement/internal/zzp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/zzp;->zzCJ()Lcom/google/android/gms/measurement/internal/zzp$zza;

    move-result-object v1

    const-string/jumbo v2, "Unable to get advertising id"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/zzp$zza;->zzj(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXo:Ljava/lang/String;

    goto :goto_1
.end method

.method zzfi(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/measurement/internal/zzt;->zzfh(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "MD5"

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/zzaj;->zzbv(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v3, "%032X"

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-direct {v6, v7, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected zziJ()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/zzt;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.gms.measurement.prefs"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzTh:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzTh:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "has_been_opened"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXx:Z

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzaXx:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzt;->zzTh:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "has_been_opened"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
