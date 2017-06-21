.class public Lcom/vkcoffee/android/api/VideoFile;
.super Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;
.source "VideoFile.java"


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/api/VideoFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accessKey:Ljava/lang/String;

.field public canAdd:Z

.field public canComment:Z

.field public canEdit:Z

.field public canRepost:Z

.field public comments:I

.field public date:I

.field public descr:Ljava/lang/String;

.field public duration:I

.field public liked:Z

.field public likes:I

.field public oid:I

.field public ownerName:Ljava/lang/String;

.field public ownerPhoto:Ljava/lang/String;

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

.field public processing:Z

.field public repeat:Z

.field public title:Ljava/lang/String;

.field public url1080:Ljava/lang/String;

.field public url240:Ljava/lang/String;

.field public url360:Ljava/lang/String;

.field public url480:Ljava/lang/String;

.field public url720:Ljava/lang/String;

.field public urlBigThumb:Ljava/lang/String;

.field public urlEmbed:Ljava/lang/String;

.field public urlExternal:Ljava/lang/String;

.field public urlThumb:Ljava/lang/String;

.field public vid:I

.field public views:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 194
    new-instance v0, Lcom/vkcoffee/android/api/VideoFile$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/api/VideoFile$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/api/VideoFile;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->privacy:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->privacyComment:Ljava/util/List;

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 3
    .param p1, "p"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 55
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->privacy:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->privacyComment:Ljava/util/List;

    .line 56
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    .line 57
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/VideoFile;->vid:I

    .line 58
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    .line 59
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->url360:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->url480:Ljava/lang/String;

    .line 62
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->url720:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->url1080:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->urlEmbed:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->urlThumb:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->title:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->descr:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/VideoFile;->date:I

    .line 71
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/VideoFile;->views:I

    .line 72
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->ownerName:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->ownerPhoto:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->accessKey:Ljava/lang/String;

    .line 75
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/VideoFile;->likes:I

    .line 76
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/api/VideoFile;->comments:I

    .line 77
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/api/VideoFile;->liked:Z

    .line 78
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/vkcoffee/android/api/VideoFile;->repeat:Z

    .line 79
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/vkcoffee/android/api/VideoFile;->canComment:Z

    .line 80
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/vkcoffee/android/api/VideoFile;->canEdit:Z

    .line 81
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/vkcoffee/android/api/VideoFile;->canRepost:Z

    .line 82
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_5

    :goto_5
    iput-boolean v1, p0, Lcom/vkcoffee/android/api/VideoFile;->canAdd:Z

    .line 83
    iget-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->privacy:Ljava/util/List;

    const-class v1, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    invoke-static {p1, v0, v1}, Lcom/vkcoffee/android/SystemUtils;->readSerializerSerializableList(Lcom/vkcoffee/android/utils/Serializer;Ljava/util/List;Ljava/lang/Class;)V

    .line 84
    iget-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->privacyComment:Ljava/util/List;

    const-class v1, Lcom/vkcoffee/android/data/PrivacySetting$PrivacyRule;

    invoke-static {p1, v0, v1}, Lcom/vkcoffee/android/SystemUtils;->readSerializerSerializableList(Lcom/vkcoffee/android/utils/Serializer;Ljava/util/List;Ljava/lang/Class;)V

    .line 85
    return-void

    :cond_0
    move v0, v2

    .line 77
    goto :goto_0

    :cond_1
    move v0, v2

    .line 78
    goto :goto_1

    :cond_2
    move v0, v2

    .line 79
    goto :goto_2

    :cond_3
    move v0, v2

    .line 80
    goto :goto_3

    :cond_4
    move v0, v2

    .line 81
    goto :goto_4

    :cond_5
    move v1, v2

    .line 82
    goto :goto_5
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "jv"    # Lorg/json/JSONObject;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 87
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;-><init>()V

    .line 33
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/vkcoffee/android/api/VideoFile;->privacy:Ljava/util/List;

    .line 34
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/vkcoffee/android/api/VideoFile;->privacyComment:Ljava/util/List;

    .line 89
    :try_start_0
    const-string/jumbo v6, "video_id"

    const-string/jumbo v7, "id"

    const-string/jumbo v8, "vid"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/vkcoffee/android/api/VideoFile;->vid:I

    .line 90
    const-string/jumbo v6, "owner_id"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    .line 91
    const-string/jumbo v6, "title"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/api/VideoFile;->title:Ljava/lang/String;

    .line 92
    const-string/jumbo v6, "description"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/api/VideoFile;->descr:Ljava/lang/String;

    .line 93
    const-string/jumbo v6, "duration"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    .line 94
    const-string/jumbo v6, "photo_130"

    const-string/jumbo v7, "thumb"

    const-string/jumbo v8, "image"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/api/VideoFile;->urlThumb:Ljava/lang/String;

    .line 95
    const-string/jumbo v6, "photo_640"

    const-string/jumbo v7, "photo_320"

    const-string/jumbo v8, "image_medium"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    .line 96
    const-string/jumbo v6, "date"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/vkcoffee/android/api/VideoFile;->date:I

    .line 97
    const-string/jumbo v6, "views"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/vkcoffee/android/api/VideoFile;->views:I

    .line 98
    const-string/jumbo v6, "files"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 99
    .local v0, "files":Lorg/json/JSONObject;
    if-eqz v0, :cond_c

    .line 100
    const-string/jumbo v6, "flv_320"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 101
    const-string/jumbo v6, "flv_320"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 103
    :cond_0
    const-string/jumbo v6, "mp4_240"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 104
    const-string/jumbo v6, "mp4_240"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 108
    :cond_1
    :goto_0
    const-string/jumbo v6, "mp4_360"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 109
    const-string/jumbo v6, "mp4_360"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/api/VideoFile;->url360:Ljava/lang/String;

    .line 111
    :cond_2
    const-string/jumbo v6, "mp4_480"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 112
    const-string/jumbo v6, "mp4_480"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/api/VideoFile;->url480:Ljava/lang/String;

    .line 114
    :cond_3
    const-string/jumbo v6, "mp4_720"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 115
    const-string/jumbo v6, "mp4_720"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/api/VideoFile;->url720:Ljava/lang/String;

    .line 117
    :cond_4
    const-string/jumbo v6, "mp4_1080"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 118
    const-string/jumbo v6, "mp4_1080"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/api/VideoFile;->url1080:Ljava/lang/String;

    .line 120
    :cond_5
    const-string/jumbo v6, "external"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 121
    const-string/jumbo v6, "external"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    .line 126
    :cond_6
    :goto_1
    iget-object v6, p0, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    const-string/jumbo v7, ".mp4"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 127
    iget-object v6, p0, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    iput-object v6, p0, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    .line 128
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    .line 130
    :cond_7
    const-string/jumbo v6, "player"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/api/VideoFile;->urlEmbed:Ljava/lang/String;

    .line 131
    const-string/jumbo v6, "likes"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 132
    const-string/jumbo v6, "likes"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "count"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/vkcoffee/android/api/VideoFile;->likes:I

    .line 133
    const-string/jumbo v6, "likes"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string/jumbo v7, "user_likes"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v4, :cond_d

    move v6, v4

    :goto_2
    iput-boolean v6, p0, Lcom/vkcoffee/android/api/VideoFile;->liked:Z

    .line 135
    :cond_8
    const-string/jumbo v6, "comments"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/vkcoffee/android/api/VideoFile;->comments:I

    .line 136
    const-string/jumbo v6, "repeat"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v4, :cond_e

    move v6, v4

    :goto_3
    iput-boolean v6, p0, Lcom/vkcoffee/android/api/VideoFile;->repeat:Z

    .line 137
    const-string/jumbo v6, "access_key"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/api/VideoFile;->accessKey:Ljava/lang/String;

    .line 139
    const-string/jumbo v6, "privacy_view"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 140
    .local v1, "jpriv":Lorg/json/JSONArray;
    if-eqz v1, :cond_9

    .line 141
    iget-object v6, p0, Lcom/vkcoffee/android/api/VideoFile;->privacy:Ljava/util/List;

    invoke-static {v1}, Lcom/vkcoffee/android/data/PrivacySetting;->parseApiValue(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    :cond_9
    const-string/jumbo v6, "privacy_comment"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 145
    .local v2, "jprivc":Lorg/json/JSONArray;
    if-eqz v2, :cond_a

    .line 146
    iget-object v6, p0, Lcom/vkcoffee/android/api/VideoFile;->privacyComment:Ljava/util/List;

    invoke-static {v2}, Lcom/vkcoffee/android/data/PrivacySetting;->parseApiValue(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 149
    :cond_a
    const-string/jumbo v6, "can_comment"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v4, :cond_f

    move v6, v4

    :goto_4
    iput-boolean v6, p0, Lcom/vkcoffee/android/api/VideoFile;->canComment:Z

    .line 150
    const-string/jumbo v6, "can_edit"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v4, :cond_10

    move v6, v4

    :goto_5
    iput-boolean v6, p0, Lcom/vkcoffee/android/api/VideoFile;->canEdit:Z

    .line 151
    const-string/jumbo v6, "can_repost"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v4, :cond_11

    move v6, v4

    :goto_6
    iput-boolean v6, p0, Lcom/vkcoffee/android/api/VideoFile;->canRepost:Z

    .line 152
    const-string/jumbo v6, "is_private"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_12

    move v6, v4

    :goto_7
    iput-boolean v6, p0, Lcom/vkcoffee/android/api/VideoFile;->canAdd:Z

    .line 154
    const-string/jumbo v6, "processing"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v4, :cond_13

    :goto_8
    iput-boolean v4, p0, Lcom/vkcoffee/android/api/VideoFile;->processing:Z

    .line 159
    .end local v0    # "files":Lorg/json/JSONObject;
    .end local v1    # "jpriv":Lorg/json/JSONArray;
    .end local v2    # "jprivc":Lorg/json/JSONArray;
    :goto_9
    return-void

    .line 105
    .restart local v0    # "files":Lorg/json/JSONObject;
    :cond_b
    const-string/jumbo v6, "src"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 106
    const-string/jumbo v6, "src"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 156
    .end local v0    # "files":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    .line 157
    .local v3, "x":Ljava/lang/Exception;
    const-string/jumbo v4, "vk"

    invoke-static {v4, v3}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9

    .line 124
    .end local v3    # "x":Ljava/lang/Exception;
    .restart local v0    # "files":Lorg/json/JSONObject;
    :cond_c
    :try_start_1
    const-string/jumbo v6, "player"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :cond_d
    move v6, v5

    .line 133
    goto/16 :goto_2

    :cond_e
    move v6, v5

    .line 136
    goto/16 :goto_3

    .restart local v1    # "jpriv":Lorg/json/JSONArray;
    .restart local v2    # "jprivc":Lorg/json/JSONArray;
    :cond_f
    move v6, v5

    .line 149
    goto :goto_4

    :cond_10
    move v6, v5

    .line 150
    goto :goto_5

    :cond_11
    move v6, v5

    .line 151
    goto :goto_6

    :cond_12
    move v6, v5

    .line 152
    goto :goto_7

    :cond_13
    move v4, v5

    .line 154
    goto :goto_8
.end method


# virtual methods
.method public convertToPost()Lcom/vkcoffee/android/NewsEntry;
    .locals 3

    .prologue
    .line 207
    new-instance v0, Lcom/vkcoffee/android/NewsEntry;

    invoke-direct {v0}, Lcom/vkcoffee/android/NewsEntry;-><init>()V

    .line 208
    .local v0, "post":Lcom/vkcoffee/android/NewsEntry;
    iget-object v1, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    new-instance v2, Lcom/vkcoffee/android/attachments/VideoAttachment;

    invoke-direct {v2, p0}, Lcom/vkcoffee/android/attachments/VideoAttachment;-><init>(Lcom/vkcoffee/android/api/VideoFile;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget v1, p0, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->userID:I

    .line 210
    iget v1, p0, Lcom/vkcoffee/android/api/VideoFile;->vid:I

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 211
    const/4 v1, 0x2

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 212
    iget-object v1, p0, Lcom/vkcoffee/android/api/VideoFile;->descr:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    .line 213
    iget v1, p0, Lcom/vkcoffee/android/api/VideoFile;->date:I

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->time:I

    .line 214
    iget-object v1, p0, Lcom/vkcoffee/android/api/VideoFile;->ownerName:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/NewsEntry;->userName:Ljava/lang/String;

    .line 215
    iget-object v1, p0, Lcom/vkcoffee/android/api/VideoFile;->ownerPhoto:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/NewsEntry;->userPhotoURL:Ljava/lang/String;

    .line 216
    iget-boolean v1, p0, Lcom/vkcoffee/android/api/VideoFile;->canComment:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v1, v2, :cond_1

    .line 217
    :cond_0
    iget v1, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 219
    :cond_1
    iget-boolean v1, p0, Lcom/vkcoffee/android/api/VideoFile;->liked:Z

    if-eqz v1, :cond_2

    .line 220
    iget v1, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 222
    :cond_2
    iget-boolean v1, p0, Lcom/vkcoffee/android/api/VideoFile;->canRepost:Z

    if-eqz v1, :cond_3

    .line 223
    iget v1, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->flags:I

    .line 225
    :cond_3
    iget v1, p0, Lcom/vkcoffee/android/api/VideoFile;->likes:I

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    .line 226
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    if-ne p0, p1, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v1

    .line 234
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 235
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 237
    check-cast v0, Lcom/vkcoffee/android/api/VideoFile;

    .line 238
    .local v0, "videoFile":Lcom/vkcoffee/android/api/VideoFile;
    iget v3, p0, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    iget v4, v0, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/vkcoffee/android/api/VideoFile;->vid:I

    iget v4, v0, Lcom/vkcoffee/android/api/VideoFile;->vid:I

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 244
    iget v0, p0, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    .line 245
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/vkcoffee/android/api/VideoFile;->vid:I

    add-int v0, v1, v2

    .line 246
    return v0
.end method

.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 3
    .param p1, "p"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 163
    iget v0, p0, Lcom/vkcoffee/android/api/VideoFile;->oid:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 164
    iget v0, p0, Lcom/vkcoffee/android/api/VideoFile;->vid:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 165
    iget v0, p0, Lcom/vkcoffee/android/api/VideoFile;->duration:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 166
    iget-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->url240:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->url360:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->url480:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->url720:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->url1080:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->urlExternal:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->urlEmbed:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->urlThumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->urlBigThumb:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->descr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 177
    iget v0, p0, Lcom/vkcoffee/android/api/VideoFile;->date:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 178
    iget v0, p0, Lcom/vkcoffee/android/api/VideoFile;->views:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 179
    iget-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->ownerName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->ownerPhoto:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->accessKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 182
    iget v0, p0, Lcom/vkcoffee/android/api/VideoFile;->likes:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 183
    iget v0, p0, Lcom/vkcoffee/android/api/VideoFile;->comments:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 184
    iget-boolean v0, p0, Lcom/vkcoffee/android/api/VideoFile;->liked:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 185
    iget-boolean v0, p0, Lcom/vkcoffee/android/api/VideoFile;->repeat:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 186
    iget-boolean v0, p0, Lcom/vkcoffee/android/api/VideoFile;->canComment:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 187
    iget-boolean v0, p0, Lcom/vkcoffee/android/api/VideoFile;->canEdit:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 188
    iget-boolean v0, p0, Lcom/vkcoffee/android/api/VideoFile;->canRepost:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 189
    iget-boolean v0, p0, Lcom/vkcoffee/android/api/VideoFile;->canAdd:Z

    if-eqz v0, :cond_5

    :goto_5
    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 190
    iget-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->privacy:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/vkcoffee/android/SystemUtils;->writeSerializerSerializableList(Lcom/vkcoffee/android/utils/Serializer;Ljava/util/List;)V

    .line 191
    iget-object v0, p0, Lcom/vkcoffee/android/api/VideoFile;->privacyComment:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/vkcoffee/android/SystemUtils;->writeSerializerSerializableList(Lcom/vkcoffee/android/utils/Serializer;Ljava/util/List;)V

    .line 192
    return-void

    :cond_0
    move v0, v2

    .line 184
    goto :goto_0

    :cond_1
    move v0, v2

    .line 185
    goto :goto_1

    :cond_2
    move v0, v2

    .line 186
    goto :goto_2

    :cond_3
    move v0, v2

    .line 187
    goto :goto_3

    :cond_4
    move v0, v2

    .line 188
    goto :goto_4

    :cond_5
    move v1, v2

    .line 189
    goto :goto_5
.end method
