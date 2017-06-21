.class Lcom/vkcoffee/android/fragments/location/CheckInFragment$6;
.super Lcom/vkcoffee/android/background/AsyncTask;
.source "CheckInFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/location/CheckInFragment;->loadPlace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/background/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/location/CheckInFragment;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$6;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    .line 538
    invoke-direct {p0}, Lcom/vkcoffee/android/background/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$6;->doInBackground([Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p1, "args"    # [Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 540
    new-instance v1, Landroid/location/Geocoder;

    aget-object v2, p1, v9

    invoke-direct {v1, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$6;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    iget-object v2, v2, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$6;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    iget-object v4, v4, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Address;

    .line 541
    .local v0, "address":Landroid/location/Address;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 542
    .local v8, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 543
    invoke-virtual {v0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_0
    invoke-virtual {v0}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 546
    invoke-virtual {v0}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    :cond_1
    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 549
    invoke-virtual {v0}, Landroid/location/Address;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    :cond_2
    const-string v1, ", "

    invoke-static {v1, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    .line 552
    .local v7, "finalResult":Ljava/lang/String;
    if-eqz v7, :cond_3

    const-string v1, "null"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 553
    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$6;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    const v2, 0x7f080293

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 555
    .end local v7    # "finalResult":Ljava/lang/String;
    :cond_4
    return-object v7
.end method

.method protected onError(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 565
    invoke-super {p0, p1}, Lcom/vkcoffee/android/background/AsyncTask;->onError(Ljava/lang/Throwable;)V

    .line 566
    const-string v0, "vk"

    invoke-static {v0, p1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 567
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/location/CheckInFragment$6;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 559
    invoke-super {p0, p1}, Lcom/vkcoffee/android/background/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 560
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$6;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    iput-object p1, v0, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->mAddress:Ljava/lang/String;

    .line 561
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/location/CheckInFragment$6;->this$0:Lcom/vkcoffee/android/fragments/location/CheckInFragment;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/location/CheckInFragment;->updateList()V

    .line 562
    return-void
.end method
