.class public final Lcom/google/android/gms/internal/zzfi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/NativeMediationAdRequest;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzhb;
.end annotation


# instance fields
.field private final zzCH:I

.field private final zzbf:Ljava/util/Date;

.field private final zzbh:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzbi:Z

.field private final zzbj:Landroid/location/Location;

.field private final zzpP:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

.field private final zzpQ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zztT:I

.field private final zzuf:Z


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZILcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;Ljava/util/List;Z)V
    .locals 0
    .param p1    # Ljava/util/Date;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/location/Location;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "ZI",
            "Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzfi;->zzbf:Ljava/util/Date;

    iput p2, p0, Lcom/google/android/gms/internal/zzfi;->zztT:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzfi;->zzbh:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzfi;->zzbj:Landroid/location/Location;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzfi;->zzbi:Z

    iput p6, p0, Lcom/google/android/gms/internal/zzfi;->zzCH:I

    iput-object p7, p0, Lcom/google/android/gms/internal/zzfi;->zzpP:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzfi;->zzpQ:Ljava/util/List;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/zzfi;->zzuf:Z

    return-void
.end method


# virtual methods
.method public getBirthday()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi;->zzbf:Ljava/util/Date;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzfi;->zztT:I

    return v0
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi;->zzbh:Ljava/util/Set;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi;->zzbj:Landroid/location/Location;

    return-object v0
.end method

.method public getNativeAdOptions()Lcom/google/android/gms/ads/formats/NativeAdOptions;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi;->zzpP:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfi;->zzpP:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzyA:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setReturnUrlsForImageAssets(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfi;->zzpP:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget v1, v1, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzyB:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setImageOrientation(I)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzfi;->zzpP:Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/formats/NativeAdOptionsParcel;->zzyC:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->setRequestMultipleImages(Z)Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/formats/NativeAdOptions$Builder;->build()Lcom/google/android/gms/ads/formats/NativeAdOptions;

    move-result-object v0

    goto :goto_0
.end method

.method public isAppInstallAdRequested()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi;->zzpQ:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi;->zzpQ:Ljava/util/List;

    const-string/jumbo v1, "2"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContentAdRequested()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi;->zzpQ:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzfi;->zzpQ:Ljava/util/List;

    const-string/jumbo v1, "1"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDesignedForFamilies()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfi;->zzuf:Z

    return v0
.end method

.method public isTesting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzfi;->zzbi:Z

    return v0
.end method

.method public taggedForChildDirectedTreatment()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzfi;->zzCH:I

    return v0
.end method
