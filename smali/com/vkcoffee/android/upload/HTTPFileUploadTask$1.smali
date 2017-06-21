.class Lcom/vkcoffee/android/upload/HTTPFileUploadTask$1;
.super Ljava/lang/Object;
.source "HTTPFileUploadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->cancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/upload/HTTPFileUploadTask;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/upload/HTTPFileUploadTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/upload/HTTPFileUploadTask;

    .prologue
    .line 97
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPFileUploadTask$1;, "Lcom/vkcoffee/android/upload/HTTPFileUploadTask$1;"
    iput-object p1, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$1;->this$0:Lcom/vkcoffee/android/upload/HTTPFileUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    .local p0, "this":Lcom/vkcoffee/android/upload/HTTPFileUploadTask$1;, "Lcom/vkcoffee/android/upload/HTTPFileUploadTask$1;"
    iget-object v0, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$1;->this$0:Lcom/vkcoffee/android/upload/HTTPFileUploadTask;

    invoke-static {v0}, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->access$000(Lcom/vkcoffee/android/upload/HTTPFileUploadTask;)Lcom/squareup/okhttp/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$1;->this$0:Lcom/vkcoffee/android/upload/HTTPFileUploadTask;

    invoke-static {v0}, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->access$000(Lcom/vkcoffee/android/upload/HTTPFileUploadTask;)Lcom/squareup/okhttp/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/squareup/okhttp/Call;->cancel()V

    .line 102
    iget-object v0, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask$1;->this$0:Lcom/vkcoffee/android/upload/HTTPFileUploadTask;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->access$002(Lcom/vkcoffee/android/upload/HTTPFileUploadTask;Lcom/squareup/okhttp/Call;)Lcom/squareup/okhttp/Call;

    .line 104
    :cond_0
    return-void
.end method
