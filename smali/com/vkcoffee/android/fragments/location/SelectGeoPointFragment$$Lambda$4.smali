.class final synthetic Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;

.field private final arg$2:Lcom/google/android/gms/maps/GoogleMap;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$$Lambda$4;->arg$1:Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$$Lambda$4;->arg$2:Lcom/google/android/gms/maps/GoogleMap;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;Lcom/google/android/gms/maps/GoogleMap;)Lcom/google/android/gms/maps/GoogleMap$OnMyLocationChangeListener;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$$Lambda$4;

    invoke-direct {v0, p0, p1}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$$Lambda$4;-><init>(Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;Lcom/google/android/gms/maps/GoogleMap;)V

    return-object v0
.end method


# virtual methods
.method public onMyLocationChange(Landroid/location/Location;)V
    .locals 2

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$$Lambda$4;->arg$1:Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment$$Lambda$4;->arg$2:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, v1, p1}, Lcom/vkcoffee/android/fragments/location/SelectGeoPointFragment;->lambda$null$397(Lcom/google/android/gms/maps/GoogleMap;Landroid/location/Location;)V

    return-void
.end method
