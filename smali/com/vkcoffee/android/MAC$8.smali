.class Lcom/vkcoffee/android/MAC$8;
.super Ljava/lang/Object;
.source "MAC.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/MAC;->addAcc(ILjava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vkcoffee/android/api/Callback",
        "<",
        "Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$currentSECRET:Ljava/lang/String;

.field private final synthetic val$currentSID:Ljava/lang/String;

.field private final synthetic val$currentUID:I

.field private final synthetic val$uid:I


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/vkcoffee/android/MAC$8;->val$currentUID:I

    iput-object p2, p0, Lcom/vkcoffee/android/MAC$8;->val$currentSID:Ljava/lang/String;

    iput-object p3, p0, Lcom/vkcoffee/android/MAC$8;->val$currentSECRET:Ljava/lang/String;

    iput p4, p0, Lcom/vkcoffee/android/MAC$8;->val$uid:I

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 2

    .prologue
    .line 581
    .local p1, "err":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    iget v0, p0, Lcom/vkcoffee/android/MAC$8;->val$currentUID:I

    sput v0, Lcom/vkcoffee/android/Global;->uid:I

    .line 582
    iget-object v0, p0, Lcom/vkcoffee/android/MAC$8;->val$currentSID:Ljava/lang/String;

    sput-object v0, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    .line 583
    iget-object v0, p0, Lcom/vkcoffee/android/MAC$8;->val$currentSECRET:Ljava/lang/String;

    sput-object v0, Lcom/vkcoffee/android/Global;->secret:Ljava/lang/String;

    .line 584
    const-string v0, "vk"

    const-string v1, "Get user info FAILED!"

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;)V
    .locals 5
    .param p1, "r"    # Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;

    .prologue
    .line 567
    iget v1, p0, Lcom/vkcoffee/android/MAC$8;->val$currentUID:I

    sput v1, Lcom/vkcoffee/android/Global;->uid:I

    .line 568
    iget-object v1, p0, Lcom/vkcoffee/android/MAC$8;->val$currentSID:Ljava/lang/String;

    sput-object v1, Lcom/vkcoffee/android/Global;->accessToken:Ljava/lang/String;

    .line 569
    iget-object v1, p0, Lcom/vkcoffee/android/MAC$8;->val$currentSECRET:Ljava/lang/String;

    sput-object v1, Lcom/vkcoffee/android/Global;->secret:Ljava/lang/String;

    .line 570
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "null"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/vkcoffee/android/MAC$8;->val$uid:I

    invoke-static {v3}, Lcom/vkcoffee/android/MAC;->getManipulateID(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 571
    .local v0, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "username"

    iget-object v3, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->name:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "userphoto"

    iget-object v3, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->photo:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "userstatus"

    iget-object v3, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->status:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "usercountry"

    iget v3, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->country:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "usersex"

    iget-boolean v3, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->f:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "intro"

    iget v3, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->intro:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "export_twitter_avail"

    iget-boolean v3, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->exportTwi:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "export_facebook_avail"

    iget-boolean v3, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->exportFb:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "ads_stoplist"

    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->adsFilter:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "allow_buy_votes"

    iget-boolean v3, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->allowBuyVotes:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "support_url"

    iget-object v3, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->supportUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "use_vigo"

    iget-boolean v3, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->useVigo:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vigo_connect_timeout"

    iget v3, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->vigoConnectTimeout:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "vigo_read_timeout"

    iget v3, p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;->vigoReadTimeout:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 573
    invoke-static {}, Lcom/vkcoffee/android/MAC;->access$4()Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 574
    invoke-static {}, Lcom/vkcoffee/android/MAC;->access$4()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    .line 575
    sget-object v1, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/vkcoffee/android/MAC;->viewAccs(Landroid/app/Activity;)V

    .line 578
    :cond_0
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/MAC$8;->success(Lcom/vkcoffee/android/api/execute/GetWallInfo$Result;)V

    return-void
.end method
