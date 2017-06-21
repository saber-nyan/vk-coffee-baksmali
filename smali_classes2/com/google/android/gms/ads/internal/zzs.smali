.class public final Lcom/google/android/gms/ads/internal/zzs;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/internal/zzs$zza;
    }
.end annotation


# instance fields
.field public final context:Landroid/content/Context;

.field zzql:Z

.field zzrA:Lcom/google/android/gms/internal/zzcs;

.field zzrB:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzct;",
            ">;"
        }
    .end annotation
.end field

.field zzrC:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzcu;",
            ">;"
        }
    .end annotation
.end field

.field zzrD:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field zzrE:Lcom/google/android/gms/internal/zzcf;

.field zzrF:Lcom/google/android/gms/ads/internal/reward/client/zzd;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private zzrG:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field zzrH:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field zzrI:Lcom/google/android/gms/ads/internal/purchase/zzk;

.field public zzrJ:Lcom/google/android/gms/internal/zzik;

.field zzrK:Landroid/view/View;

.field public zzrL:I

.field zzrM:Z

.field private zzrN:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzig;",
            ">;"
        }
    .end annotation
.end field

.field private zzrO:I

.field private zzrP:I

.field private zzrQ:Lcom/google/android/gms/internal/zziz;

.field private zzrR:Z

.field private zzrS:Z

.field private zzrT:Z

.field final zzri:Ljava/lang/String;

.field public zzrj:Ljava/lang/String;

.field final zzrk:Lcom/google/android/gms/internal/zzan;

.field public final zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field zzrm:Lcom/google/android/gms/ads/internal/zzs$zza;

.field public zzrn:Lcom/google/android/gms/internal/zzim;

.field public zzro:Lcom/google/android/gms/internal/zzit;

.field public zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

.field public zzrq:Lcom/google/android/gms/internal/zzif;

.field public zzrr:Lcom/google/android/gms/internal/zzif$zza;

.field public zzrs:Lcom/google/android/gms/internal/zzig;

.field zzrt:Lcom/google/android/gms/ads/internal/client/zzp;

.field zzru:Lcom/google/android/gms/ads/internal/client/zzq;

.field zzrv:Lcom/google/android/gms/ads/internal/client/zzw;

.field zzrw:Lcom/google/android/gms/ads/internal/client/zzx;

.field zzrx:Lcom/google/android/gms/internal/zzgd;

.field zzry:Lcom/google/android/gms/internal/zzgh;

.field zzrz:Lcom/google/android/gms/internal/zzcr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzs;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzan;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/client/AdSizeParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/zzan;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrJ:Lcom/google/android/gms/internal/zzik;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrK:Landroid/view/View;

    iput v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrL:I

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrM:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzql:Z

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrN:Ljava/util/HashSet;

    iput v1, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrO:I

    iput v1, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrP:I

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrR:Z

    iput-boolean v3, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrS:Z

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrT:Z

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbt;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbF()Lcom/google/android/gms/internal/zzih;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzih;->zzhb()Lcom/google/android/gms/internal/zzbv;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzbt;->zzds()Ljava/util/List;

    move-result-object v0

    iget v1, p4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzMZ:I

    if-eqz v1, :cond_0

    iget v1, p4, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->zzMZ:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbF()Lcom/google/android/gms/internal/zzih;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzih;->zzhb()Lcom/google/android/gms/internal/zzbv;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbv;->zzb(Ljava/util/List;)V

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzri:Ljava/lang/String;

    iget-boolean v0, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzui:Z

    if-nez v0, :cond_2

    iget-boolean v0, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzuk:Z

    if-eqz v0, :cond_3

    :cond_2
    iput-object v2, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrm:Lcom/google/android/gms/ads/internal/zzs$zza;

    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrj:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrl:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    if-eqz p5, :cond_4

    :goto_1
    iput-object p5, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrk:Lcom/google/android/gms/internal/zzan;

    new-instance v0, Lcom/google/android/gms/internal/zziz;

    const-wide/16 v2, 0xc8

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/zziz;-><init>(J)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrQ:Lcom/google/android/gms/internal/zziz;

    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    invoke-direct {v0}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrC:Landroid/support/v4/util/SimpleArrayMap;

    return-void

    :cond_3
    new-instance v0, Lcom/google/android/gms/ads/internal/zzs$zza;

    invoke-direct {v0, p1, p0, p0}, Lcom/google/android/gms/ads/internal/zzs$zza;-><init>(Landroid/content/Context;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrm:Lcom/google/android/gms/ads/internal/zzs$zza;

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrm:Lcom/google/android/gms/ads/internal/zzs$zza;

    iget v1, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->widthPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzs$zza;->setMinimumWidth(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrm:Lcom/google/android/gms/ads/internal/zzs$zza;

    iget v1, p2, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->heightPixels:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzs$zza;->setMinimumHeight(I)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrm:Lcom/google/android/gms/ads/internal/zzs$zza;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/internal/zzs$zza;->setVisibility(I)V

    goto :goto_0

    :cond_4
    new-instance p5, Lcom/google/android/gms/internal/zzan;

    new-instance v0, Lcom/google/android/gms/ads/internal/zzh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/ads/internal/zzh;-><init>(Lcom/google/android/gms/ads/internal/zzs;)V

    invoke-direct {p5, v0}, Lcom/google/android/gms/internal/zzan;-><init>(Lcom/google/android/gms/internal/zzaj;)V

    goto :goto_1
.end method

.method private zzbZ()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrm:Lcom/google/android/gms/ads/internal/zzs$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzs$zza;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrm:Lcom/google/android/gms/ads/internal/zzs$zza;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/ads/internal/zzs$zza;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v0, v1, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eq v0, v3, :cond_2

    iput-boolean v4, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrR:Z

    :cond_2
    iget v0, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    if-eq v0, v1, :cond_0

    iput-boolean v4, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrS:Z

    goto :goto_0
.end method

.method private zze(Z)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrm:Lcom/google/android/gms/ads/internal/zzs$zza;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzif;->zzED:Lcom/google/android/gms/internal/zzjp;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrQ:Lcom/google/android/gms/internal/zziz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zziz;->tryAcquire()Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzif;->zzED:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzjp;->zzhU()Lcom/google/android/gms/internal/zzjq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzjq;->zzcv()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrm:Lcom/google/android/gms/ads/internal/zzs$zza;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/ads/internal/zzs$zza;->getLocationOnScreen([I)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzn;->zzcS()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    aget v5, v2, v1

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzc(Landroid/content/Context;I)I

    move-result v3

    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzn;->zzcS()Lcom/google/android/gms/ads/internal/util/client/zza;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/ads/internal/zzs;->context:Landroid/content/Context;

    aget v2, v2, v0

    invoke-virtual {v4, v5, v2}, Lcom/google/android/gms/ads/internal/util/client/zza;->zzc(Landroid/content/Context;I)I

    move-result v2

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrO:I

    if-ne v3, v4, :cond_3

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrP:I

    if-eq v2, v4, :cond_4

    :cond_3
    iput v3, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrO:I

    iput v2, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrP:I

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzif;->zzED:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v2}, Lcom/google/android/gms/internal/zzjp;->zzhU()Lcom/google/android/gms/internal/zzjq;

    move-result-object v2

    iget v3, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrO:I

    iget v4, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrP:I

    if-nez p1, :cond_5

    :goto_1
    invoke-virtual {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzjq;->zza(IIZ)V

    :cond_4
    invoke-direct {p0}, Lcom/google/android/gms/ads/internal/zzs;->zzbZ()V

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzs;->zzbY()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzs;->zzru:Lcom/google/android/gms/ads/internal/client/zzq;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrv:Lcom/google/android/gms/ads/internal/client/zzw;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzs;->zzry:Lcom/google/android/gms/internal/zzgh;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrx:Lcom/google/android/gms/internal/zzgd;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrE:Lcom/google/android/gms/internal/zzcf;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrw:Lcom/google/android/gms/ads/internal/client/zzx;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/ads/internal/zzs;->zzf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrm:Lcom/google/android/gms/ads/internal/zzs$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrm:Lcom/google/android/gms/ads/internal/zzs$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzs$zza;->removeAllViews()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzs;->zzbT()V

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzs;->zzbV()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    return-void
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrG:Ljava/lang/String;

    return-object v0
.end method

.method public onGlobalLayout()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzs;->zze(Z)V

    return-void
.end method

.method public onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/ads/internal/zzs;->zze(Z)V

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrT:Z

    return-void
.end method

.method setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrG:Ljava/lang/String;

    return-void
.end method

.method public zza(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzig;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrN:Ljava/util/HashSet;

    return-void
.end method

.method public zzbS()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Lcom/google/android/gms/internal/zzig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrN:Ljava/util/HashSet;

    return-object v0
.end method

.method public zzbT()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif;->zzED:Lcom/google/android/gms/internal/zzjp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif;->zzED:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->destroy()V

    :cond_0
    return-void
.end method

.method public zzbU()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif;->zzED:Lcom/google/android/gms/internal/zzjp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif;->zzED:Lcom/google/android/gms/internal/zzjp;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjp;->stopLoading()V

    :cond_0
    return-void
.end method

.method public zzbV()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif;->zzCq:Lcom/google/android/gms/internal/zzey;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzif;->zzCq:Lcom/google/android/gms/internal/zzey;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzey;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v0, "Could not destroy mediation adapter."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzin;->zzaK(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public zzbW()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrL:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzbX()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrL:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzbY()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrm:Lcom/google/android/gms/ads/internal/zzs$zza;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrm:Lcom/google/android/gms/ads/internal/zzs$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/zzs$zza;->zzbY()V

    :cond_0
    return-void
.end method

.method public zzca()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrR:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrS:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrR:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrT:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "top-scrollable"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "top-locked"

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrS:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrT:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "bottom-scrollable"

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "bottom-locked"

    goto :goto_0

    :cond_4
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public zzcb()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrs:Lcom/google/android/gms/internal/zzig;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzif;->zzKY:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzig;->zzl(J)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrs:Lcom/google/android/gms/internal/zzig;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-wide v2, v1, Lcom/google/android/gms/internal/zzif;->zzKZ:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzig;->zzm(J)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrs:Lcom/google/android/gms/internal/zzig;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrp:Lcom/google/android/gms/ads/internal/client/AdSizeParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/client/AdSizeParcel;->zzui:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzig;->zzz(Z)V

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrs:Lcom/google/android/gms/internal/zzig;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/zzif;->zzHT:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzig;->zzA(Z)V

    return-void
.end method

.method public zzf(Z)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrL:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/ads/internal/zzs;->zzbU()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrn:Lcom/google/android/gms/internal/zzim;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrn:Lcom/google/android/gms/internal/zzim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzim;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzro:Lcom/google/android/gms/internal/zzit;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzro:Lcom/google/android/gms/internal/zzit;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzit;->cancel()V

    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/zzs;->zzrq:Lcom/google/android/gms/internal/zzif;

    :cond_3
    return-void
.end method
