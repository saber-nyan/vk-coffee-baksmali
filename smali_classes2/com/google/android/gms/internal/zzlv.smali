.class public Lcom/google/android/gms/internal/zzlv;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/clearcut/zzc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzlv$zze;,
        Lcom/google/android/gms/internal/zzlv$zzd;,
        Lcom/google/android/gms/internal/zzlv$zzb;,
        Lcom/google/android/gms/internal/zzlv$zza;,
        Lcom/google/android/gms/internal/zzlv$zzc;
    }
.end annotation


# static fields
.field private static final zzafn:Ljava/lang/Object;

.field private static final zzafo:Lcom/google/android/gms/internal/zzlv$zze;

.field private static final zzafp:J


# instance fields
.field private zzaaj:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final zzafq:Lcom/google/android/gms/internal/zzlv$zza;

.field private final zzafr:Ljava/lang/Object;

.field private zzafs:J

.field private final zzaft:J

.field private zzafu:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final zzafv:Ljava/lang/Runnable;

.field private final zzqW:Lcom/google/android/gms/internal/zzmq;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzlv;->zzafn:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzlv$zze;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzlv$zze;-><init>(Lcom/google/android/gms/internal/zzlv$1;)V

    sput-object v0, Lcom/google/android/gms/internal/zzlv;->zzafo:Lcom/google/android/gms/internal/zzlv$zze;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/android/gms/internal/zzlv;->zzafp:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzmt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzmt;-><init>()V

    sget-wide v2, Lcom/google/android/gms/internal/zzlv;->zzafp:J

    new-instance v1, Lcom/google/android/gms/internal/zzlv$zzb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzlv$zzb;-><init>()V

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/zzlv;-><init>(Lcom/google/android/gms/internal/zzmq;JLcom/google/android/gms/internal/zzlv$zza;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzmq;JLcom/google/android/gms/internal/zzlv$zza;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlv;->zzafr:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzlv;->zzafs:J

    iput-object v2, p0, Lcom/google/android/gms/internal/zzlv;->zzafu:Ljava/util/concurrent/ScheduledFuture;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzlv;->zzaaj:Lcom/google/android/gms/common/api/GoogleApiClient;

    new-instance v0, Lcom/google/android/gms/internal/zzlv$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzlv$1;-><init>(Lcom/google/android/gms/internal/zzlv;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzlv;->zzafv:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlv;->zzqW:Lcom/google/android/gms/internal/zzmq;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzlv;->zzaft:J

    iput-object p4, p0, Lcom/google/android/gms/internal/zzlv;->zzafq:Lcom/google/android/gms/internal/zzlv$zza;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzlv;Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzlv;->zzaaj:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzlv;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->zzafr:Ljava/lang/Object;

    return-object v0
.end method

.method private static zza(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafl:Lcom/google/android/gms/clearcut/zzb$zzb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafk:Lcom/google/android/gms/internal/zzsz$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuY:[B

    array-length v0, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafk:Lcom/google/android/gms/internal/zzsz$zzd;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafl:Lcom/google/android/gms/clearcut/zzb$zzb;

    invoke-interface {v1}, Lcom/google/android/gms/clearcut/zzb$zzb;->zzoF()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuY:[B

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafm:Lcom/google/android/gms/clearcut/zzb$zzb;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafk:Lcom/google/android/gms/internal/zzsz$zzd;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvf:[B

    array-length v0, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafk:Lcom/google/android/gms/internal/zzsz$zzd;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafm:Lcom/google/android/gms/clearcut/zzb$zzb;

    invoke-interface {v1}, Lcom/google/android/gms/clearcut/zzb$zzb;->zzoF()[B

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvf:[B

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafk:Lcom/google/android/gms/internal/zzsz$zzd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsu;->toByteArray(Lcom/google/android/gms/internal/zzsu;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/LogEventParcelable;->zzafi:[B

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzlv;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzlv;->zzafs:J

    return-wide v0
.end method

.method private zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/internal/zzlv$zzd;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzlv;->zzafo:Lcom/google/android/gms/internal/zzlv$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzlv$zze;->zzoH()V

    new-instance v0, Lcom/google/android/gms/internal/zzlv$zzd;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/zzlv$zzd;-><init>(Lcom/google/android/gms/internal/zzlv;Lcom/google/android/gms/clearcut/LogEventParcelable;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    new-instance v1, Lcom/google/android/gms/internal/zzlv$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzlv$2;-><init>(Lcom/google/android/gms/internal/zzlv;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzlv$zzd;->zza(Lcom/google/android/gms/common/api/PendingResult$zza;)V

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/clearcut/LogEventParcelable;)V
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/zzlv;->zza(Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    return-void
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzlv;)Lcom/google/android/gms/internal/zzmq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->zzqW:Lcom/google/android/gms/internal/zzmq;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzlv;)Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzlv;->zzaaj:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method static synthetic zzoG()Lcom/google/android/gms/internal/zzlv$zze;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzlv;->zzafo:Lcom/google/android/gms/internal/zzlv$zze;

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            "Lcom/google/android/gms/clearcut/LogEventParcelable;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/zzlv;->zza(Lcom/google/android/gms/clearcut/LogEventParcelable;)V

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/zzlv;->zzb(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/internal/zzlv$zzd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zza(Lcom/google/android/gms/common/api/internal/zza$zza;)Lcom/google/android/gms/common/api/internal/zza$zza;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/common/api/GoogleApiClient;JLjava/util/concurrent/TimeUnit;)Z
    .locals 2

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzlv;->zzafo:Lcom/google/android/gms/internal/zzlv$zze;

    invoke-virtual {v0, p2, p3, p4}, Lcom/google/android/gms/internal/zzlv$zze;->zza(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, "ClearcutLoggerApiImpl"

    const-string/jumbo v1, "flush interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    goto :goto_0
.end method
