.class public Lcom/vkcoffee/android/fragments/location/CheckInFragment$CheckInFragment$$Lambda$2;
.super Ljava/lang/Object;
.source "CheckInFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/location/CheckInFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckInFragment$$Lambda$2"
.end annotation


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

.field private final arg$2:Lcom/google/android/gms/maps/GoogleMap;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/location/CheckInFragment;Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0
    .param p1, "checkInFragment"    # Lcom/vkcoffee/android/fragments/location/CheckInFragment;
    .param p2, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$CheckInFragment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    .line 592
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$CheckInFragment$$Lambda$2;->arg$2:Lcom/google/android/gms/maps/GoogleMap;

    .line 593
    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/location/CheckInFragment;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;
    .locals 1
    .param p0, "checkInFragment"    # Lcom/vkcoffee/android/fragments/location/CheckInFragment;
    .param p1, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 596
    new-instance v0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$CheckInFragment$$Lambda$2;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$CheckInFragment$$Lambda$2;-><init>(Lcom/vkcoffee/android/fragments/location/CheckInFragment;Lcom/google/android/gms/maps/GoogleMap;)V

    return-object v0
.end method


# virtual methods
.method public onMyLocationChange(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$CheckInFragment$$Lambda$2;->arg$1:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$CheckInFragment$$Lambda$2;->arg$2:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1, p1}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->lambda$null$392(Lcom/google/android/gms/maps/GoogleMap;Landroid/location/Location;)V

    .line 601
    return-void
.end method
