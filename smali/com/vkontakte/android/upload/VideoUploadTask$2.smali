.class Lcom/vkontakte/android/upload/VideoUploadTask$2;
.super Ljava/lang/Object;
.source "VideoUploadTask.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkontakte/android/upload/VideoUploadTask;->getServer()V
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
        "Lcom/vkcoffee/android/api/video/VideoSave$Result;",
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
    iput-object p1, p0, Lcom/vkontakte/android/upload/VideoUploadTask$2;->this$0:Lcom/vkontakte/android/upload/VideoUploadTask;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 3

    .prologue
    .line 127
    .local p1, "error":Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;, "Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;"
    const-string v0, "vk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error getting upload server "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/video/VideoSave$Result;)V
    .locals 2
    .param p1, "r"    # Lcom/vkcoffee/android/api/video/VideoSave$Result;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask$2;->this$0:Lcom/vkontakte/android/upload/VideoUploadTask;

    iget-object v1, p1, Lcom/vkcoffee/android/api/video/VideoSave$Result;->uploadUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkontakte/android/upload/VideoUploadTask;->access$5(Lcom/vkontakte/android/upload/VideoUploadTask;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask$2;->this$0:Lcom/vkontakte/android/upload/VideoUploadTask;

    iget v1, p1, Lcom/vkcoffee/android/api/video/VideoSave$Result;->id:I

    invoke-static {v0, v1}, Lcom/vkontakte/android/upload/VideoUploadTask;->access$6(Lcom/vkontakte/android/upload/VideoUploadTask;I)V

    .line 123
    iget-object v0, p0, Lcom/vkontakte/android/upload/VideoUploadTask$2;->this$0:Lcom/vkontakte/android/upload/VideoUploadTask;

    iget-object v1, p1, Lcom/vkcoffee/android/api/video/VideoSave$Result;->accessKey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/vkontakte/android/upload/VideoUploadTask;->access$7(Lcom/vkontakte/android/upload/VideoUploadTask;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/video/VideoSave$Result;

    invoke-virtual {p0, p1}, Lcom/vkontakte/android/upload/VideoUploadTask$2;->success(Lcom/vkcoffee/android/api/video/VideoSave$Result;)V

    return-void
.end method
