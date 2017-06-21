.class public Lcom/google/android/gms/internal/zzbu;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private zzsy:Ljava/lang/String;

.field private zzxi:Z

.field private zzxj:Ljava/lang/String;

.field private zzxk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbu;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbu;->zzsy:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbu;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbu;->zzsy:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/zzbt;->zzwg:Lcom/google/android/gms/internal/zzbp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbu;->zzxi:Z

    sget-object v0, Lcom/google/android/gms/internal/zzbt;->zzwh:Lcom/google/android/gms/internal/zzbp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbp;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbu;->zzxj:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbu;->zzxk:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbu;->zzxk:Ljava/util/Map;

    const-string/jumbo v1, "s"

    const-string/jumbo v2, "gmob_sdk"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbu;->zzxk:Ljava/util/Map;

    const-string/jumbo v1, "v"

    const-string/jumbo v2, "3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbu;->zzxk:Ljava/util/Map;

    const-string/jumbo v1, "os"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbu;->zzxk:Ljava/util/Map;

    const-string/jumbo v1, "sdk"

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbu;->zzxk:Ljava/util/Map;

    const-string/jumbo v1, "device"

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbC()Lcom/google/android/gms/internal/zzir;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzir;->zzht()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbu;->zzxk:Ljava/util/Map;

    const-string/jumbo v2, "app"

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzbI()Lcom/google/android/gms/internal/zzhk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbu;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzhk;->zzE(Landroid/content/Context;)Lcom/google/android/gms/internal/zzhj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbu;->zzxk:Ljava/util/Map;

    const-string/jumbo v2, "network_coarse"

    iget v3, v0, Lcom/google/android/gms/internal/zzhj;->zzKc:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbu;->zzxk:Ljava/util/Map;

    const-string/jumbo v2, "network_fine"

    iget v0, v0, Lcom/google/android/gms/internal/zzhj;->zzKd:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method zzcs()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbu;->zzsy:Ljava/lang/String;

    return-object v0
.end method

.method zzdu()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbu;->zzxi:Z

    return v0
.end method

.method zzdv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbu;->zzxj:Ljava/lang/String;

    return-object v0
.end method

.method zzdw()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbu;->zzxk:Ljava/util/Map;

    return-object v0
.end method
