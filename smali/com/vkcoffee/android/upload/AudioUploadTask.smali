.class public Lcom/vkcoffee/android/upload/AudioUploadTask;
.super Lcom/vkcoffee/android/upload/HTTPFileUploadTask;
.source "AudioUploadTask.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/upload/HTTPFileUploadTask",
        "<",
        "Lcom/vkcoffee/android/AudioFile;",
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
            "Lcom/vkcoffee/android/upload/AudioUploadTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private result:Lcom/vkcoffee/android/AudioFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/vkcoffee/android/upload/AudioUploadTask$3;

    invoke-direct {v0}, Lcom/vkcoffee/android/upload/AudioUploadTask$3;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/upload/AudioUploadTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;-><init>(Landroid/os/Parcel;)V

    .line 115
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkcoffee/android/upload/AudioUploadTask$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/vkcoffee/android/upload/AudioUploadTask$1;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/upload/AudioUploadTask;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/upload/AudioUploadTask;Lcom/vkcoffee/android/AudioFile;)Lcom/vkcoffee/android/AudioFile;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/upload/AudioUploadTask;
    .param p1, "x1"    # Lcom/vkcoffee/android/AudioFile;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/vkcoffee/android/upload/AudioUploadTask;->result:Lcom/vkcoffee/android/AudioFile;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method protected getNotificationTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/vkcoffee/android/upload/AudioUploadTask;->context:Landroid/content/Context;

    const v1, 0x7f080569

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPostFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "file"

    return-object v0
.end method

.method public bridge synthetic getResult()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/vkcoffee/android/upload/AudioUploadTask;->getResult()Lcom/vkcoffee/android/AudioFile;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Lcom/vkcoffee/android/AudioFile;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vkcoffee/android/upload/AudioUploadTask;->result:Lcom/vkcoffee/android/AudioFile;

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
    .line 32
    new-instance v2, Lcom/vkcoffee/android/api/audio/AudioGetUploadServer;

    invoke-direct {v2}, Lcom/vkcoffee/android/api/audio/AudioGetUploadServer;-><init>()V

    new-instance v3, Lcom/vkcoffee/android/upload/AudioUploadTask$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/upload/AudioUploadTask$1;-><init>(Lcom/vkcoffee/android/upload/AudioUploadTask;)V

    .line 33
    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/audio/AudioGetUploadServer;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 44
    .local v0, "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    iput-object v0, p0, Lcom/vkcoffee/android/upload/AudioUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 45
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    move-result v1

    .line 46
    .local v1, "result":Z
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkcoffee/android/upload/AudioUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 47
    if-nez v1, :cond_0

    .line 48
    new-instance v2, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v3, "can\'t get upload server"

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 50
    :cond_0
    return-void
.end method

.method protected needShowNotifications()Z
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method

.method public save()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/upload/UploadException;
        }
    .end annotation

    .prologue
    .line 58
    :try_start_0
    iget-object v6, p0, Lcom/vkcoffee/android/upload/AudioUploadTask;->uploadResponse:Lorg/json/JSONObject;

    const-string/jumbo v7, "server"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "server":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkcoffee/android/upload/AudioUploadTask;->uploadResponse:Lorg/json/JSONObject;

    const-string/jumbo v7, "audio"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "audio":Ljava/lang/String;
    iget-object v6, p0, Lcom/vkcoffee/android/upload/AudioUploadTask;->uploadResponse:Lorg/json/JSONObject;

    const-string/jumbo v7, "hash"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 64
    .local v1, "hash":Ljava/lang/String;
    new-instance v6, Lcom/vkcoffee/android/api/audio/AudioSave;

    invoke-direct {v6, v0, v1, v4}, Lcom/vkcoffee/android/api/audio/AudioSave;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Lcom/vkcoffee/android/upload/AudioUploadTask$2;

    invoke-direct {v7, p0}, Lcom/vkcoffee/android/upload/AudioUploadTask$2;-><init>(Lcom/vkcoffee/android/upload/AudioUploadTask;)V

    .line 65
    invoke-virtual {v6, v7}, Lcom/vkcoffee/android/api/audio/AudioSave;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    .line 76
    .local v2, "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    iput-object v2, p0, Lcom/vkcoffee/android/upload/AudioUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 77
    invoke-virtual {v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    move-result v3

    .line 78
    .local v3, "res":Z
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/vkcoffee/android/upload/AudioUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 79
    if-nez v3, :cond_0

    .line 80
    new-instance v6, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v7, "can\'t save photo"

    invoke-direct {v6, v7}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 61
    .end local v0    # "audio":Ljava/lang/String;
    .end local v1    # "hash":Ljava/lang/String;
    .end local v2    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    .end local v3    # "res":Z
    .end local v4    # "server":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 62
    .local v5, "x":Ljava/lang/Exception;
    new-instance v6, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v7, "can\'t parse upload response"

    invoke-direct {v6, v7, v5}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6

    .line 82
    .end local v5    # "x":Ljava/lang/Exception;
    .restart local v0    # "audio":Ljava/lang/String;
    .restart local v1    # "hash":Ljava/lang/String;
    .restart local v2    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    .restart local v3    # "res":Z
    .restart local v4    # "server":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/vkcoffee/android/upload/AudioUploadTask;->result:Lcom/vkcoffee/android/AudioFile;

    if-nez v6, :cond_1

    .line 83
    new-instance v6, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v7, "didn\'t get audio object"

    invoke-direct {v6, v7}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 85
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 110
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->writeToParcel(Landroid/os/Parcel;I)V

    .line 111
    return-void
.end method
