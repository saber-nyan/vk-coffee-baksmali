.class Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$1;
.super Lcom/google/android/gms/maps/MapView;
.source "GeoPlaceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/content/Context;
    .param p3, "$anonymous1"    # Lcom/google/android/gms/maps/GoogleMapOptions;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$1;->this$0:Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;

    .line 135
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method
