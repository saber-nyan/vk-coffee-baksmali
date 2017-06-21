.class public Lcom/google/android/gms/internal/zzhx;
.super Lcom/google/android/gms/ads/internal/reward/mediation/client/zza$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private zzKC:Lcom/google/android/gms/internal/zzhy;

.field private zzKJ:Lcom/google/android/gms/internal/zzhv;

.field private zzKK:Lcom/google/android/gms/internal/zzhw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzhw;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/reward/mediation/client/zza$zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhx;->zzKK:Lcom/google/android/gms/internal/zzhw;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/dynamic/zzd;Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhx;->zzKK:Lcom/google/android/gms/internal/zzhw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhx;->zzKK:Lcom/google/android/gms/internal/zzhw;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzhw;->zzc(Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;)V

    :cond_0
    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzhv;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhx;->zzKJ:Lcom/google/android/gms/internal/zzhv;

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzhy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhx;->zzKC:Lcom/google/android/gms/internal/zzhy;

    return-void
.end method

.method public zzb(Lcom/google/android/gms/dynamic/zzd;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhx;->zzKJ:Lcom/google/android/gms/internal/zzhv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhx;->zzKJ:Lcom/google/android/gms/internal/zzhv;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/zzhv;->zzN(I)V

    :cond_0
    return-void
.end method

.method public zzc(Lcom/google/android/gms/dynamic/zzd;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhx;->zzKC:Lcom/google/android/gms/internal/zzhy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhx;->zzKC:Lcom/google/android/gms/internal/zzhy;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/google/android/gms/internal/zzhy;->zza(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public zzg(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhx;->zzKJ:Lcom/google/android/gms/internal/zzhv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhx;->zzKJ:Lcom/google/android/gms/internal/zzhv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhv;->zzgN()V

    :cond_0
    return-void
.end method

.method public zzh(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhx;->zzKC:Lcom/google/android/gms/internal/zzhy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhx;->zzKC:Lcom/google/android/gms/internal/zzhy;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/zze;->zzp(Lcom/google/android/gms/dynamic/zzd;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzhy;->zzax(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public zzi(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhx;->zzKK:Lcom/google/android/gms/internal/zzhw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhx;->zzKK:Lcom/google/android/gms/internal/zzhw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhw;->onRewardedVideoAdOpened()V

    :cond_0
    return-void
.end method

.method public zzj(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhx;->zzKK:Lcom/google/android/gms/internal/zzhw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhx;->zzKK:Lcom/google/android/gms/internal/zzhw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhw;->onRewardedVideoStarted()V

    :cond_0
    return-void
.end method

.method public zzk(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhx;->zzKK:Lcom/google/android/gms/internal/zzhw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhx;->zzKK:Lcom/google/android/gms/internal/zzhw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhw;->onRewardedVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public zzl(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhx;->zzKK:Lcom/google/android/gms/internal/zzhw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhx;->zzKK:Lcom/google/android/gms/internal/zzhw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhw;->zzgM()V

    :cond_0
    return-void
.end method

.method public zzm(Lcom/google/android/gms/dynamic/zzd;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhx;->zzKK:Lcom/google/android/gms/internal/zzhw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhx;->zzKK:Lcom/google/android/gms/internal/zzhw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzhw;->onRewardedVideoAdLeftApplication()V

    :cond_0
    return-void
.end method
