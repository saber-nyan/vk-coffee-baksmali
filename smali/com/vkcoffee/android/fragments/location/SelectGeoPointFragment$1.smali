.class Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$1;
.super Ljava/lang/Object;
.source "SelectGeoPointFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMarkerDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->initMarker(Lcom/google/android/gms/maps/GoogleMap;DD)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$1;->this$0:Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerDrag(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 225
    return-void
.end method

.method public onMarkerDragEnd(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 2
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$1;->this$0:Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->mSelectedPoint:Lcom/google/android/gms/maps/model/LatLng;

    .line 220
    return-void
.end method

.method public onMarkerDragStart(Lcom/google/android/gms/maps/model/Marker;)V
    .locals 0
    .param p1, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    .line 215
    return-void
.end method
