.class Lcom/google/android/gms/measurement/internal/zzq$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/support/annotation/WorkerThread;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/measurement/internal/zzq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzb"
.end annotation


# instance fields
.field private final zzBc:I

.field private final zzTJ:Ljava/lang/String;

.field private final zzaWP:Lcom/google/android/gms/measurement/internal/zzq$zza;

.field private final zzaWQ:Ljava/lang/Throwable;

.field private final zzaWR:[B


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzq$zza;ILjava/lang/Throwable;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzx;->zzz(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzq$zzb;->zzaWP:Lcom/google/android/gms/measurement/internal/zzq$zza;

    iput p3, p0, Lcom/google/android/gms/measurement/internal/zzq$zzb;->zzBc:I

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/zzq$zzb;->zzaWQ:Ljava/lang/Throwable;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/zzq$zzb;->zzaWR:[B

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzq$zzb;->zzTJ:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzq$zza;ILjava/lang/Throwable;[BLcom/google/android/gms/measurement/internal/zzq$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/measurement/internal/zzq$zzb;-><init>(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/zzq$zza;ILjava/lang/Throwable;[B)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzq$zzb;->zzaWP:Lcom/google/android/gms/measurement/internal/zzq$zza;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzq$zzb;->zzTJ:Ljava/lang/String;

    iget v2, p0, Lcom/google/android/gms/measurement/internal/zzq$zzb;->zzBc:I

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/zzq$zzb;->zzaWQ:Ljava/lang/Throwable;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzq$zzb;->zzaWR:[B

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzq$zza;->zza(Ljava/lang/String;ILjava/lang/Throwable;[B)V

    return-void
.end method
