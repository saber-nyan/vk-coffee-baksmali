.class public final Lcom/google/android/gms/internal/zzjc;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private zzMM:Landroid/app/Activity;

.field private zzMN:Z

.field private zzMO:Z

.field private zzMP:Z

.field private zzMQ:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private zzMR:Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjc;->zzMM:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzjc;->zzMQ:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzjc;->zzMR:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    return-void
.end method

.method private zzhG()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzMM:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjc;->zzMN:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzMQ:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjc;->zzMM:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjc;->zzMQ:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzir;->zza(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzMR:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjc;->zzMM:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjc;->zzMR:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzir;->zza(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjc;->zzMN:Z

    goto :goto_0
.end method

.method private zzhH()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzMM:Landroid/app/Activity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjc;->zzMN:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzMQ:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbE()Lcom/google/android/gms/internal/zzis;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjc;->zzMM:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjc;->zzMQ:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzis;->zzb(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzjc;->zzMR:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzjc;->zzMM:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzjc;->zzMR:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzir;->zzb(Landroid/app/Activity;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjc;->zzMN:Z

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjc;->zzMO:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjc;->zzMP:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjc;->zzhG()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjc;->zzMO:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjc;->zzhH()V

    return-void
.end method

.method public zzhE()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjc;->zzMP:Z

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzjc;->zzMO:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjc;->zzhG()V

    :cond_0
    return-void
.end method

.method public zzhF()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzjc;->zzMP:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzjc;->zzhH()V

    return-void
.end method

.method public zzi(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzjc;->zzMM:Landroid/app/Activity;

    return-void
.end method
