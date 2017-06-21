.class Lcom/vkcoffee/android/upload/WallPhotoUploadTask$2;
.super Lcom/vkcoffee/android/api/SimpleCallback;
.source "WallPhotoUploadTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vkcoffee/android/upload/WallPhotoUploadTask;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/api/SimpleCallback",
        "<",
        "Lcom/vkcoffee/android/attachments/PhotoAttachment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vkcoffee/android/upload/WallPhotoUploadTask;


# direct methods
.method constructor <init>(Lcom/vkcoffee/android/upload/WallPhotoUploadTask;)V
    .locals 0
    .param p1, "this$0"    # Lcom/vkcoffee/android/upload/WallPhotoUploadTask;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/vkcoffee/android/upload/WallPhotoUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/WallPhotoUploadTask;

    invoke-direct {p0}, Lcom/vkcoffee/android/api/SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Lcom/vkcoffee/android/attachments/PhotoAttachment;)V
    .locals 1
    .param p1, "photo"    # Lcom/vkcoffee/android/attachments/PhotoAttachment;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/vkcoffee/android/upload/WallPhotoUploadTask$2;->this$0:Lcom/vkcoffee/android/upload/WallPhotoUploadTask;

    invoke-static {v0, p1}, Lcom/vkcoffee/android/upload/WallPhotoUploadTask;->access$002(Lcom/vkcoffee/android/upload/WallPhotoUploadTask;Lcom/vkcoffee/android/attachments/PhotoAttachment;)Lcom/vkcoffee/android/attachments/PhotoAttachment;

    .line 71
    return-void
.end method

.method public bridge synthetic success(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 67
    check-cast p1, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/upload/WallPhotoUploadTask$2;->success(Lcom/vkcoffee/android/attachments/PhotoAttachment;)V

    return-void
.end method
