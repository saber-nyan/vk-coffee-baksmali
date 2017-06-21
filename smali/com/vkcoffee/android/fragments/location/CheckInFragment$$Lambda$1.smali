.class final synthetic Lcom/vkcoffee/android/fragments/location/CheckInFragment$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# instance fields
.field private final arg$1:Lcom/vkcoffee/android/fragments/location/CheckInFragment;


# direct methods
.method private constructor <init>(Lcom/vkcoffee/android/fragments/location/CheckInFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    return-void
.end method

.method public static lambdaFactory$(Lcom/vkcoffee/android/fragments/location/CheckInFragment;)Lcom/google/android/gms/maps/OnMapReadyCallback;
    .locals 1

    new-instance v0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$$Lambda$1;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$$Lambda$1;-><init>(Lcom/vkcoffee/android/fragments/location/CheckInFragment;)V

    return-object v0
.end method


# virtual methods
.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$$Lambda$1;->arg$1:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->lambda$initMap$393(Lcom/google/android/gms/maps/GoogleMap;)V

    return-void
.end method
