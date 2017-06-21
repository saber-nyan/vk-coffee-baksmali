.class Lcom/vkontakte/android/upload/VideoUploadTask$3;
.super Ljava/lang/Object;
.source "VideoUploadTask.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/upload/VideoUploadTask;->save()V
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
        "Lcom/vkcoffee/android/api/VideoFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkontakte/android/upload/VideoUploadTask;


# direct methods
.method constructor <init>(Lcom/vkontakte/android/upload/VideoUploadTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vkontakte/android/upload/VideoUploadTask$3;->this$0:Lcom/vkontakte/android/upload/VideoUploadTask;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3

    .prologue
    .line 153
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error getting video "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 3
    .param p1, "video"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 141
    iget-object v0, p1, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    const-string v1, ".vk.flv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask$3;->this$0:Lcom/vkontakte/android/upload/VideoUploadTask;

    invoke-static {v0, p1}, Lcom/vkontakte/android/upload/VideoUploadTask;->access$8(Lcom/vkontakte/android/upload/VideoUploadTask;Lcom/vkcoffee/android/api/VideoFile;)V

    .line 145
    iget-object v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask$3;->this$0:Lcom/vkontakte/android/upload/VideoUploadTask;

    invoke-static {v0}, Lcom/vkontakte/android/upload/VideoUploadTask;->access$9(Lcom/vkontakte/android/upload/VideoUploadTask;)Lcom/vkcoffee/android/api/VideoFile;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/upload/VideoUploadTask$3;->this$0:Lcom/vkontakte/android/upload/VideoUploadTask;

    invoke-static {v1}, Lcom/vkontakte/android/upload/VideoUploadTask;->access$10(Lcom/vkontakte/android/upload/VideoUploadTask;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/api/VideoFile;->accessKey:Ljava/lang/String;

    .line 146
    iget-object v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask$3;->this$0:Lcom/vkontakte/android/upload/VideoUploadTask;

    invoke-static {v0}, Lcom/vkontakte/android/upload/VideoUploadTask;->access$9(Lcom/vkontakte/android/upload/VideoUploadTask;)Lcom/vkcoffee/android/api/VideoFile;

    move-result-object v1

    iget-object v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask$3;->this$0:Lcom/vkontakte/android/upload/VideoUploadTask;

    invoke-static {v0}, Lcom/vkontakte/android/upload/VideoUploadTask;->access$11(Lcom/vkontakte/android/upload/VideoUploadTask;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcom/vkcoffee/android/api/VideoFile;->canAdd:Z

    .line 147
    iget-object v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask$3;->this$0:Lcom/vkontakte/android/upload/VideoUploadTask;

    invoke-static {v0}, Lcom/vkontakte/android/upload/VideoUploadTask;->access$12(Lcom/vkontakte/android/upload/VideoUploadTask;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask$3;->this$0:Lcom/vkontakte/android/upload/VideoUploadTask;

    invoke-static {v0}, Lcom/vkontakte/android/upload/VideoUploadTask;->access$9(Lcom/vkontakte/android/upload/VideoUploadTask;)Lcom/vkcoffee/android/api/VideoFile;

    move-result-object v0

    iget-object v1, p0, Lcom/vkontakte/android/upload/VideoUploadTask$3;->this$0:Lcom/vkontakte/android/upload/VideoUploadTask;

    invoke-static {v1}, Lcom/vkontakte/android/upload/VideoUploadTask;->access$12(Lcom/vkontakte/android/upload/VideoUploadTask;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "direct_link"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 150
    :cond_1
    return-void

    .line 146
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/VideoFile;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/upload/VideoUploadTask$3;->success(Lcom/vkcoffee/android/api/VideoFile;)V

    return-void
.end method
