.class Lcom/google/android/gms/internal/zzjq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzjq;->zzfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzNL:Lcom/google/android/gms/internal/zzjq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzjq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjq$1;->zzNL:Lcom/google/android/gms/internal/zzjq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq$1;->zzNL:Lcom/google/android/gms/internal/zzjq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjq;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzid()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq$1;->zzNL:Lcom/google/android/gms/internal/zzjq;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzjq;->zzpD:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->zzhS()Lcom/google/android/gms/ads/internal/overlay/zzd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzd;->zzfo()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq$1;->zzNL:Lcom/google/android/gms/internal/zzjq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjq;->zzd(Lcom/google/android/gms/internal/zzjq;)Lcom/google/android/gms/internal/zzjq$zzb;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq$1;->zzNL:Lcom/google/android/gms/internal/zzjq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzjq;->zzd(Lcom/google/android/gms/internal/zzjq;)Lcom/google/android/gms/internal/zzjq$zzb;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjq$zzb;->zzbi()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjq$1;->zzNL:Lcom/google/android/gms/internal/zzjq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzjq;->zza(Lcom/google/android/gms/internal/zzjq;Lcom/google/android/gms/internal/zzjq$zzb;)Lcom/google/android/gms/internal/zzjq$zzb;

    :cond_1
    return-void
.end method
