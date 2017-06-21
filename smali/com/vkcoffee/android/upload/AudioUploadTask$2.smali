.class Lcom/vkcoffee/android/upload/AudioUploadTask$2;
.super Ljava/lang/Object;
.source "AudioUploadTask.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/upload/AudioUploadTask;->save()V
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
        "Lcom/vkcoffee/android/AudioFile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/upload/AudioUploadTask;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/upload/AudioUploadTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/upload/AudioUploadTask;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/vkcoffee/android/upload/AudioUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/AudioUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0
    .param p1, "err"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 74
    return-void
.end method

.method public success(Lcom/vkcoffee/android/AudioFile;)V
    .locals 1
    .param p1, "audio"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vkcoffee/android/upload/AudioUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/AudioUploadTask;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/upload/AudioUploadTask;->access$002(Lcom/vkcoffee/android/upload/AudioUploadTask;Lcom/vkcoffee/android/AudioFile;)Lcom/vkcoffee/android/AudioFile;

    .line 69
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    check-cast p1, Lcom/vkcoffee/android/AudioFile;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/upload/AudioUploadTask$2;->success(Lcom/vkcoffee/android/AudioFile;)V

    return-void
.end method
