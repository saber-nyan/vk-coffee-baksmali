.class public Lcom/google/android/gms/ads/internal/formats/zzd;
.super Lcom/google/android/gms/internal/zzcl$zza;

# interfaces
.implements Lcom/google/android/gms/ads/internal/formats/zzh$zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private mExtras:Landroid/os/Bundle;

.field private zzpV:Ljava/lang/Object;

.field private zzxW:Ljava/lang/String;

.field private zzxX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/internal/formats/zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzxY:Ljava/lang/String;

.field private zzxZ:Lcom/google/android/gms/internal/zzch;

.field private zzya:Ljava/lang/String;

.field private zzyb:D

.field private zzyc:Ljava/lang/String;

.field private zzyd:Ljava/lang/String;

.field private zzye:Lcom/google/android/gms/ads/internal/formats/zza;

.field private zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/google/android/gms/internal/zzch;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/internal/formats/zza;Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzcl$zza;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzpV:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzxW:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzxX:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzxY:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzxZ:Lcom/google/android/gms/internal/zzch;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzya:Ljava/lang/String;

    iput-wide p6, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzyb:D

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzyc:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzyd:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzye:Lcom/google/android/gms/ads/internal/formats/zza;

    iput-object p11, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->mExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzxW:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzxX:Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzxY:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzxZ:Lcom/google/android/gms/internal/zzch;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzya:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzyb:D

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzyc:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzyd:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzye:Lcom/google/android/gms/ads/internal/formats/zza;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->mExtras:Landroid/os/Bundle;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzpV:Ljava/lang/Object;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;

    return-void
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzxY:Ljava/lang/String;

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzya:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomTemplateId()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHeadline()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzxW:Ljava/lang/String;

    return-object v0
.end method

.method public getImages()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzxX:Ljava/util/List;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzyd:Ljava/lang/String;

    return-object v0
.end method

.method public getStarRating()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzyb:D

    return-wide v0
.end method

.method public getStore()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzyc:Ljava/lang/String;

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/ads/internal/formats/zzh;)V
    .locals 2

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzpV:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zzdK()Lcom/google/android/gms/internal/zzch;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzxZ:Lcom/google/android/gms/internal/zzch;

    return-object v0
.end method

.method public zzdL()Lcom/google/android/gms/dynamic/zzd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzyf:Lcom/google/android/gms/ads/internal/formats/zzh;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zze;->zzC(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/zzd;

    move-result-object v0

    return-object v0
.end method

.method public zzdM()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "2"

    return-object v0
.end method

.method public zzdN()Lcom/google/android/gms/ads/internal/formats/zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/formats/zzd;->zzye:Lcom/google/android/gms/ads/internal/formats/zza;

    return-object v0
.end method
