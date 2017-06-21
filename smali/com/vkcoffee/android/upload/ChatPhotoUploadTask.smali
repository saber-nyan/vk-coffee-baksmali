.class public Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;
.super Lcom/vkcoffee/android/upload/PhotoUploadTask;
.source "ChatPhotoUploadTask.java"

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
            "Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private chatID:I

.field private result:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask$3;

    invoke-direct {v0}, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask$3;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "oid"    # I

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/upload/PhotoUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    iput p3, p0, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;->chatID:I

    .line 30
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/upload/PhotoUploadTask;-><init>(Landroid/os/Parcel;)V

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;->chatID:I

    .line 125
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkcoffee/android/upload/ChatPhotoUploadTask$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/vkcoffee/android/upload/ChatPhotoUploadTask$1;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$000(Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;

    .prologue
    .line 22
    iget v0, p0, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;->chatID:I

    return v0
.end method


# virtual methods
.method public afterUpload()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/upload/UploadException;
        }
    .end annotation

    .prologue
    .line 78
    new-instance v3, Lcom/vkcoffee/android/api/VKAPIRequest;

    iget v2, p0, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;->chatID:I

    if-lez v2, :cond_0

    const-string/jumbo v2, "getProfiles"

    :goto_0
    invoke-direct {v3, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;->chatID:I

    if-lez v2, :cond_1

    const-string/jumbo v2, "user_ids"

    :goto_1
    iget v4, p0, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;->chatID:I

    .line 79
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v3

    const-string/jumbo v4, "fields"

    sget v2, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    const-string/jumbo v2, "photo_100"

    .line 80
    :goto_2
    invoke-virtual {v3, v4, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask$2;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask$2;-><init>(Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;)V

    .line 81
    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 102
    .local v0, "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    iput-object v0, p0, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 103
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    move-result v1

    .line 104
    .local v1, "res":Z
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 105
    if-nez v1, :cond_3

    .line 106
    new-instance v2, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v3, "can\'t get photo"

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    .end local v0    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    .end local v1    # "res":Z
    :cond_0
    const-string/jumbo v2, "groups.getById"

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "group_ids"

    goto :goto_1

    .line 79
    :cond_2
    const-string/jumbo v2, "photo_50"

    goto :goto_2

    .line 109
    .restart local v0    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    .restart local v1    # "res":Z
    :cond_3
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method protected getPostFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string/jumbo v0, "file"

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
    .line 38
    new-instance v2, Lcom/vkcoffee/android/api/photos/PhotosGetChatUploadServer;

    iget v3, p0, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;->chatID:I

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/api/photos/PhotosGetChatUploadServer;-><init>(I)V

    new-instance v3, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask$1;-><init>(Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;)V

    .line 39
    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/photos/PhotosGetChatUploadServer;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 50
    .local v0, "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    iput-object v0, p0, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 51
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    move-result v1

    .line 52
    .local v1, "result":Z
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 53
    if-nez v1, :cond_0

    .line 54
    new-instance v2, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v3, "can\'t get upload server"

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 56
    :cond_0
    return-void
.end method

.method public save()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/upload/UploadException;
        }
    .end annotation

    .prologue
    .line 62
    :try_start_0
    iget-object v4, p0, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;->uploadResponse:Lorg/json/JSONObject;

    const-string/jumbo v5, "response"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    .local v0, "file":Ljava/lang/String;
    new-instance v1, Lcom/vkcoffee/android/api/messages/MessagesSetChatPhoto;

    iget v4, p0, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;->chatID:I

    invoke-direct {v1, v4, v0}, Lcom/vkcoffee/android/api/messages/MessagesSetChatPhoto;-><init>(ILjava/lang/String;)V

    .line 67
    .local v1, "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    iput-object v1, p0, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 68
    invoke-virtual {v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    move-result v2

    .line 69
    .local v2, "res":Z
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 70
    if-nez v2, :cond_0

    .line 71
    new-instance v4, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v5, "can\'t save photo"

    invoke-direct {v4, v5}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 63
    .end local v0    # "file":Ljava/lang/String;
    .end local v1    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    .end local v2    # "res":Z
    :catch_0
    move-exception v3

    .line 64
    .local v3, "x":Ljava/lang/Exception;
    new-instance v4, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v5, "can\'t parse upload response"

    invoke-direct {v4, v5, v3}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 73
    .end local v3    # "x":Ljava/lang/Exception;
    .restart local v0    # "file":Ljava/lang/String;
    .restart local v1    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    .restart local v2    # "res":Z
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/upload/PhotoUploadTask;->writeToParcel(Landroid/os/Parcel;I)V

    .line 119
    iget v0, p0, Lcom/vkcoffee/android/upload/ChatPhotoUploadTask;->chatID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return-void
.end method
