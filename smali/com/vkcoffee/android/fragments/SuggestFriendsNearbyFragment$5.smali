.class Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$5;
.super Ljava/lang/Object;
.source "SuggestFriendsNearbyFragment.java"

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->startUpdatingLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$5;->this$0:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 188
    sget-object v0, Lcom/google/android/gms/location/LocationServices;->FusedLocationApi:Lcom/google/android/gms/location/FusedLocationProviderApi;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$5;->this$0:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;

    invoke-static {v1}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->access$100(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;)Lcom/google/android/gms/common/api/GoogleApiClient;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v2

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    move-result-object v2

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment$5;->this$0:Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;

    invoke-static {v3}, Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;->access$300(Lcom/vkcoffee/android/fragments/SuggestFriendsNearbyFragment;)Lcom/google/android/gms/location/LocationListener;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/location/FusedLocationProviderApi;->requestLocationUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)Lcom/google/android/gms/common/api/PendingResult;

    .line 189
    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 194
    return-void
.end method
