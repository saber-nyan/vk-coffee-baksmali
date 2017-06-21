.class public Lcom/google/android/gms/internal/zzeg$zzd;
.super Lcom/google/android/gms/internal/zzjj;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzeg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzd"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzjj",
        "<",
        "Lcom/google/android/gms/internal/zzeh;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzBo:Lcom/google/android/gms/internal/zzeg$zze;

.field private zzBp:Z

.field private final zzpV:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzeg$zze;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjj;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzeg$zzd;->zzpV:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzeg$zzd;->zzBo:Lcom/google/android/gms/internal/zzeg$zze;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzeg$zzd;)Lcom/google/android/gms/internal/zzeg$zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzeg$zzd;->zzBo:Lcom/google/android/gms/internal/zzeg$zze;

    return-object v0
.end method


# virtual methods
.method public release()V
    .locals 3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzeg$zzd;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzeg$zzd;->zzBp:Z

    if-eqz v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzeg$zzd;->zzBp:Z

    new-instance v0, Lcom/google/android/gms/internal/zzeg$zzd$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzeg$zzd$1;-><init>(Lcom/google/android/gms/internal/zzeg$zzd;)V

    new-instance v2, Lcom/google/android/gms/internal/zzji$zzb;

    invoke-direct {v2}, Lcom/google/android/gms/internal/zzji$zzb;-><init>()V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzeg$zzd;->zza(Lcom/google/android/gms/internal/zzji$zzc;Lcom/google/android/gms/internal/zzji$zza;)V

    new-instance v0, Lcom/google/android/gms/internal/zzeg$zzd$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzeg$zzd$2;-><init>(Lcom/google/android/gms/internal/zzeg$zzd;)V

    new-instance v2, Lcom/google/android/gms/internal/zzeg$zzd$3;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzeg$zzd$3;-><init>(Lcom/google/android/gms/internal/zzeg$zzd;)V

    invoke-virtual {p0, v0, v2}, Lcom/google/android/gms/internal/zzeg$zzd;->zza(Lcom/google/android/gms/internal/zzji$zzc;Lcom/google/android/gms/internal/zzji$zza;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
