.class Lcom/vkcoffee/android/fragments/location/CheckInFragment$1;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "CheckInFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/location/CheckInFragment;->doLoadData(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/data/VKList",
        "<",
        "Lcom/vkcoffee/android/GeoPlace;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/location/CheckInFragment;Landroid/app/Fragment;)V
    .locals 0
    .param p2, "$anonymous0"    # Landroid/app/Fragment;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$1;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    .line 323
    invoke-direct {p0, p2}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>(Landroid/app/Fragment;)V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2

    .prologue
    .line 341
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    invoke-super {p0, p1}, Lcom/vkcoffee/android/api/SimpleCallback;->fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V

    .line 342
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$1;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->access$0(Lcom/vkcoffee/android/fragments/location/CheckInFragment;Lme/grishka/appkit/api/APIRequest;)V

    .line 343
    return-void
.end method

.method public success(Lcom/vkcoffee/android/data/VKList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/data/VKList",
            "<",
            "Lcom/vkcoffee/android/GeoPlace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p1, "result":Lcom/vkcoffee/android/data/VKList;, "Lcom/vkcoffee/android/data/VKList<Lcom/vkcoffee/android/GeoPlace;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$1;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->access$0(Lcom/vkcoffee/android/fragments/location/CheckInFragment;Lme/grishka/appkit/api/APIRequest;)V

    .line 326
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$1;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    invoke-static {v0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->access$1(Lcom/vkcoffee/android/fragments/location/CheckInFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 327
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$1;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->access$2(Lcom/vkcoffee/android/fragments/location/CheckInFragment;Ljava/util/List;Z)V

    .line 328
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$1;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$1;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mNearLocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 330
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$1;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mNearLocations:Ljava/util/List;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$1;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mCurrentLocation:Lcom/vkcoffee/android/GeoPlace;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$1;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mNearLocations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 337
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$1;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->updateList()V

    .line 338
    return-void

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$1;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mSearchLocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 334
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$1;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mSearchLocations:Ljava/util/List;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$1;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    iget-object v1, v1, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mAddPlace:Lcom/vkcoffee/android/GeoPlace;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$1;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    iget-object v0, v0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mSearchLocations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/data/VKList;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$1;->success(Lcom/vkcoffee/android/data/VKList;)V

    return-void
.end method
