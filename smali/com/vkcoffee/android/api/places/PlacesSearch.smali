.class public Lcom/vkcoffee/android/api/places/PlacesSearch;
.super Lcom/vkcoffee/android/api/ListAPIRequest;
.source "PlacesSearch.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/ListAPIRequest",
        "<",
        "Lcom/vkcoffee/android/GeoPlace;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(DDILjava/lang/String;)V
    .locals 3
    .param p1, "lat"    # D
    .param p3, "lon"    # D
    .param p5, "radius"    # I
    .param p6, "query"    # Ljava/lang/String;

    .prologue
    .line 9
    const-string/jumbo v0, "places.search"

    const-class v1, Lcom/vkcoffee/android/GeoPlace;

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/api/ListAPIRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 10
    const-string/jumbo v0, "latitude"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/places/PlacesSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 11
    const-string/jumbo v0, "longitude"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/places/PlacesSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 12
    const-string/jumbo v0, "radius"

    invoke-virtual {p0, v0, p5}, Lcom/vkcoffee/android/api/places/PlacesSearch;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 13
    if-eqz p6, :cond_0

    invoke-virtual {p6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 14
    const-string/jumbo v0, "query"

    invoke-virtual {p0, v0, p6}, Lcom/vkcoffee/android/api/places/PlacesSearch;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 16
    :cond_0
    return-void
.end method
