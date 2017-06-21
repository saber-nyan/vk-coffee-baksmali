.class public Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;
.super Lcom/vkcoffee/android/upload/PhotoUploadTask;
.source "AlbumPhotoUploadTask.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/upload/PhotoUploadTask",
        "<",
        "Lcom/vkcoffee/android/Photo;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private albumID:I

.field private description:Ljava/lang/String;

.field private ownerID:I

.field private result:Lcom/vkcoffee/android/Photo;

.field private showNotification:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask$3;

    invoke-direct {v0}, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask$3;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "aid"    # I
    .param p4, "oid"    # I
    .param p5, "descr"    # Ljava/lang/String;

    .prologue
    .line 31
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Z)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "aid"    # I
    .param p4, "oid"    # I
    .param p5, "descr"    # Ljava/lang/String;
    .param p6, "notify"    # Z

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/upload/PhotoUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->showNotification:Z

    .line 36
    iput p3, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->albumID:I

    .line 37
    iput p4, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->ownerID:I

    .line 38
    iput-object p5, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->description:Ljava/lang/String;

    .line 39
    iput-boolean p6, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->showNotification:Z

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 139
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/upload/PhotoUploadTask;-><init>(Landroid/os/Parcel;)V

    .line 28
    iput-boolean v0, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->showNotification:Z

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->albumID:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->ownerID:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->description:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->showNotification:Z

    .line 144
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask$1;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;Lcom/vkcoffee/android/Photo;)Lcom/vkcoffee/android/Photo;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;
    .param p1, "x1"    # Lcom/vkcoffee/android/Photo;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->result:Lcom/vkcoffee/android/Photo;

    return-object p1
.end method


# virtual methods
.method public afterUpload()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/upload/UploadException;
        }
    .end annotation

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.PHOTO_ADDED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "photo"

    iget-object v2, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->result:Lcom/vkcoffee/android/Photo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 105
    const-string/jumbo v1, "aid"

    iget-object v2, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->result:Lcom/vkcoffee/android/Photo;

    iget v2, v2, Lcom/vkcoffee/android/Photo;->albumID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    iget-object v1, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->context:Landroid/content/Context;

    const-string/jumbo v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method protected getNotificationTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->context:Landroid/content/Context;

    const v1, 0x7f08056e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPostFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "file1"

    return-object v0
.end method

.method public bridge synthetic getResult()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->getResult()Lcom/vkcoffee/android/Photo;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Lcom/vkcoffee/android/Photo;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->result:Lcom/vkcoffee/android/Photo;

    return-object v0
.end method

.method public getServer()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/upload/UploadException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v2, Lcom/vkcoffee/android/api/photos/PhotosGetUploadServer;

    iget v3, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->albumID:I

    iget v4, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->ownerID:I

    invoke-direct {v2, v3, v4}, Lcom/vkcoffee/android/api/photos/PhotosGetUploadServer;-><init>(II)V

    new-instance v3, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask$1;-><init>(Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;)V

    .line 50
    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/photos/PhotosGetUploadServer;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 61
    .local v0, "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    iput-object v0, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 62
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    move-result v1

    .line 63
    .local v1, "result":Z
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 64
    if-nez v1, :cond_0

    .line 65
    new-instance v2, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v3, "can\'t get upload server"

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_0
    return-void
.end method

.method protected needShowNotifications()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->showNotification:Z

    return v0
.end method

.method public save()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/upload/UploadException;
        }
    .end annotation

    .prologue
    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->uploadResponse:Lorg/json/JSONObject;

    const-string/jumbo v1, "server"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, "server":Ljava/lang/String;
    iget-object v0, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->uploadResponse:Lorg/json/JSONObject;

    const-string/jumbo v1, "photos_list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "photosList":Ljava/lang/String;
    iget-object v0, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->uploadResponse:Lorg/json/JSONObject;

    const-string/jumbo v1, "hash"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 81
    .local v5, "hash":Ljava/lang/String;
    new-instance v0, Lcom/vkcoffee/android/api/photos/PhotosSave;

    iget v1, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->albumID:I

    iget v2, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->ownerID:I

    iget-object v6, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->description:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/vkcoffee/android/api/photos/PhotosSave;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask$2;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask$2;-><init>(Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;)V

    .line 82
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/photos/PhotosSave;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v7

    .line 90
    .local v7, "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    iput-object v7, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 91
    invoke-virtual {v7}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    move-result v8

    .line 92
    .local v8, "res":Z
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 93
    if-nez v8, :cond_0

    .line 94
    new-instance v0, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v1, "can\'t save photo"

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    .end local v3    # "server":Ljava/lang/String;
    .end local v4    # "photosList":Ljava/lang/String;
    .end local v5    # "hash":Ljava/lang/String;
    .end local v7    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    .end local v8    # "res":Z
    :catch_0
    move-exception v9

    .line 79
    .local v9, "x":Ljava/lang/Exception;
    new-instance v0, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v1, "can\'t parse upload response"

    invoke-direct {v0, v1, v9}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 96
    .end local v9    # "x":Ljava/lang/Exception;
    .restart local v3    # "server":Ljava/lang/String;
    .restart local v4    # "photosList":Ljava/lang/String;
    .restart local v5    # "hash":Ljava/lang/String;
    .restart local v7    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    .restart local v8    # "res":Z
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->result:Lcom/vkcoffee/android/Photo;

    if-nez v0, :cond_1

    .line 97
    new-instance v0, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v1, "didn\'t get photo object"

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/upload/PhotoUploadTask;->writeToParcel(Landroid/os/Parcel;I)V

    .line 132
    iget v0, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->albumID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget v0, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->ownerID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-boolean v0, p0, Lcom/vkcoffee/android/upload/AlbumPhotoUploadTask;->showNotification:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    return-void

    .line 135
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
