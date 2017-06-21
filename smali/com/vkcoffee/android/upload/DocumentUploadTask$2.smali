.class Lcom/vkcoffee/android/upload/DocumentUploadTask$2;
.super Ljava/lang/Object;
.source "DocumentUploadTask.java"

# interfaces
.implements Lcom/vkcoffee/android/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/upload/DocumentUploadTask;->save()V
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
.field final synthetic this$0:Lcom/vkcoffee/android/upload/DocumentUploadTask;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/upload/DocumentUploadTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/upload/DocumentUploadTask;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/vkcoffee/android/upload/DocumentUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/DocumentUploadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fail(Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;)V
    .locals 0
    .param p1, "error"    # Lcom/vkcoffee/android/api/VKAPIRequest$VKErrorResponse;

    .prologue
    .line 86
    return-void
.end method

.method public success(Lcom/vkcoffee/android/api/Document;)V
    .locals 1
    .param p1, "doc"    # Lcom/vkcoffee/android/api/Document;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/vkcoffee/android/upload/DocumentUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/DocumentUploadTask;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/upload/DocumentUploadTask;->access$002(Lcom/vkcoffee/android/upload/DocumentUploadTask;Lcom/vkcoffee/android/api/Document;)Lcom/vkcoffee/android/api/Document;

    .line 81
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 77
    check-cast p1, Lcom/vkcoffee/android/api/Document;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/upload/DocumentUploadTask$2;->success(Lcom/vkcoffee/android/api/Document;)V

    return-void
.end method
