.class public Lcom/google/android/gms/ads/internal/zze;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/zze$zzb;,
        Lcom/google/android/gms/ads/internal/zze$zza;
    }
.end annotation


# instance fields
.field private zzpA:Z

.field private zzpB:Z

.field private zzpz:Lcom/google/android/gms/ads/internal/zze$zza;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/android/gms/internal/zzbt;->zzvI:Lcom/google/android/gms/internal/zzbp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzpB:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/ads/internal/zze;->zzpB:Z

    return-void
.end method


# virtual methods
.method public recordClick()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzpA:Z

    return-void
.end method

.method public zza(Lcom/google/android/gms/ads/internal/zze$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zze;->zzpz:Lcom/google/android/gms/ads/internal/zze$zza;

    return-void
.end method

.method public zzbh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzpB:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzpA:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzq(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "Action was blocked because no click was detected."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaI(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzpz:Lcom/google/android/gms/ads/internal/zze$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zze;->zzpz:Lcom/google/android/gms/ads/internal/zze$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/internal/zze$zza;->zzr(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
