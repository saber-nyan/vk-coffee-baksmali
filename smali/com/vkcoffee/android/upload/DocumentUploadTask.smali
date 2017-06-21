.class public Lcom/vkcoffee/android/upload/DocumentUploadTask;
.super Lcom/vkcoffee/android/upload/HTTPFileUploadTask;
.source "DocumentUploadTask.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/upload/HTTPFileUploadTask",
        "<",
        "Lcom/vkcoffee/android/attachments/DocumentAttachment;",
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
            "Lcom/vkcoffee/android/upload/DocumentUploadTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private needShowNotification:Z

.field private ownerID:I

.field private result:Lcom/vkcoffee/android/api/Document;

.field private wall:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Lcom/vkcoffee/android/upload/DocumentUploadTask$3;

    invoke-direct {v0}, Lcom/vkcoffee/android/upload/DocumentUploadTask$3;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/upload/DocumentUploadTask;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "oid"    # I
    .param p4, "wall"    # Z

    .prologue
    .line 26
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/upload/DocumentUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;IZZ)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZZ)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "oid"    # I
    .param p4, "wall"    # Z
    .param p5, "needShowNotification"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 31
    iput p3, p0, Lcom/vkcoffee/android/upload/DocumentUploadTask;->ownerID:I

    .line 32
    iput-boolean p4, p0, Lcom/vkcoffee/android/upload/DocumentUploadTask;->wall:Z

    .line 33
    iput-boolean p5, p0, Lcom/vkcoffee/android/upload/DocumentUploadTask;->needShowNotification:Z

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 129
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;-><init>(Landroid/os/Parcel;)V

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/upload/DocumentUploadTask;->ownerID:I

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/upload/DocumentUploadTask;->wall:Z

    .line 132
    const-class v0, Lcom/vkcoffee/android/api/Document;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/Document;

    iput-object v0, p0, Lcom/vkcoffee/android/upload/DocumentUploadTask;->result:Lcom/vkcoffee/android/api/Document;

    .line 133
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/vkcoffee/android/upload/DocumentUploadTask;->needShowNotification:Z

    .line 134
    return-void

    :cond_0
    move v0, v2

    .line 131
    goto :goto_0

    :cond_1
    move v1, v2

    .line 133
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkcoffee/android/upload/DocumentUploadTask$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/vkcoffee/android/upload/DocumentUploadTask$1;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/upload/DocumentUploadTask;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/upload/DocumentUploadTask;Lcom/vkcoffee/android/api/Document;)Lcom/vkcoffee/android/api/Document;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/upload/DocumentUploadTask;
    .param p1, "x1"    # Lcom/vkcoffee/android/api/Document;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/vkcoffee/android/upload/DocumentUploadTask;->result:Lcom/vkcoffee/android/api/Document;

    return-object p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method protected getNotificationTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vkcoffee/android/upload/DocumentUploadTask;->context:Landroid/content/Context;

    const v1, 0x7f08056b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPostFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string/jumbo v0, "file"

    return-object v0
.end method

.method public bridge synthetic getResult()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/vkcoffee/android/upload/DocumentUploadTask;->getResult()Lcom/vkcoffee/android/attachments/DocumentAttachment;

    move-result-object v0

    return-object v0
.end method

.method public getResult()Lcom/vkcoffee/android/attachments/DocumentAttachment;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Lcom/vkcoffee/android/attachments/DocumentAttachment;

    iget-object v1, p0, Lcom/vkcoffee/android/upload/DocumentUploadTask;->result:Lcom/vkcoffee/android/api/Document;

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/attachments/DocumentAttachment;-><init>(Lcom/vkcoffee/android/api/Document;)V

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
    .line 48
    new-instance v2, Lcom/vkcoffee/android/api/docs/DocsGetUploadServer;

    iget v3, p0, Lcom/vkcoffee/android/upload/DocumentUploadTask;->ownerID:I

    iget-boolean v4, p0, Lcom/vkcoffee/android/upload/DocumentUploadTask;->wall:Z

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/vkcoffee/android/api/docs/DocsGetUploadServer;-><init>(IZZ)V

    new-instance v3, Lcom/vkcoffee/android/upload/DocumentUploadTask$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/upload/DocumentUploadTask$1;-><init>(Lcom/vkcoffee/android/upload/DocumentUploadTask;)V

    .line 49
    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/docs/DocsGetUploadServer;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 60
    .local v0, "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    iput-object v0, p0, Lcom/vkcoffee/android/upload/DocumentUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 61
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    move-result v1

    .line 62
    .local v1, "result":Z
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkcoffee/android/upload/DocumentUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 63
    if-nez v1, :cond_0

    .line 64
    new-instance v2, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v3, "can\'t get upload server"

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_0
    return-void
.end method

.method protected needShowNotifications()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/vkcoffee/android/upload/DocumentUploadTask;->needShowNotification:Z

    return v0
.end method

.method public save()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vkcoffee/android/upload/UploadException;
        }
    .end annotation

    .prologue
    .line 72
    :try_start_0
    iget-object v4, p0, Lcom/vkcoffee/android/upload/DocumentUploadTask;->uploadResponse:Lorg/json/JSONObject;

    const-string/jumbo v5, "file"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 76
    .local v0, "file":Ljava/lang/String;
    new-instance v4, Lcom/vkcoffee/android/api/docs/DocsSave;

    invoke-direct {v4, v0}, Lcom/vkcoffee/android/api/docs/DocsSave;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/vkcoffee/android/upload/DocumentUploadTask$2;

    invoke-direct {v5, p0}, Lcom/vkcoffee/android/upload/DocumentUploadTask$2;-><init>(Lcom/vkcoffee/android/upload/DocumentUploadTask;)V

    .line 77
    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/api/docs/DocsSave;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 88
    .local v1, "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    iput-object v1, p0, Lcom/vkcoffee/android/upload/DocumentUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 89
    invoke-virtual {v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    move-result v2

    .line 90
    .local v2, "res":Z
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/vkcoffee/android/upload/DocumentUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 91
    if-nez v2, :cond_0

    .line 92
    new-instance v4, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v5, "can\'t save photo"

    invoke-direct {v4, v5}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 73
    .end local v0    # "file":Ljava/lang/String;
    .end local v1    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    .end local v2    # "res":Z
    :catch_0
    move-exception v3

    .line 74
    .local v3, "x":Ljava/lang/Exception;
    new-instance v4, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v5, "can\'t parse upload response"

    invoke-direct {v4, v5, v3}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 94
    .end local v3    # "x":Ljava/lang/Exception;
    .restart local v0    # "file":Ljava/lang/String;
    .restart local v1    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    .restart local v2    # "res":Z
    :cond_0
    iget-object v4, p0, Lcom/vkcoffee/android/upload/DocumentUploadTask;->result:Lcom/vkcoffee/android/api/Document;

    if-nez v4, :cond_1

    .line 95
    new-instance v4, Lcom/vkcoffee/android/upload/UploadException;

    const-string/jumbo v5, "didn\'t get photo object"

    invoke-direct {v4, v5}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 97
    :cond_1
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 111
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/upload/HTTPFileUploadTask;->writeToParcel(Landroid/os/Parcel;I)V

    .line 112
    iget v0, p0, Lcom/vkcoffee/android/upload/DocumentUploadTask;->ownerID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-boolean v0, p0, Lcom/vkcoffee/android/upload/DocumentUploadTask;->wall:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 114
    iget-object v0, p0, Lcom/vkcoffee/android/upload/DocumentUploadTask;->result:Lcom/vkcoffee/android/api/Document;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 115
    iget-boolean v0, p0, Lcom/vkcoffee/android/upload/DocumentUploadTask;->needShowNotification:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 116
    return-void

    :cond_0
    move v0, v2

    .line 113
    goto :goto_0

    :cond_1
    move v1, v2

    .line 115
    goto :goto_1
.end method
