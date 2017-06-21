.class Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;
.super Ljava/lang/Object;
.source "InfoFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->updateAddress(Lcom/vkcoffee/android/attachments/GeoAttachment;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

.field final synthetic val$att:Lcom/vkcoffee/android/attachments/GeoAttachment;

.field final synthetic val$country:Ljava/lang/String;

.field final synthetic val$progress:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;Ljava/lang/String;Lcom/vkcoffee/android/attachments/GeoAttachment;Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    iput-object p2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->val$country:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->val$att:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iput-object p4, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 398
    :try_start_0
    new-instance v1, Landroid/location/Geocoder;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->val$country:Ljava/lang/String;

    const-string/jumbo v4, "RU"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->val$country:Ljava/lang/String;

    const-string/jumbo v4, "UA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->val$country:Ljava/lang/String;

    const-string/jumbo v4, "BY"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    new-instance v2, Ljava/util/Locale;

    const-string/jumbo v4, "ru"

    const-string/jumbo v5, "RU"

    invoke-direct {v2, v4, v5}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {v1, v3, v2}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;Ljava/util/Locale;)V

    .line 399
    .local v1, "geocoder":Landroid/location/Geocoder;
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->val$att:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-wide v2, v2, Lcom/vkcoffee/android/attachments/GeoAttachment;->lat:D

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->val$att:Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget-wide v4, v4, Lcom/vkcoffee/android/attachments/GeoAttachment;->lon:D

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    .line 400
    .local v0, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 401
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Address;

    invoke-virtual {v2}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v7

    .line 402
    .local v7, "city":Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 403
    new-instance v2, Lcom/vkcoffee/android/api/execute/FindCityByName;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->val$country:Ljava/lang/String;

    invoke-direct {v2, v3, v7}, Lcom/vkcoffee/android/api/execute/FindCityByName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/vkcoffee/android/api/execute/FindCityByName;->execSyncWithResult()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/api/execute/FindCityByName$Result;

    .line 404
    .local v8, "res":Lcom/vkcoffee/android/api/execute/FindCityByName$Result;
    if-eqz v8, :cond_1

    .line 405
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    iget v3, v8, Lcom/vkcoffee/android/api/execute/FindCityByName$Result;->cityID:I

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->access$802(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;I)I

    .line 406
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    iget v3, v8, Lcom/vkcoffee/android/api/execute/FindCityByName$Result;->countryID:I

    invoke-static {v2, v3}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->access$902(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    .end local v0    # "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/location/Address;>;"
    .end local v1    # "geocoder":Landroid/location/Geocoder;
    .end local v7    # "city":Ljava/lang/String;
    .end local v8    # "res":Lcom/vkcoffee/android/api/execute/FindCityByName$Result;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 414
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;->this$0:Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;

    invoke-virtual {v2}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6$1;-><init>(Lcom/vkcoffee/android/fragments/groupadmin/InfoFragment$6;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 424
    :cond_2
    return-void

    .line 398
    :cond_3
    :try_start_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 410
    :catch_0
    move-exception v9

    .line 411
    .local v9, "x":Ljava/lang/Exception;
    const-string/jumbo v2, "vk"

    invoke-static {v2, v9}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
