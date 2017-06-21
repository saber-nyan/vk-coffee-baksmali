.class Lcom/vkcoffee/android/upload/GraffitiUploadTask$2;
.super Ljava/lang/Object;
.source "GraffitiUploadTask.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/upload/GraffitiUploadTask;->save()V
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
        "Lcom/vkcoffee/android/api/Document;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/upload/GraffitiUploadTask;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/upload/GraffitiUploadTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/upload/GraffitiUploadTask;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/vkcoffee/android/upload/GraffitiUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/GraffitiUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 97
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/Document;)V
    .locals 1
    .param p1, "doc"    # Lcom/vkcoffee/android/api/Document;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/vkcoffee/android/upload/GraffitiUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/GraffitiUploadTask;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/upload/GraffitiUploadTask;->access$002(Lcom/vkcoffee/android/upload/GraffitiUploadTask;Lcom/vkcoffee/android/api/Document;)Lcom/vkcoffee/android/api/Document;

    .line 92
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 88
    check-cast p1, Lcom/vkcoffee/android/api/Document;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/upload/GraffitiUploadTask$2;->success(Lcom/vkcoffee/android/api/Document;)V

    return-void
.end method
