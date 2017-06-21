.class public Lcom/vkcoffee/android/upload/GraffitiUploadTask;
.super Lcom/vkcoffee/android/upload/HTTPFileUploadTask;
.source "GraffitiUploadTask.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/upload/HTTPFileUploadTask",
        "<",
        "Lcom/vkcoffee/android/attachments/GraffitiAttachment;",
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
            "Lcom/vkcoffee/android/upload/GraffitiUploadTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ownerID:I

.field private result:Lcom/vkcoffee/android/api/Document;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/vkcoffee/android/upload/GraffitiUploadTask$3;

    invoke-direct {v0}, Lcom/vkcoffee/android/upload/GraffitiUploadTask$3;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/upload/GraffitiUploadTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "oid"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 27
    iput p3, p0, Lcom/vkcoffee/android/upload/GraffitiUploadTask;->ownerID:I

    .line 28
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 143
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;-><init>(Landroid/os/Parcel;)V

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/upload/GraffitiUploadTask;->ownerID:I

    .line 145
    const-class v0, Lcom/vkcoffee/android/api/Document;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/Document;

    iput-object v0, p0, Lcom/vkcoffee/android/upload/GraffitiUploadTask;->result:Lcom/vkcoffee/android/api/Document;

    .line 146
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkcoffee/android/upload/GraffitiUploadTask$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/vkcoffee/android/upload/GraffitiUploadTask$1;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/upload/GraffitiUploadTask;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/upload/GraffitiUploadTask;Lcom/vkcoffee/android/api/Document;)Lcom/vkcoffee/android/api/Document;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/upload/GraffitiUploadTask;
    .param p1, "x1"    # Lcom/vkcoffee/android/api/Document;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/vkcoffee/android/upload/GraffitiUploadTask;->result:Lcom/vkcoffee/android/api/Document;

    return-object p1
.end method


# virtual methods
.method public afterUpload()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/upload/UploadException;
        }
    .end annotation

    .prologue
    .line 113
    invoke-super {p0}, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->afterUpload()V

    .line 114
    iget-object v0, p0, Lcom/vkcoffee/android/upload/GraffitiUploadTask;->file:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/upload/GraffitiUploadTask;->file:Ljava/lang/String;

    const-string/jumbo v1, ".vkontakte/GRAF_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vkcoffee/android/upload/GraffitiUploadTask;->file:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/vk/attachpicker/util/FileUtils;->deleteFile(Ljava/io/File;)V

    .line 117
    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public doUpload()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/upload/UploadException;
        }
    .end annotation

    .prologue
    .line 64
    const/4 v2, 0x3

    .line 65
    .local v2, "retriesCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    .line 67
    :try_start_0
    invoke-super {p0}, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->doUpload()V
    :try_end_0
    .catch Lcom/vkcoffee/android/upload/UploadException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Lcom/vkcoffee/android/upload/UploadException;
    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 71
    invoke-virtual {p0}, Lcom/vkcoffee/android/upload/GraffitiUploadTask;->getServer()V

    .line 65
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .end local v0    # "e":Lcom/vkcoffee/android/upload/UploadException;
    :cond_1
    new-instance v3, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v4, "can\'t upload"

    invoke-direct {v3, v4}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected getNotificationTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/vkcoffee/android/upload/GraffitiUploadTask;->context:Landroid/content/Context;

    const v1, 0x7f08056b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPostFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string/jumbo v0, "file"

    return-object v0
.end method

.method public bridge synthetic getResult()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/vkcoffee/android/upload/GraffitiUploadTask;->getResult()Lcom/vkcoffee/android/attachments/GraffitiAttachment;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Lcom/vkcoffee/android/attachments/GraffitiAttachment;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Lcom/vkcoffee/android/attachments/GraffitiAttachment;

    iget-object v1, p0, Lcom/vkcoffee/android/upload/GraffitiUploadTask;->result:Lcom/vkcoffee/android/api/Document;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/attachments/GraffitiAttachment;-><init>(Lcom/vkcoffee/android/api/Document;)V

    return-object v0
.end method

.method public getServer()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/upload/UploadException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v2, Lcom/vkcoffee/android/api/docs/DocsGetUploadServer;

    iget v3, p0, Lcom/vkcoffee/android/upload/GraffitiUploadTask;->ownerID:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/vkcoffee/android/api/docs/DocsGetUploadServer;-><init>(IZZ)V

    new-instance v3, Lcom/vkcoffee/android/upload/GraffitiUploadTask$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/upload/GraffitiUploadTask$1;-><init>(Lcom/vkcoffee/android/upload/GraffitiUploadTask;)V

    .line 43
    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/docs/DocsGetUploadServer;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 54
    .local v0, "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    iput-object v0, p0, Lcom/vkcoffee/android/upload/GraffitiUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 55
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    move-result v1

    .line 56
    .local v1, "result":Z
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkcoffee/android/upload/GraffitiUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 57
    if-nez v1, :cond_0

    .line 58
    new-instance v2, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v3, "can\'t get upload server"

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 60
    :cond_0
    return-void
.end method

.method protected needShowNotifications()Z
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public save()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/upload/UploadException;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    iget-object v4, p0, Lcom/vkcoffee/android/upload/GraffitiUploadTask;->uploadResponse:Lorg/json/JSONObject;

    const-string/jumbo v5, "file"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 87
    .local v0, "file":Ljava/lang/String;
    new-instance v4, Lcom/vkcoffee/android/api/docs/DocsSave;

    invoke-direct {v4, v0}, Lcom/vkcoffee/android/api/docs/DocsSave;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/vkcoffee/android/upload/GraffitiUploadTask$2;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/upload/GraffitiUploadTask$2;-><init>(Lcom/vkcoffee/android/upload/GraffitiUploadTask;)V

    .line 88
    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/docs/DocsSave;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 99
    .local v1, "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    iput-object v1, p0, Lcom/vkcoffee/android/upload/GraffitiUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 100
    invoke-virtual {v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    move-result v2

    .line 101
    .local v2, "res":Z
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/vkcoffee/android/upload/GraffitiUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 102
    if-nez v2, :cond_0

    .line 103
    new-instance v4, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v5, "can\'t save photo"

    invoke-direct {v4, v5}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 84
    .end local v0    # "file":Ljava/lang/String;
    .end local v1    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    .end local v2    # "res":Z
    :catch_0
    move-exception v3

    .line 85
    .local v3, "x":Ljava/lang/Exception;
    new-instance v4, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v5, "can\'t parse upload response"

    invoke-direct {v4, v5, v3}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 105
    .end local v3    # "x":Ljava/lang/Exception;
    .restart local v0    # "file":Ljava/lang/String;
    .restart local v1    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    .restart local v2    # "res":Z
    :cond_0
    iget-object v4, p0, Lcom/vkcoffee/android/upload/GraffitiUploadTask;->result:Lcom/vkcoffee/android/api/Document;

    if-nez v4, :cond_1

    .line 106
    new-instance v4, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v5, "didn\'t get photo object"

    invoke-direct {v4, v5}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 108
    :cond_1
    iget-object v4, p0, Lcom/vkcoffee/android/upload/GraffitiUploadTask;->result:Lcom/vkcoffee/android/api/Document;

    iget v4, v4, Lcom/vkcoffee/android/api/Document;->did:I

    iget-object v5, p0, Lcom/vkcoffee/android/upload/GraffitiUploadTask;->result:Lcom/vkcoffee/android/api/Document;

    iget v5, v5, Lcom/vkcoffee/android/api/Document;->oid:I

    iget-object v6, p0, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->file:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/vkcoffee/android/attachments/GraffitiAttachment;->put(IILjava/lang/String;)V

    .line 109
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 131
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->writeToParcel(Landroid/os/Parcel;I)V

    .line 132
    iget v0, p0, Lcom/vkcoffee/android/upload/GraffitiUploadTask;->ownerID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object v0, p0, Lcom/vkcoffee/android/upload/GraffitiUploadTask;->result:Lcom/vkcoffee/android/api/Document;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 134
    return-void
.end method
