.class public Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;
.super Lcom/vkcoffee/android/upload/PhotoUploadTask;
.source "ProfilePhotoUploadTask.java"

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
            "Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mThumbBottom:F

.field private mThumbLeft:F

.field private mThumbRight:F

.field private mThumbTop:F

.field private notify:Z

.field private ownerID:I

.field private result:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "oid"    # I
    .param p4, "showNotification"    # Z

    .prologue
    const/high16 v5, -0x40800000    # -1.0f

    .line 61
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v6, v5

    move v7, v5

    move v8, v5

    invoke-direct/range {v0 .. v8}, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;IZFFFF)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZFFFF)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "oid"    # I
    .param p4, "showNotification"    # Z
    .param p5, "thumbLeft"    # F
    .param p6, "thumbTop"    # F
    .param p7, "thumbRight"    # F
    .param p8, "thumbBottom"    # F

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/upload/PhotoUploadTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->setDisableDownscale(Z)V

    .line 50
    iput p3, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->ownerID:I

    .line 51
    iput-boolean p4, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->notify:Z

    .line 52
    const v0, 0x7f08034d

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f08034e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "vkontakte://profile/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->ownerID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->setDoneNotification(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    .line 53
    iput p5, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->mThumbLeft:F

    .line 54
    iput p6, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->mThumbTop:F

    .line 55
    iput p7, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->mThumbRight:F

    .line 56
    iput p8, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->mThumbBottom:F

    .line 57
    const-string v0, "Upload"

    const-string v1, "%fx%f, %f,%f"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->mThumbLeft:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->mThumbTop:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->mThumbRight:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->mThumbBottom:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/upload/PhotoUploadTask;-><init>(Landroid/os/Parcel;)V

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->ownerID:I

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->notify:Z

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->mThumbLeft:F

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->mThumbTop:F

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->mThumbRight:F

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->mThumbBottom:F

    .line 192
    return-void

    .line 187
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;)V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;)F
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->mThumbLeft:F

    return v0
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;)F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->mThumbTop:F

    return v0
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;)F
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->mThumbRight:F

    return v0
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;)F
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->mThumbBottom:F

    return v0
.end method

.method static synthetic access$5(Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;)I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->ownerID:I

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
    .line 135
    new-instance v3, Lcom/vkcoffee/android/api/VKAPIRequest;

    iget v2, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->ownerID:I

    if-lez v2, :cond_0

    const-string v2, "getProfiles"

    :goto_0
    invoke-direct {v3, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->ownerID:I

    if-lez v2, :cond_1

    const-string v2, "user_ids"

    :goto_1
    iget v4, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->ownerID:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-virtual {v3, v2, v4}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v3

    const-string v4, "fields"

    sget v2, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    const-string v2, "photo_100"

    :goto_2
    invoke-virtual {v3, v4, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v2

    new-instance v3, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$3;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$3;-><init>(Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;)V

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 154
    .local v0, "req":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<Lorg/json/JSONObject;>;"
    iput-object v0, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 155
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    move-result v1

    .line 156
    .local v1, "res":Z
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 157
    if-nez v1, :cond_3

    .line 158
    new-instance v2, Lcom/vkcoffee/android/upload/UploadException;

    const-string v3, "can\'t get photo"

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 135
    .end local v0    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<Lorg/json/JSONObject;>;"
    .end local v1    # "res":Z
    :cond_0
    const-string v2, "groups.getById"

    goto :goto_0

    :cond_1
    const-string v2, "group_ids"

    goto :goto_1

    :cond_2
    const-string v2, "photo_50"

    goto :goto_2

    .line 160
    .restart local v0    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;, "Lcom/vkcoffee/android/api/VKAPIRequest<Lorg/json/JSONObject;>;"
    .restart local v1    # "res":Z
    :cond_3
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method protected getNotificationTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->context:Landroid/content/Context;

    const v1, 0x7f08056e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPostFieldName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "photo"

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
    .line 69
    new-instance v2, Lcom/vkcoffee/android/api/photos/PhotosGetOwnerPhotoUploadServer;

    iget v3, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->ownerID:I

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/api/photos/PhotosGetOwnerPhotoUploadServer;-><init>(I)V

    new-instance v3, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$2;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask$2;-><init>(Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;)V

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/api/photos/PhotosGetOwnerPhotoUploadServer;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 107
    .local v0, "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    iput-object v0, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 108
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    move-result v1

    .line 109
    .local v1, "result":Z
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 110
    if-nez v1, :cond_0

    .line 111
    new-instance v2, Lcom/vkcoffee/android/upload/UploadException;

    const-string v3, "can\'t get upload server"

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_0
    return-void
.end method

.method protected needShowNotifications()Z
    .locals 1

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->notify:Z

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
    .line 116
    invoke-static {}, Lcom/vkcoffee/android/Platform;->START_USE_CUSTOM()V

    .line 118
    :try_start_0
    new-instance v0, Lcom/vkcoffee/android/api/photos/PhotosSaveOwnerPhoto;

    iget v3, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->ownerID:I

    iget-object v4, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->uploadResponse:Lorg/json/JSONObject;

    const-string v5, "server"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->uploadResponse:Lorg/json/JSONObject;

    const-string v6, "photo"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->uploadResponse:Lorg/json/JSONObject;

    const-string v7, "hash"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/vkcoffee/android/api/photos/PhotosSaveOwnerPhoto;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .local v0, "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    iput-object v0, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 120
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->execSync()Z

    move-result v1

    .line 121
    .local v1, "res":Z
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->currentApiRequest:Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 122
    invoke-static {}, Lcom/vkcoffee/android/Platform;->STOP_USE_CUSTOM()V

    .line 123
    invoke-static {}, Lcom/vkcoffee/android/OnlineSNL;->setOffline()V

    .line 124
    if-nez v1, :cond_0

    .line 125
    invoke-static {}, Lcom/vkcoffee/android/Platform;->STOP_USE_CUSTOM()V

    .line 126
    new-instance v3, Lcom/vkcoffee/android/upload/UploadException;

    const-string v4, "can\'t save photo"

    invoke-direct {v3, v4}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v0    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    .end local v1    # "res":Z
    :catch_0
    move-exception v2

    .line 129
    .local v2, "x":Ljava/lang/Exception;
    invoke-static {}, Lcom/vkcoffee/android/Platform;->STOP_USE_CUSTOM()V

    .line 130
    new-instance v3, Lcom/vkcoffee/android/upload/UploadException;

    const-string v4, "can\'t parse upload response"

    invoke-direct {v3, v4, v2}, Lcom/vkcoffee/android/upload/UploadException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 132
    .end local v2    # "x":Ljava/lang/Exception;
    .restart local v0    # "req":Lcom/vkcoffee/android/api/VKAPIRequest;
    .restart local v1    # "res":Z
    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 175
    invoke-super {p0, p1, p2}, Lcom/vkcoffee/android/upload/PhotoUploadTask;->writeToParcel(Landroid/os/Parcel;I)V

    .line 176
    iget v0, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->ownerID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-boolean v0, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->notify:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 178
    iget v0, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->mThumbLeft:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 179
    iget v0, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->mThumbTop:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 180
    iget v0, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->mThumbRight:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 181
    iget v0, p0, Lcom/vkcoffee/android/upload/ProfilePhotoUploadTask;->mThumbBottom:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 182
    return-void

    .line 177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
