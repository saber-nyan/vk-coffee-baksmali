.class public Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;
.super Lcom/vkcoffee/android/upload/PhotoUploadTask;
.source "MessagesPhotoUploadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/upload/PhotoUploadTask",
        "<",
        "Lcom/vkcoffee/android/attachments/PhotoAttachment;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private result:Lcom/vkcoffee/android/attachments/PhotoAttachment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask$3;

    invoke-direct {v0}, Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask$3;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/upload/PhotoUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    iput p3, p0, Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;->id:I

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/upload/PhotoUploadTask;-><init>(Landroid/os/Parcel;)V

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask$1;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;Lcom/vkcoffee/android/attachments/PhotoAttachment;)Lcom/vkcoffee/android/attachments/PhotoAttachment;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;
    .param p1, "x1"    # Lcom/vkcoffee/android/attachments/PhotoAttachment;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;->result:Lcom/vkcoffee/android/attachments/PhotoAttachment;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method protected getPostFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    const-string/jumbo v0, "photo"

    return-object v0
.end method

.method public bridge synthetic getResult()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;->getResult()Lcom/vkcoffee/android/attachments/PhotoAttachment;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Lcom/vkcoffee/android/attachments/PhotoAttachment;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;->result:Lcom/vkcoffee/android/attachments/PhotoAttachment;

    return-object v0
.end method

.method public getServer()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/upload/UploadException;
        }
    .end annotation

    .prologue
    .line 34
    new-instance v2, Lcom/vkcoffee/android/api/photos/PhotosGetMessagesUploadServer;

    invoke-direct {v2}, Lcom/vkcoffee/android/api/photos/PhotosGetMessagesUploadServer;-><init>()V

    new-instance v3, Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask$1;-><init>(Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;)V

    .line 35
    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/photos/PhotosGetMessagesUploadServer;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 46
    .local v0, "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    iput-object v0, p0, Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 47
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    move-result v1

    .line 48
    .local v1, "result":Z
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 49
    if-nez v1, :cond_0

    .line 50
    new-instance v2, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v3, "can\'t get upload server"

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    :cond_0
    return-void
.end method

.method public save()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/upload/UploadException;
        }
    .end annotation

    .prologue
    .line 60
    :try_start_0
    iget-object v6, p0, Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;->uploadResponse:Lorg/json/JSONObject;

    const-string/jumbo v7, "server"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 61
    .local v4, "server":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;->uploadResponse:Lorg/json/JSONObject;

    const-string/jumbo v7, "photo"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "photo":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;->uploadResponse:Lorg/json/JSONObject;

    const-string/jumbo v7, "hash"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    .local v0, "hash":Ljava/lang/String;
    new-instance v6, Lcom/vkcoffee/android/api/photos/PhotosSaveMessagesPhoto;

    invoke-direct {v6, v4, v1, v0}, Lcom/vkcoffee/android/api/photos/PhotosSaveMessagesPhoto;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask$2;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask$2;-><init>(Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;)V

    .line 67
    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/api/photos/PhotosSaveMessagesPhoto;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 73
    .local v2, "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    iput-object v2, p0, Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 74
    invoke-virtual {v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    move-result v3

    .line 75
    .local v3, "res":Z
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 76
    if-nez v3, :cond_0

    .line 77
    new-instance v6, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v7, "can\'t save photo"

    invoke-direct {v6, v7}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 63
    .end local v0    # "hash":Ljava/lang/String;
    .end local v1    # "photo":Ljava/lang/String;
    .end local v2    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    .end local v3    # "res":Z
    .end local v4    # "server":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 64
    .local v5, "x":Ljava/lang/Exception;
    new-instance v6, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v7, "can\'t parse upload response"

    invoke-direct {v6, v7, v5}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 79
    .end local v5    # "x":Ljava/lang/Exception;
    .restart local v0    # "hash":Ljava/lang/String;
    .restart local v1    # "photo":Ljava/lang/String;
    .restart local v2    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    .restart local v3    # "res":Z
    .restart local v4    # "server":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/vkcoffee/android/upload/MessagesPhotoUploadTask;->result:Lcom/vkcoffee/android/attachments/PhotoAttachment;

    if-nez v6, :cond_1

    .line 80
    new-instance v6, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v7, "didn\'t get photo object"

    invoke-direct {v6, v7}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 82
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/upload/PhotoUploadTask;->writeToParcel(Landroid/os/Parcel;I)V

    .line 98
    return-void
.end method
