.class public final Lcom/google/android/gms/internal/zzhf;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private zzEY:Ljava/lang/String;

.field private zzJh:Ljava/lang/String;

.field private zzJi:Lcom/google/android/gms/internal/zzjd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzjd",
            "<",
            "Lcom/google/android/gms/internal/zzhi;",
            ">;"
        }
    .end annotation
.end field

.field zzJj:Lcom/google/android/gms/internal/zzeg$zzd;

.field public final zzJk:Lcom/google/android/gms/internal/zzdf;

.field public final zzJl:Lcom/google/android/gms/internal/zzdf;

.field zzpD:Lcom/google/android/gms/internal/zzjp;

.field private final zzpV:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzpV:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/zzjd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzjd;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzJi:Lcom/google/android/gms/internal/zzjd;

    new-instance v0, Lcom/google/android/gms/internal/zzhf$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzhf$1;-><init>(Lcom/google/android/gms/internal/zzhf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzJk:Lcom/google/android/gms/internal/zzdf;

    new-instance v0, Lcom/google/android/gms/internal/zzhf$2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzhf$2;-><init>(Lcom/google/android/gms/internal/zzhf;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzJl:Lcom/google/android/gms/internal/zzdf;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzhf;->zzJh:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhf;->zzEY:Ljava/lang/String;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzhf;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzpV:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzhf;)Lcom/google/android/gms/internal/zzjd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzJi:Lcom/google/android/gms/internal/zzjd;

    return-object v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzhf;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzEY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzhf;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzJh:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzeg$zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhf;->zzJj:Lcom/google/android/gms/internal/zzeg$zzd;

    return-void
.end method

.method public zzgB()Lcom/google/android/gms/internal/zzeg$zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzJj:Lcom/google/android/gms/internal/zzeg$zzd;

    return-object v0
.end method

.method public zzgC()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/google/android/gms/internal/zzhi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzJi:Lcom/google/android/gms/internal/zzjd;

    return-object v0
.end method

.method public zzgD()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzpD:Lcom/google/android/gms/internal/zzjp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhf;->zzpD:Lcom/google/android/gms/internal/zzjp;

    :cond_0
    return-void
.end method

.method public zzh(Lcom/google/android/gms/internal/zzjp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhf;->zzpD:Lcom/google/android/gms/internal/zzjp;

    return-void
.end method
