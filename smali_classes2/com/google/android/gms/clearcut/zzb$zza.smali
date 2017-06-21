.class public Lcom/google/android/gms/clearcut/zzb$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/clearcut/zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "zza"
.end annotation


# instance fields
.field private zzaeS:Ljava/lang/String;

.field private zzaeT:I

.field private zzaeU:Ljava/lang/String;

.field private zzaeV:Ljava/lang/String;

.field private zzaeX:I

.field private final zzafb:Lcom/google/android/gms/clearcut/zzb$zzb;

.field private zzafc:Lcom/google/android/gms/clearcut/zzb$zzb;

.field private zzafd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzafe:Lcom/google/android/gms/internal/zzsz$zzd;

.field private zzaff:Z

.field final synthetic zzafg:Lcom/google/android/gms/clearcut/zzb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/clearcut/zzb;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/clearcut/zzb$zza;-><init>(Lcom/google/android/gms/clearcut/zzb;[BLcom/google/android/gms/clearcut/zzb$zzb;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/clearcut/zzb;[BLcom/google/android/gms/clearcut/zzb$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/clearcut/zzb$zza;-><init>(Lcom/google/android/gms/clearcut/zzb;[B)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/clearcut/zzb;[BLcom/google/android/gms/clearcut/zzb$zzb;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafg:Lcom/google/android/gms/clearcut/zzb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafg:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zza(Lcom/google/android/gms/clearcut/zzb;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaeT:I

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafg:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zzb(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaeS:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafg:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zzc(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaeU:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafg:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zzd(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaeV:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafg:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zze(Lcom/google/android/gms/clearcut/zzb;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaeX:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafd:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/gms/internal/zzsz$zzd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsz$zzd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafe:Lcom/google/android/gms/internal/zzsz$zzd;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaff:Z

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzc(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaeU:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzd(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaeV:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafe:Lcom/google/android/gms/internal/zzsz$zzd;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzf(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/internal/zzmq;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzmq;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuR:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafe:Lcom/google/android/gms/internal/zzsz$zzd;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzf(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/internal/zzmq;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzmq;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuS:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafe:Lcom/google/android/gms/internal/zzsz$zzd;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzh(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zza;

    move-result-object v1

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzg(Lcom/google/android/gms/clearcut/zzb;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/clearcut/zza;->zzah(Landroid/content/Context;)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvi:J

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafe:Lcom/google/android/gms/internal/zzsz$zzd;

    invoke-static {p1}, Lcom/google/android/gms/clearcut/zzb;->zzi(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zzb$zzc;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafe:Lcom/google/android/gms/internal/zzsz$zzd;

    iget-wide v2, v2, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuR:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/clearcut/zzb$zzc;->zzC(J)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbvd:J

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafe:Lcom/google/android/gms/internal/zzsz$zzd;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuY:[B

    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafb:Lcom/google/android/gms/clearcut/zzb$zzb;

    return-void
.end method


# virtual methods
.method public zzbq(I)Lcom/google/android/gms/clearcut/zzb$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafe:Lcom/google/android/gms/internal/zzsz$zzd;

    iput p1, v0, Lcom/google/android/gms/internal/zzsz$zzd;->zzbuU:I

    return-object p0
.end method

.method public zzbr(I)Lcom/google/android/gms/clearcut/zzb$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafe:Lcom/google/android/gms/internal/zzsz$zzd;

    iput p1, v0, Lcom/google/android/gms/internal/zzsz$zzd;->zzob:I

    return-object p0
.end method

.method public zzd(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/GoogleApiClient;",
            ")",
            "Lcom/google/android/gms/common/api/PendingResult",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaff:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaff:Z

    iget-object v0, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafg:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v0}, Lcom/google/android/gms/clearcut/zzb;->zzm(Lcom/google/android/gms/clearcut/zzb;)Lcom/google/android/gms/clearcut/zzc;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/clearcut/zzb$zza;->zzoE()Lcom/google/android/gms/clearcut/LogEventParcelable;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/clearcut/zzc;->zza(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/clearcut/LogEventParcelable;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    return-object v0
.end method

.method public zzoE()Lcom/google/android/gms/clearcut/LogEventParcelable;
    .locals 10

    new-instance v9, Lcom/google/android/gms/clearcut/LogEventParcelable;

    new-instance v0, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafg:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/zzb;->zzk(Lcom/google/android/gms/clearcut/zzb;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafg:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v2}, Lcom/google/android/gms/clearcut/zzb;->zzl(Lcom/google/android/gms/clearcut/zzb;)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaeT:I

    iget-object v4, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaeS:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaeU:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaeV:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafg:Lcom/google/android/gms/clearcut/zzb;

    invoke-static {v7}, Lcom/google/android/gms/clearcut/zzb;->zzj(Lcom/google/android/gms/clearcut/zzb;)Z

    move-result v7

    iget v8, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzaeX:I

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/playlog/internal/PlayLoggerContext;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    iget-object v3, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafe:Lcom/google/android/gms/internal/zzsz$zzd;

    iget-object v4, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafb:Lcom/google/android/gms/clearcut/zzb$zzb;

    iget-object v5, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafc:Lcom/google/android/gms/clearcut/zzb$zzb;

    iget-object v1, p0, Lcom/google/android/gms/clearcut/zzb$zza;->zzafd:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/google/android/gms/clearcut/zzb;->zzc(Ljava/util/ArrayList;)[I

    move-result-object v6

    move-object v1, v9

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/clearcut/LogEventParcelable;-><init>(Lcom/google/android/gms/playlog/internal/PlayLoggerContext;Lcom/google/android/gms/internal/zzsz$zzd;Lcom/google/android/gms/clearcut/zzb$zzb;Lcom/google/android/gms/clearcut/zzb$zzb;[I)V

    return-object v9
.end method
