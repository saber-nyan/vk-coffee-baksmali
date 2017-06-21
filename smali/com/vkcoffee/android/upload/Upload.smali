.class public Lcom/vkcoffee/android/upload/Upload;
.super Ljava/lang/Object;
.source "Upload.java"


# static fields
.field public static final ACTION_PHOTO_ADDED:Ljava/lang/String; = "com.vkcoffee.android.PHOTO_ADDED"

.field public static final ACTION_PHOTO_REMOVED:Ljava/lang/String; = "com.vkcoffee.android.PHOTO_REMOVED"

.field public static final ACTION_UPLOAD_DONE:Ljava/lang/String; = "com.vkcoffee.android.UPLOAD_DONE"

.field public static final ACTION_UPLOAD_FAILED:Ljava/lang/String; = "com.vkcoffee.android.UPLOAD_FAILED"

.field public static final ACTION_UPLOAD_PROGRESS:Ljava/lang/String; = "com.vkcoffee.android.UPLOAD_PROGRESS"

.field public static final ACTION_UPLOAD_STARTED:Ljava/lang/String; = "com.vkcoffee.android.UPLOAD_STARTED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel(I)V
    .locals 0
    .param p0, "id"    # I

    .prologue
    .line 31
    invoke-static {p0}, Lcom/vkcoffee/android/upload/UploaderIntentService;->cancel(I)V

    .line 32
    return-void
.end method

.method public static getNewID()I
    .locals 2

    .prologue
    .line 35
    sget v0, Lcom/vkcoffee/android/upload/UploadTask;->lastID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/vkcoffee/android/upload/UploadTask;->lastID:I

    return v0
.end method

.method public static retry(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "taskId"    # I

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkcoffee/android/upload/UploaderIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 26
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "retry"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 28
    return-void
.end method

.method public static start(Landroid/content/Context;Lcom/vkcoffee/android/upload/UploadTask;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "t"    # Lcom/vkcoffee/android/upload/UploadTask;

    .prologue
    .line 19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/vkcoffee/android/upload/UploaderIntentService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "task"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 21
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 22
    return-void
.end method
