.class public Lcom/google/android/gms/location/places/internal/zzr;
.super Lcom/google/android/gms/location/places/internal/zzt;

# interfaces
.implements Lcom/google/android/gms/location/places/Place;


# instance fields
.field private final zzaPH:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;ILandroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/zzt;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V

    const-string/jumbo v0, "place_id"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzr;->zzG(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/location/places/internal/zzr;->zzaPH:Ljava/lang/String;

    return-void
.end method

.method private zzzA()Lcom/google/android/gms/location/places/internal/PlaceImpl;
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;-><init>()V

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzr;->getAddress()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzeo(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzr;->zzzq()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzy(Ljava/util/List;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzr;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzem(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzr;->zzzr()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzan(Z)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzr;->getLatLng()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zza(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzr;->zzzo()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzf(F)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzr;->getName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzen(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzr;->getPhoneNumber()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzep(Ljava/lang/String;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzr;->getPriceLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzhX(I)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzr;->getRating()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzg(F)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzr;->getPlaceTypes()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzx(Ljava/util/List;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzr;->getViewport()Lcom/google/android/gms/maps/model/LatLngBounds;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zza(Lcom/google/android/gms/maps/model/LatLngBounds;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzr;->getWebsiteUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzo(Landroid/net/Uri;)Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/location/places/internal/PlaceImpl$zza;->zzzx()Lcom/google/android/gms/location/places/internal/PlaceImpl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzr;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/places/internal/PlaceImpl;->setLocale(Ljava/util/Locale;)V

    return-object v0
.end method

.method private zzzq()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "place_attributions"

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzr;->zzb(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic freeze()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/location/places/internal/zzr;->zzzw()Lcom/google/android/gms/location/places/Place;

    move-result-object v0

    return-object v0
.end method

.method public getAddress()Ljava/lang/CharSequence;
    .locals 2

    const-string/jumbo v0, "place_address"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzr;->zzG(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributions()Ljava/lang/CharSequence;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzr;->zzzq()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/location/places/internal/zzc;->zzj(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/internal/zzr;->zzaPH:Ljava/lang/String;

    return-object v0
.end method

.method public getLatLng()Lcom/google/android/gms/maps/model/LatLng;
    .locals 2

    const-string/jumbo v0, "place_lat_lng"

    sget-object v1, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Lcom/google/android/gms/maps/model/zze;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzr;->zza(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 2

    const-string/jumbo v0, "place_locale"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzr;->zzG(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method public getName()Ljava/lang/CharSequence;
    .locals 2

    const-string/jumbo v0, "place_name"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzr;->zzG(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/CharSequence;
    .locals 2

    const-string/jumbo v0, "place_phone_number"

    const-string/jumbo v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzr;->zzG(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlaceTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "place_types"

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzr;->zza(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPriceLevel()I
    .locals 2

    const-string/jumbo v0, "place_price_level"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzr;->zzz(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getRating()F
    .locals 2

    const-string/jumbo v0, "place_rating"

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzr;->zzb(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getViewport()Lcom/google/android/gms/maps/model/LatLngBounds;
    .locals 2

    const-string/jumbo v0, "place_viewport"

    sget-object v1, Lcom/google/android/gms/maps/model/LatLngBounds;->CREATOR:Lcom/google/android/gms/maps/model/zzd;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzr;->zza(Ljava/lang/String;Landroid/os/Parcelable$Creator;)Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getWebsiteUri()Landroid/net/Uri;
    .locals 2

    const/4 v0, 0x0

    const-string/jumbo v1, "place_website_uri"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/location/places/internal/zzr;->zzG(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public zzzo()F
    .locals 2

    const-string/jumbo v0, "place_level_number"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzr;->zzb(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public zzzr()Z
    .locals 2

    const-string/jumbo v0, "place_is_permanently_closed"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/location/places/internal/zzr;->zzl(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public zzzw()Lcom/google/android/gms/location/places/Place;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/location/places/internal/zzr;->zzzA()Lcom/google/android/gms/location/places/internal/PlaceImpl;

    move-result-object v0

    return-object v0
.end method
