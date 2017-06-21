.class Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$3;
.super Ljava/lang/Object;
.source "ProfilePhotoUploadTask.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->afterUpload()V
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
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$3;->this$0:Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0

    .prologue
    .line 152
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$3;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "r"    # Lorg/json/JSONObject;

    .prologue
    .line 138
    :try_start_0
    const-string v3, "response"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    sget v3, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_1

    const-string v3, "photo_100"

    :goto_0
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "photo":Ljava/lang/String;
    iget-object v3, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$3;->this$0:Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;

    invoke-static {v3}, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->access$5(Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;)I

    move-result v3

    sget v4, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v3, v4, :cond_0

    .line 140
    iget-object v3, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$3;->this$0:Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;

    iget-object v3, v3, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->context:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "userphoto"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 142
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.vkcoffee.android.USER_PHOTO_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "photo"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string v3, "id"

    iget-object v4, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$3;->this$0:Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;

    invoke-static {v4}, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->access$5(Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    iget-object v3, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$3;->this$0:Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;

    iget-object v3, v3, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->context:Landroid/content/Context;

    const-string v4, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 149
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "photo":Ljava/lang/String;
    :goto_1
    return-void

    .line 138
    :cond_1
    const-string v3, "photo_50"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v2

    .line 147
    .local v2, "x":Ljava/lang/Throwable;
    const-string v3, "vk"

    invoke-static {v3, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
