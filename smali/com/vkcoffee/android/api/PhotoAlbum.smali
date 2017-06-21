.class public Lcom/vkcoffee/android/api/PhotoAlbum;
.super Ljava/lang/Object;
.source "PhotoAlbum.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/api/PhotoAlbum;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public canUpload:Z

.field public commentsDisabled:Z

.field public created:I

.field public descr:Ljava/lang/String;

.field public id:I

.field public numPhotos:I

.field public oid:I

.field public privacy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;",
            ">;"
        }
    .end annotation
.end field

.field public privacyComment:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;",
            ">;"
        }
    .end annotation
.end field

.field public thumbIsLast:Z

.field public thumbURL:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public updated:I

.field public uploadByAdminsOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/vkcoffee/android/api/PhotoAlbum$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/PhotoAlbum$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/api/PhotoAlbum;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->privacy:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->privacyComment:Ljava/util/List;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->privacy:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->privacyComment:Ljava/util/List;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->oid:I

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->updated:I

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->created:I

    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->privacy:Ljava/util/List;

    const-class v3, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    invoke-static {p1, v0, v3}, Lcom/vkcoffee/android/SystemUtils;->readParcelableList(Landroid/os/Parcel;Ljava/util/List;Ljava/lang/Class;)V

    .line 81
    iget-object v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->privacyComment:Ljava/util/List;

    const-class v3, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    invoke-static {p1, v0, v3}, Lcom/vkcoffee/android/SystemUtils;->readParcelableList(Landroid/os/Parcel;Ljava/util/List;Ljava/lang/Class;)V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->canUpload:Z

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->uploadByAdminsOnly:Z

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->commentsDisabled:Z

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->thumbIsLast:Z

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->type:Ljava/lang/String;

    .line 88
    return-void

    :cond_0
    move v0, v2

    .line 83
    goto :goto_0

    :cond_1
    move v0, v2

    .line 84
    goto :goto_1

    :cond_2
    move v0, v2

    .line 85
    goto :goto_2

    :cond_3
    move v1, v2

    .line 86
    goto :goto_3
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "ja"    # Lorg/json/JSONObject;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->privacy:Ljava/util/List;

    .line 28
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->privacyComment:Ljava/util/List;

    .line 42
    :try_start_0
    const-string/jumbo v5, "created"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->created:I

    .line 43
    const-string/jumbo v5, "updated"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->updated:I

    .line 44
    const-string/jumbo v5, "title"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 45
    iget-object v5, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 46
    sget-object v5, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08006c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->title:Ljava/lang/String;

    .line 48
    :cond_0
    const-string/jumbo v5, "description"

    const-string/jumbo v6, ""

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    .line 49
    const-string/jumbo v5, "id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    .line 50
    const-string/jumbo v5, "owner_id"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->oid:I

    .line 51
    const-string/jumbo v5, "size"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    .line 52
    const-string/jumbo v5, "upload_by_admins_only"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_3

    move v5, v3

    :goto_0
    iput-boolean v5, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->uploadByAdminsOnly:Z

    .line 53
    const-string/jumbo v5, "comments_disabled"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_4

    move v5, v3

    :goto_1
    iput-boolean v5, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->commentsDisabled:Z

    .line 54
    const-string/jumbo v5, "thumb_is_last"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_5

    :goto_2
    iput-boolean v3, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->thumbIsLast:Z

    .line 55
    const-string/jumbo v3, "privacy_view"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 56
    .local v0, "jpriv":Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    .line 57
    iget-object v3, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->privacy:Ljava/util/List;

    invoke-static {v0}, Lcom/vkcoffee/android/data/PrivacySetting;->parseApiValue(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    :cond_1
    const-string/jumbo v3, "privacy_comment"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 61
    .local v1, "jprivc":Lorg/json/JSONArray;
    if-eqz v1, :cond_2

    .line 62
    iget-object v3, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->privacyComment:Ljava/util/List;

    invoke-static {v1}, Lcom/vkcoffee/android/data/PrivacySetting;->parseApiValue(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    :cond_2
    const-string/jumbo v3, "thumb_src"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    .line 66
    const-string/jumbo v3, "type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->type:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v0    # "jpriv":Lorg/json/JSONArray;
    .end local v1    # "jprivc":Lorg/json/JSONArray;
    :goto_3
    return-void

    :cond_3
    move v5, v4

    .line 52
    goto :goto_0

    :cond_4
    move v5, v4

    .line 53
    goto :goto_1

    :cond_5
    move v3, v4

    .line 54
    goto :goto_2

    .line 67
    :catch_0
    move-exception v2

    .line 68
    .local v2, "x":Ljava/lang/Exception;
    const-string/jumbo v3, "vk"

    const-string/jumbo v4, "Error parsing photo album"

    invoke-static {v3, v4, v2}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    iget v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->oid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->updated:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->created:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->numPhotos:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->descr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->privacy:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/vkcoffee/android/SystemUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 115
    iget-object v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->privacyComment:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/vkcoffee/android/SystemUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 116
    iget-object v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->thumbURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-boolean v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->canUpload:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-boolean v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->uploadByAdminsOnly:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-boolean v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->commentsDisabled:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-boolean v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->thumbIsLast:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v0, p0, Lcom/vkcoffee/android/api/PhotoAlbum;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return-void

    :cond_0
    move v0, v2

    .line 117
    goto :goto_0

    :cond_1
    move v0, v2

    .line 118
    goto :goto_1

    :cond_2
    move v0, v2

    .line 119
    goto :goto_2

    :cond_3
    move v1, v2

    .line 120
    goto :goto_3
.end method
