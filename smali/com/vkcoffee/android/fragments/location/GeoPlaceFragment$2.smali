.class Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$2;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "GeoPlaceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->doLoadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/api/places/PlacesGetInfo$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Fragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$2;->this$0:Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;

    .line 201
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/api/places/PlacesGetInfo$Result;)V
    .locals 2
    .param p1, "result"    # Lcom/vkcoffee/android/api/places/PlacesGetInfo$Result;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$2;->this$0:Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->access$0(Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;Lme/grishka/appkit/api/APIRequest;)V

    .line 204
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$2;->this$0:Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;

    iget-object v1, p1, Lcom/vkcoffee/android/api/places/PlacesGetInfo$Result;->place:Lcom/vkcoffee/android/GeoPlace;

    iput-object v1, v0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mPlace:Lcom/vkcoffee/android/GeoPlace;

    .line 205
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$2;->this$0:Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;

    iget-object v1, p1, Lcom/vkcoffee/android/api/places/PlacesGetInfo$Result;->userPhotos:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mUserPhotos:Ljava/util/List;

    .line 206
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$2;->this$0:Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;

    iget-object v1, p1, Lcom/vkcoffee/android/api/places/PlacesGetInfo$Result;->groupStatus:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mStatusText:Ljava/lang/String;

    .line 207
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$2;->this$0:Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;

    iget-object v1, p1, Lcom/vkcoffee/android/api/places/PlacesGetInfo$Result;->groupPhoto:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->mPhotoURL:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$2;->this$0:Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->invalidate()V

    .line 209
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$2;->this$0:Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->dataLoaded()V

    .line 210
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$2;->this$0:Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;->access$1(Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment;)V

    .line 211
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/places/PlacesGetInfo$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/location/GeoPlaceFragment$2;->success(Lcom/vkcoffee/android/api/places/PlacesGetInfo$Result;)V

    return-void
.end method
