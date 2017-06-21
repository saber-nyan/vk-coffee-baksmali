.class public Lcom/google/android/gms/internal/zzeg$zze;
.super Lcom/google/android/gms/internal/zzjj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzeg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zze"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzjj",
        "<",
        "Lcom/google/android/gms/internal/zzed;",
        ">;"
    }
.end annotation


# instance fields
.field private zzBa:Lcom/google/android/gms/internal/zzeg$zzb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzeg$zzb",
            "<",
            "Lcom/google/android/gms/internal/zzed;",
            ">;"
        }
    .end annotation
.end field

.field private zzBr:Z

.field private zzBs:I

.field private final zzpV:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzeg$zzb;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzeg$zzb",
            "<",
            "Lcom/google/android/gms/internal/zzed;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjj;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeg$zze;->zzpV:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeg$zze;->zzBa:Lcom/google/android/gms/internal/zzeg$zzb;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzeg$zze;->zzBr:Z

    iput v1, p0, Lcom/google/android/gms/internal/zzeg$zze;->zzBs:I

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeg$zze;)Lcom/google/android/gms/internal/zzeg$zzb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$zze;->zzBa:Lcom/google/android/gms/internal/zzeg$zzb;

    return-object v0
.end method


# virtual methods
.method public zzes()Lcom/google/android/gms/internal/zzeg$zzd;
    .locals 4

    new-instance v1, Lcom/google/android/gms/internal/zzeg$zzd;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzeg$zzd;-><init>(Lcom/google/android/gms/internal/zzeg$zze;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzeg$zze;->zzpV:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/zzeg$zze$1;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzeg$zze$1;-><init>(Lcom/google/android/gms/internal/zzeg$zze;Lcom/google/android/gms/internal/zzeg$zzd;)V

    new-instance v3, Lcom/google/android/gms/internal/zzeg$zze$2;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/zzeg$zze$2;-><init>(Lcom/google/android/gms/internal/zzeg$zze;Lcom/google/android/gms/internal/zzeg$zzd;)V

    invoke-virtual {p0, v0, v3}, Lcom/google/android/gms/internal/zzeg$zze;->zza(Lcom/google/android/gms/internal/zzji$zzc;Lcom/google/android/gms/internal/zzji$zza;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzeg$zze;->zzBs:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzab(Z)V

    iget v0, p0, Lcom/google/android/gms/internal/zzeg$zze;->zzBs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzeg$zze;->zzBs:I

    monitor-exit v2

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected zzet()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg$zze;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/google/android/gms/internal/zzeg$zze;->zzBs:I

    if-lt v2, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzab(Z)V

    const-string/jumbo v0, "Releasing 1 reference for JS Engine"

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->v(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/gms/internal/zzeg$zze;->zzBs:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzeg$zze;->zzBs:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeg$zze;->zzev()V

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzeu()V
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg$zze;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/google/android/gms/internal/zzeg$zze;->zzBs:I

    if-ltz v2, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzab(Z)V

    const-string/jumbo v0, "Releasing root reference. JS Engine will be destroyed once other references are released."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->v(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzeg$zze;->zzBr:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzeg$zze;->zzev()V

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected zzev()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg$zze;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/zzeg$zze;->zzBs:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzx;->zzab(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzeg$zze;->zzBr:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzeg$zze;->zzBs:I

    if-nez v0, :cond_1

    const-string/jumbo v0, "No reference is left (including root). Cleaning up engine."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->v(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/zzeg$zze$3;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzeg$zze$3;-><init>(Lcom/google/android/gms/internal/zzeg$zze;)V

    new-instance v2, Lcom/google/android/gms/internal/zzji$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzji$zzb;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzeg$zze;->zza(Lcom/google/android/gms/internal/zzji$zzc;Lcom/google/android/gms/internal/zzji$zza;)V

    :goto_1
    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "There are still references to the engine. Not destroying."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->v(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
