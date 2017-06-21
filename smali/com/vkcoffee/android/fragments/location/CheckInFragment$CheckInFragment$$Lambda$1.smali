.class public Lcom/vkcoffee/android/fragments/location/CheckInFragment$CheckInFragment$$Lambda$1;
.super Ljava/lang/Object;
.source "CheckInFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/location/CheckInFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckInFragment$$Lambda$1"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/location/CheckInFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/location/CheckInFragment;)V
    .locals 0
    .param p1, "checkInFragment"    # Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    .prologue
    .line 606
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 607
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$CheckInFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    .line 608
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/location/CheckInFragment;)Lcom/google/android/gms/maps/OnMapReadyCallback;
    .locals 1
    .param p0, "checkInFragment"    # Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    .prologue
    .line 611
    new-instance v0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$CheckInFragment$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$CheckInFragment$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/location/CheckInFragment;)V

    return-object v0
.end method


# virtual methods
.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1
    .param p1, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 615
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$CheckInFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->lambda$initMap$393(Lcom/google/android/gms/maps/GoogleMap;)V

    .line 616
    return-void
.end method
