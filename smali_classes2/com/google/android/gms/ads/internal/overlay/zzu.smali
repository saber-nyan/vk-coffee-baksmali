.class Lcom/google/android/gms/ads/internal/overlay/zzu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private mCancelled:Z

.field private zzFo:Lcom/google/android/gms/ads/internal/overlay/zzk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->mCancelled:Z

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzFo:Lcom/google/android/gms/ads/internal/overlay/zzk;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->mCancelled:Z

    sget-object v0, Lcom/google/android/gms/internal/zzir;->zzMc:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->mCancelled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzFo:Lcom/google/android/gms/ads/internal/overlay/zzk;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zzk;->zzfF()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/overlay/zzu;->zzfQ()V

    :cond_0
    return-void
.end method

.method public zzfQ()V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/zzir;->zzMc:Landroid/os/Handler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
