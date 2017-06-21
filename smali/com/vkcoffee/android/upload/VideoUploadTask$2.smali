.class Lcom/vkcoffee/android/upload/VideoUploadTask$2;
.super Ljava/lang/Object;
.source "VideoUploadTask.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/upload/VideoUploadTask;->save()V
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
.field final synthetic this$0:Lcom/vkcoffee/android/upload/VideoUploadTask;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/upload/VideoUploadTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/upload/VideoUploadTask;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/vkcoffee/android/upload/VideoUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/VideoUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 122
    const-string/jumbo v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Error getting video "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/VideoFile;)V
    .locals 3
    .param p1, "video"    # Lcom/vkcoffee/android/api/VideoFile;

    .prologue
    .line 109
    iget-object v0, p1, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    const-string/jumbo v1, ".vk.flv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/upload/VideoUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/VideoUploadTask;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/upload/VideoUploadTask;->access$202(Lcom/vkcoffee/android/upload/VideoUploadTask;Lcom/vkcoffee/android/api/VideoFile;)Lcom/vkcoffee/android/api/VideoFile;

    .line 113
    iget-object v0, p0, Lcom/vkcoffee/android/upload/VideoUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/VideoUploadTask;

    invoke-static {v0}, Lcom/vkcoffee/android/upload/VideoUploadTask;->access$200(Lcom/vkcoffee/android/upload/VideoUploadTask;)Lcom/vkcoffee/android/api/VideoFile;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/upload/VideoUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/VideoUploadTask;

    invoke-static {v1}, Lcom/vkcoffee/android/upload/VideoUploadTask;->access$100(Lcom/vkcoffee/android/upload/VideoUploadTask;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/api/VideoFile;->accessKey:Ljava/lang/String;

    .line 114
    iget-object v0, p0, Lcom/vkcoffee/android/upload/VideoUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/VideoUploadTask;

    invoke-static {v0}, Lcom/vkcoffee/android/upload/VideoUploadTask;->access$200(Lcom/vkcoffee/android/upload/VideoUploadTask;)Lcom/vkcoffee/android/api/VideoFile;

    move-result-object v1

    iget-object v0, p0, Lcom/vkcoffee/android/upload/VideoUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/VideoUploadTask;

    invoke-static {v0}, Lcom/vkcoffee/android/upload/VideoUploadTask;->access$300(Lcom/vkcoffee/android/upload/VideoUploadTask;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, v1, Lcom/vkcoffee/android/api/VideoFile;->canAdd:Z

    .line 115
    iget-object v0, p0, Lcom/vkcoffee/android/upload/VideoUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/VideoUploadTask;

    iget-object v0, v0, Lcom/vkcoffee/android/upload/VideoUploadTask;->uploadResponse:Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/vkcoffee/android/upload/VideoUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/VideoUploadTask;

    invoke-static {v0}, Lcom/vkcoffee/android/upload/VideoUploadTask;->access$200(Lcom/vkcoffee/android/upload/VideoUploadTask;)Lcom/vkcoffee/android/api/VideoFile;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/upload/VideoUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/VideoUploadTask;

    iget-object v1, v1, Lcom/vkcoffee/android/upload/VideoUploadTask;->uploadResponse:Lorg/json/JSONObject;

    const-string/jumbo v2, "direct_link"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 118
    :cond_1
    return-void

    .line 114
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 106
    check-cast p1, Lcom/vkcoffee/android/api/VideoFile;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/upload/VideoUploadTask$2;->success(Lcom/vkcoffee/android/api/VideoFile;)V

    return-void
.end method
