.class public abstract Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;
.super Lcom/google/android/gms/ads/mediation/NativeAdMapper;


# instance fields
.field private zzOo:Lcom/google/android/gms/ads/formats/NativeAd$Image;

.field private zzxW:Ljava/lang/String;

.field private zzxX:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation
.end field

.field private zzxY:Ljava/lang/String;

.field private zzya:Ljava/lang/String;

.field private zzyb:D

.field private zzyc:Ljava/lang/String;

.field private zzyd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/ads/mediation/NativeAdMapper;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBody()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzxY:Ljava/lang/String;

    return-object v0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzya:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeadline()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzxW:Ljava/lang/String;

    return-object v0
.end method

.method public final getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzOo:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    return-object v0
.end method

.method public final getImages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzxX:Ljava/util/List;

    return-object v0
.end method

.method public final getPrice()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzyd:Ljava/lang/String;

    return-object v0
.end method

.method public final getStarRating()D
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzyb:D

    return-wide v0
.end method

.method public final getStore()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzyc:Ljava/lang/String;

    return-object v0
.end method

.method public final setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzxY:Ljava/lang/String;

    return-void
.end method

.method public final setCallToAction(Ljava/lang/String;)V
    .locals 0
    .param p1, "callToAction"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzya:Ljava/lang/String;

    return-void
.end method

.method public final setHeadline(Ljava/lang/String;)V
    .locals 0
    .param p1, "headline"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzxW:Ljava/lang/String;

    return-void
.end method

.method public final setIcon(Lcom/google/android/gms/ads/formats/NativeAd$Image;)V
    .locals 0
    .param p1, "icon"    # Lcom/google/android/gms/ads/formats/NativeAd$Image;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzOo:Lcom/google/android/gms/ads/formats/NativeAd$Image;

    return-void
.end method

.method public final setImages(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/ads/formats/NativeAd$Image;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "images":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/ads/formats/NativeAd$Image;>;"
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzxX:Ljava/util/List;

    return-void
.end method

.method public final setPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzyd:Ljava/lang/String;

    return-void
.end method

.method public final setStarRating(D)V
    .locals 1
    .param p1, "starRating"    # D

    .prologue
    iput-wide p1, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzyb:D

    return-void
.end method

.method public final setStore(Ljava/lang/String;)V
    .locals 0
    .param p1, "store"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/ads/mediation/NativeAppInstallAdMapper;->zzyc:Ljava/lang/String;

    return-void
.end method
