.class public Lcom/vkcoffee/android/api/VideoAlbum;
.super Ljava/lang/Object;
.source "VideoAlbum.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ALBUM_ID_BOOKMARKS:I = -0x3ea

.field public static final ALBUM_ID_SYS_ADDED:I = -0x2

.field public static final ALBUM_ID_SYS_UPLOADED:I = -0x1

.field public static final ALBUM_ID_TAGGED:I = -0x3e9

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/api/VideoAlbum;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public count:I

.field public id:I

.field public lastUpdated:I

.field public ownerID:I

.field public photoBig:Ljava/lang/String;

.field public photoSmall:Ljava/lang/String;

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

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/vkcoffee/android/api/VideoAlbum$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/VideoAlbum$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/api/VideoAlbum;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/api/VideoAlbum;->privacy:Ljava/util/List;

    .line 35
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/api/VideoAlbum;->privacy:Ljava/util/List;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/VideoAlbum;->id:I

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/VideoAlbum;->title:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/VideoAlbum;->count:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/VideoAlbum;->ownerID:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/VideoAlbum;->photoBig:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/VideoAlbum;->photoSmall:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/VideoAlbum;->lastUpdated:I

    .line 77
    iget-object v0, p0, Lcom/vkcoffee/android/api/VideoAlbum;->privacy:Ljava/util/List;

    const-class v1, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    invoke-static {p1, v0, v1}, Lcom/vkcoffee/android/SystemUtils;->readParcelableList(Landroid/os/Parcel;Ljava/util/List;Ljava/lang/Class;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "o"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/vkcoffee/android/api/VideoAlbum;->privacy:Ljava/util/List;

    .line 38
    const-string/jumbo v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/api/VideoAlbum;->id:I

    .line 39
    const-string/jumbo v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/api/VideoAlbum;->title:Ljava/lang/String;

    .line 40
    const-string/jumbo v1, "count"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/api/VideoAlbum;->count:I

    .line 41
    const-string/jumbo v1, "owner_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/api/VideoAlbum;->ownerID:I

    .line 42
    const-string/jumbo v1, "photo_320"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/api/VideoAlbum;->photoBig:Ljava/lang/String;

    .line 43
    const-string/jumbo v1, "photo_160"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/api/VideoAlbum;->photoSmall:Ljava/lang/String;

    .line 44
    const-string/jumbo v1, "updated_time"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/vkcoffee/android/api/VideoAlbum;->lastUpdated:I

    .line 45
    const-string/jumbo v1, "privacy"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const-string/jumbo v1, "privacy"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 47
    .local v0, "privacy":Lorg/json/JSONArray;
    invoke-static {v0}, Lcom/vkcoffee/android/data/PrivacySetting;->parseApiValue(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/vkcoffee/android/api/VideoAlbum;->privacy:Ljava/util/List;

    .line 49
    .end local v0    # "privacy":Lorg/json/JSONArray;
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 82
    if-ne p0, p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v1

    .line 85
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 86
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 89
    check-cast v0, Lcom/vkcoffee/android/api/VideoAlbum;

    .line 91
    .local v0, "album":Lcom/vkcoffee/android/api/VideoAlbum;
    iget v3, p0, Lcom/vkcoffee/android/api/VideoAlbum;->id:I

    iget v4, v0, Lcom/vkcoffee/android/api/VideoAlbum;->id:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 92
    goto :goto_0

    .line 94
    :cond_4
    iget v3, p0, Lcom/vkcoffee/android/api/VideoAlbum;->ownerID:I

    iget v4, v0, Lcom/vkcoffee/android/api/VideoAlbum;->ownerID:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 100
    iget v0, p0, Lcom/vkcoffee/android/api/VideoAlbum;->id:I

    .line 101
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/vkcoffee/android/api/VideoAlbum;->ownerID:I

    add-int v0, v1, v2

    .line 102
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 59
    iget v0, p0, Lcom/vkcoffee/android/api/VideoAlbum;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-object v0, p0, Lcom/vkcoffee/android/api/VideoAlbum;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget v0, p0, Lcom/vkcoffee/android/api/VideoAlbum;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, Lcom/vkcoffee/android/api/VideoAlbum;->ownerID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    iget-object v0, p0, Lcom/vkcoffee/android/api/VideoAlbum;->photoBig:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/vkcoffee/android/api/VideoAlbum;->photoSmall:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 65
    iget v0, p0, Lcom/vkcoffee/android/api/VideoAlbum;->lastUpdated:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    iget-object v0, p0, Lcom/vkcoffee/android/api/VideoAlbum;->privacy:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/vkcoffee/android/SystemUtils;->writeParcelableList(Landroid/os/Parcel;Ljava/util/List;)V

    .line 67
    return-void
.end method
