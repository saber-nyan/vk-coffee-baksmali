.class public final Lcom/google/android/gms/internal/zzhg;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private mOrientation:I

.field private final zzCu:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

.field private zzGK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzJA:Z

.field private zzJB:I

.field private zzJC:Ljava/lang/String;

.field private zzJD:Z

.field private zzJE:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

.field private zzJF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzJG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzJH:Z

.field private zzJn:Ljava/lang/String;

.field private zzJo:Ljava/lang/String;

.field private zzJp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzJq:Ljava/lang/String;

.field private zzJr:Ljava/lang/String;

.field private zzJs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private zzJt:J

.field private zzJu:Z

.field private final zzJv:J

.field private zzJw:J

.field private zzJx:Z

.field private zzJy:Z

.field private zzJz:Z

.field private zzuS:Z

.field private zzxY:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;)V
    .locals 4

    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhg;->zzJt:J

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzhg;->zzJu:Z

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhg;->zzJv:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/zzhg;->zzJw:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzhg;->mOrientation:I

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzhg;->zzJx:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzhg;->zzJy:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzhg;->zzJz:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJA:Z

    iput v1, p0, Lcom/google/android/gms/internal/zzhg;->zzJB:I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJC:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzhg;->zzJD:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzhg;->zzuS:Z

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzhg;->zzJH:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhg;->zzCu:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    return-void
.end method

.method private zzA(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "X-Afma-Fluid"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzhg;->zzd(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "height"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJD:Z

    :cond_0
    return-void
.end method

.method private zzB(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "X-Afma-Ad-Format"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzhg;->zzd(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "native_express"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhg;->zzuS:Z

    return-void
.end method

.method private zzC(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "X-Afma-Rewards"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzhg;->zzd(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;->zzay(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJE:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    return-void
.end method

.method private zzD(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJF:Ljava/util/List;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "X-Afma-Reward-Video-Start-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzhg;->zzf(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJF:Ljava/util/List;

    goto :goto_0
.end method

.method private zzE(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJG:Ljava/util/List;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "X-Afma-Reward-Video-Complete-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzhg;->zzf(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJG:Ljava/util/List;

    goto :goto_0
.end method

.method private zzF(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJH:Z

    const-string/jumbo v1, "X-Afma-Use-Displayed-Impression"

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/zzhg;->zzg(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJH:Z

    return-void
.end method

.method static zzd(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static zze(Ljava/util/Map;Ljava/lang/String;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Could not parse float from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method static zzf(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzg(Ljava/util/Map;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private zzk(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "X-Afma-Ad-Size"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzhg;->zzd(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJn:Ljava/lang/String;

    return-void
.end method

.method private zzl(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "X-Afma-Click-Tracking-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzhg;->zzf(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJp:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private zzm(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "X-Afma-Debug-Dialog"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJq:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private zzn(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "X-Afma-Tracking-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzhg;->zzf(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJs:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private zzo(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "X-Afma-Interstitial-Timeout"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzhg;->zze(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJt:J

    :cond_0
    return-void
.end method

.method private zzp(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "X-Afma-ActiveView"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzhg;->zzd(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJr:Ljava/lang/String;

    return-void
.end method

.method private zzq(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "X-Afma-Ad-Format"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzhg;->zzd(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "native"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJy:Z

    return-void
.end method

.method private zzr(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJx:Z

    const-string/jumbo v1, "X-Afma-Custom-Rendering-Allowed"

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/zzhg;->zzg(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJx:Z

    return-void
.end method

.method private zzs(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJu:Z

    const-string/jumbo v1, "X-Afma-Mediation"

    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/zzhg;->zzg(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJu:Z

    return-void
.end method

.method private zzt(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "X-Afma-Manual-Tracking-Urls"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzhg;->zzf(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzGK:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private zzu(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "X-Afma-Refresh-Rate"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzhg;->zze(Ljava/util/Map;Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJw:J

    :cond_0
    return-void
.end method

.method private zzv(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "X-Afma-Orientation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "portrait"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbE()Lcom/google/android/gms/internal/zzis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzis;->zzhw()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzhg;->mOrientation:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v1, "landscape"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbE()Lcom/google/android/gms/internal/zzis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzis;->zzhv()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzhg;->mOrientation:I

    goto :goto_0
.end method

.method private zzw(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "X-Afma-Use-HTTPS"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJz:Z

    :cond_0
    return-void
.end method

.method private zzx(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "X-Afma-Content-Url-Opted-Out"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJA:Z

    :cond_0
    return-void
.end method

.method private zzy(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const-string/jumbo v0, "X-Afma-OAuth-Token-Status"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/zzhg;->zzf(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput v3, p0, Lcom/google/android/gms/internal/zzhg;->zzJB:I

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "Clear"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJB:I

    goto :goto_0

    :cond_3
    const-string/jumbo v2, "No-Op"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput v3, p0, Lcom/google/android/gms/internal/zzhg;->zzJB:I

    goto :goto_0
.end method

.method private zzz(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string/jumbo v0, "X-Afma-Gws-Query-Id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzhg;->zzJC:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public zzb(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzhg;->zzJo:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzhg;->zzxY:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/zzhg;->zzj(Ljava/util/Map;)V

    return-void
.end method

.method public zzj(J)Lcom/google/android/gms/ads/internal/request/AdResponseParcel;
    .locals 35

    new-instance v2, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/gms/internal/zzhg;->zzCu:Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/gms/internal/zzhg;->zzJo:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/gms/internal/zzhg;->zzxY:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/android/gms/internal/zzhg;->zzJp:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/android/gms/internal/zzhg;->zzJs:Ljava/util/List;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/google/android/gms/internal/zzhg;->zzJt:J

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/google/android/gms/internal/zzhg;->zzJu:Z

    const-wide/16 v11, -0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/android/gms/internal/zzhg;->zzGK:Ljava/util/List;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/google/android/gms/internal/zzhg;->zzJw:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/zzhg;->mOrientation:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhg;->zzJn:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhg;->zzJq:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhg;->zzJr:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzhg;->zzJx:Z

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzhg;->zzJy:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzhg;->zzJz:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzhg;->zzJA:Z

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/gms/internal/zzhg;->zzJB:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhg;->zzJC:Ljava/lang/String;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzhg;->zzJD:Z

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzhg;->zzuS:Z

    move/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhg;->zzJE:Lcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhg;->zzJF:Ljava/util/List;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/gms/internal/zzhg;->zzJG:Ljava/util/List;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/zzhg;->zzJH:Z

    move/from16 v34, v0

    move-wide/from16 v18, p1

    invoke-direct/range {v2 .. v34}, Lcom/google/android/gms/ads/internal/request/AdResponseParcel;-><init>(Lcom/google/android/gms/ads/internal/request/AdRequestInfoParcel;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;JZJLjava/util/List;JILjava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZZILjava/lang/String;ZZLcom/google/android/gms/ads/internal/reward/mediation/client/RewardItemParcel;Ljava/util/List;Ljava/util/List;Z)V

    return-object v2
.end method

.method public zzj(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhg;->zzk(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhg;->zzl(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhg;->zzm(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhg;->zzn(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhg;->zzo(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhg;->zzs(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhg;->zzt(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhg;->zzu(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhg;->zzv(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhg;->zzp(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhg;->zzw(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhg;->zzr(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhg;->zzq(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhg;->zzx(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhg;->zzy(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhg;->zzz(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhg;->zzA(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhg;->zzB(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhg;->zzC(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhg;->zzD(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhg;->zzE(Ljava/util/Map;)V

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzhg;->zzF(Ljava/util/Map;)V

    return-void
.end method
