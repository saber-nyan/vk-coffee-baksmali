.class Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$1;
.super Ljava/lang/Object;
.source "HTTPResumableUploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;

    .prologue
    .line 165
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$1;, "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$1;"
    iput-object p1, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$1;->this$0:Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 168
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$1;, "Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$1;"
    iget-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$1;->this$0:Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;

    invoke-static {v0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->access$300(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;)Lcom/squareup/okhttp/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$1;->this$0:Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;

    invoke-static {v0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->access$300(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;)Lcom/squareup/okhttp/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->cancel()V

    .line 170
    iget-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$1;->this$0:Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->access$302(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/Call;

    .line 171
    iget-object v0, p0, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask$1;->this$0:Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;

    invoke-static {v0}, Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;->access$400(Lcom/vkcoffee/android/upload/HTTPResumableUploadTask;)V

    .line 173
    :cond_0
    return-void
.end method
