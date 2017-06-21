.class public Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$GeoPlaceFragment$$Lambda$2;
.super Ljava/lang/Object;
.source "GeoPlaceFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeoPlaceFragment$$Lambda$2"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;)V
    .locals 0
    .param p1, "geoPlaceFragment"    # Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$GeoPlaceFragment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;

    .line 311
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;)Lcom/google/android/gms/maps/OnMapReadyCallback;
    .locals 1
    .param p0, "geoPlaceFragment"    # Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;

    .prologue
    .line 314
    new-instance v0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$GeoPlaceFragment$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$GeoPlaceFragment$$Lambda$2;-><init>(Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;)V

    return-object v0
.end method


# virtual methods
.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1
    .param p1, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$GeoPlaceFragment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->lambda$onViewCreated$396(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 319
    return-void
.end method
