.class Lcom/google/android/gms/measurement/internal/zzad$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/measurement/internal/zzad;->zzDu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaZe:Lcom/google/android/gms/measurement/internal/zzad;

.field final synthetic zzaZg:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzad;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzad$4;->zzaZe:Lcom/google/android/gms/measurement/internal/zzad;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/zzad$4;->zzaZg:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzad$4;->zzaZe:Lcom/google/android/gms/measurement/internal/zzad;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/zzad$4;->zzaZg:J

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/measurement/internal/zzad;->zza(Lcom/google/android/gms/measurement/internal/zzad;J)V

    return-void
.end method
