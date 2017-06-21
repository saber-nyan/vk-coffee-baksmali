.class public Lcom/vkcoffee/android/Photo;
.super Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;
.source "Photo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/Photo$Image;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/Photo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public accessKey:Ljava/lang/String;

.field public albumID:I

.field public canComment:Z

.field public comments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/NewsComment;",
            ">;"
        }
    .end annotation
.end field

.field public date:I

.field public descr:Ljava/lang/String;

.field public fullURL:Ljava/lang/String;

.field public geoAddress:Ljava/lang/String;

.field public hidden:Z

.field public id:I

.field public infoLoaded:Z

.field public isLiked:Z

.field public lat:D

.field public transient loadingAddress:Z

.field public lon:D

.field public nComments:I

.field public nLikes:I

.field public nTags:I

.field public ownerID:I

.field public postID:I

.field public realOffset:I

.field public sizes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/Photo$Image;",
            ">;"
        }
    .end annotation
.end field

.field public tags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/PhotoTag;",
            ">;"
        }
    .end annotation
.end field

.field public thumbURL:Ljava/lang/String;

.field public user:Lcom/vkcoffee/android/UserProfile;

.field public userID:I

.field public viewBounds:Landroid/graphics/Rect;

.field public viewClipTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lcom/vkcoffee/android/Photo$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/Photo$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/Photo;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-wide v2, -0x3f3e6c0000000000L    # -9000.0

    .line 49
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;-><init>()V

    .line 27
    iput-boolean v1, p0, Lcom/vkcoffee/android/Photo;->infoLoaded:Z

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vkcoffee/android/Photo;->canComment:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/Photo;->tags:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/Photo;->sizes:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/Photo;->comments:Ljava/util/ArrayList;

    .line 38
    iput-wide v2, p0, Lcom/vkcoffee/android/Photo;->lat:D

    iput-wide v2, p0, Lcom/vkcoffee/android/Photo;->lon:D

    .line 42
    iput-boolean v1, p0, Lcom/vkcoffee/android/Photo;->loadingAddress:Z

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/Photo;->realOffset:I

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/attachments/PhotoAttachment;)V
    .locals 9
    .param p1, "att"    # Lcom/vkcoffee/android/attachments/PhotoAttachment;

    .prologue
    const/4 v8, 0x0

    const-wide v6, -0x3f3e6c0000000000L    # -9000.0

    .line 85
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;-><init>()V

    .line 27
    iput-boolean v8, p0, Lcom/vkcoffee/android/Photo;->infoLoaded:Z

    .line 29
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/vkcoffee/android/Photo;->canComment:Z

    .line 35
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/vkcoffee/android/Photo;->tags:Ljava/util/ArrayList;

    .line 36
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/vkcoffee/android/Photo;->sizes:Ljava/util/ArrayList;

    .line 37
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/vkcoffee/android/Photo;->comments:Ljava/util/ArrayList;

    .line 38
    iput-wide v6, p0, Lcom/vkcoffee/android/Photo;->lat:D

    iput-wide v6, p0, Lcom/vkcoffee/android/Photo;->lon:D

    .line 42
    iput-boolean v8, p0, Lcom/vkcoffee/android/Photo;->loadingAddress:Z

    .line 47
    const/4 v5, -0x1

    iput v5, p0, Lcom/vkcoffee/android/Photo;->realOffset:I

    .line 86
    iget-object v5, p1, Lcom/vkcoffee/android/attachments/PhotoAttachment;->srcBig:Ljava/lang/String;

    iput-object v5, p0, Lcom/vkcoffee/android/Photo;->fullURL:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lcom/vkcoffee/android/attachments/PhotoAttachment;->getThumbURL()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/vkcoffee/android/Photo;->thumbURL:Ljava/lang/String;

    .line 88
    iget v5, p1, Lcom/vkcoffee/android/attachments/PhotoAttachment;->aid:I

    iput v5, p0, Lcom/vkcoffee/android/Photo;->albumID:I

    .line 89
    iget v5, p1, Lcom/vkcoffee/android/attachments/PhotoAttachment;->pid:I

    iput v5, p0, Lcom/vkcoffee/android/Photo;->id:I

    .line 90
    iget v5, p1, Lcom/vkcoffee/android/attachments/PhotoAttachment;->oid:I

    iput v5, p0, Lcom/vkcoffee/android/Photo;->ownerID:I

    .line 91
    iget v5, p1, Lcom/vkcoffee/android/attachments/PhotoAttachment;->uid:I

    iput v5, p0, Lcom/vkcoffee/android/Photo;->userID:I

    .line 92
    iget v5, p1, Lcom/vkcoffee/android/attachments/PhotoAttachment;->date:I

    iput v5, p0, Lcom/vkcoffee/android/Photo;->date:I

    .line 93
    iget-object v5, p1, Lcom/vkcoffee/android/attachments/PhotoAttachment;->descr:Ljava/lang/String;

    iput-object v5, p0, Lcom/vkcoffee/android/Photo;->descr:Ljava/lang/String;

    .line 94
    iget-object v5, p1, Lcom/vkcoffee/android/attachments/PhotoAttachment;->accessKey:Ljava/lang/String;

    iput-object v5, p0, Lcom/vkcoffee/android/Photo;->accessKey:Ljava/lang/String;

    .line 95
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/vkcoffee/android/Photo;->sizes:Ljava/util/ArrayList;

    .line 96
    iget-object v4, p1, Lcom/vkcoffee/android/attachments/PhotoAttachment;->images:Ljava/util/HashMap;

    .line 97
    .local v4, "sizes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;>;"
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 98
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 99
    .local v1, "k":Ljava/lang/String;
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;

    .line 100
    .local v0, "im":Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;
    new-instance v3, Lcom/vkcoffee/android/Photo$Image;

    invoke-direct {v3}, Lcom/vkcoffee/android/Photo$Image;-><init>()V

    .line 101
    .local v3, "p":Lcom/vkcoffee/android/Photo$Image;
    iget v6, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->height:I

    iput v6, v3, Lcom/vkcoffee/android/Photo$Image;->height:I

    .line 102
    iget v6, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->width:I

    iput v6, v3, Lcom/vkcoffee/android/Photo$Image;->width:I

    .line 103
    iget-char v6, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->type:C

    iput-char v6, v3, Lcom/vkcoffee/android/Photo$Image;->type:C

    .line 104
    iget-object v6, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;->url:Ljava/lang/String;

    iput-object v6, v3, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    .line 105
    iget-object v6, p0, Lcom/vkcoffee/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    .end local v0    # "im":Lcom/vkcoffee/android/attachments/PhotoAttachment$Image;
    .end local v1    # "k":Ljava/lang/String;
    .end local v3    # "p":Lcom/vkcoffee/android/Photo$Image;
    :cond_0
    iget v5, p1, Lcom/vkcoffee/android/attachments/PhotoAttachment;->postID:I

    iput v5, p0, Lcom/vkcoffee/android/Photo;->postID:I

    .line 108
    iget-wide v6, p1, Lcom/vkcoffee/android/attachments/PhotoAttachment;->lat:D

    iput-wide v6, p0, Lcom/vkcoffee/android/Photo;->lat:D

    .line 109
    iget-wide v6, p1, Lcom/vkcoffee/android/attachments/PhotoAttachment;->lon:D

    iput-wide v6, p0, Lcom/vkcoffee/android/Photo;->lon:D

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 7
    .param p1, "p"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    const-wide v4, -0x3f3e6c0000000000L    # -9000.0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 52
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;-><init>()V

    .line 27
    iput-boolean v2, p0, Lcom/vkcoffee/android/Photo;->infoLoaded:Z

    .line 29
    iput-boolean v1, p0, Lcom/vkcoffee/android/Photo;->canComment:Z

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/Photo;->tags:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/Photo;->sizes:Ljava/util/ArrayList;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/Photo;->comments:Ljava/util/ArrayList;

    .line 38
    iput-wide v4, p0, Lcom/vkcoffee/android/Photo;->lat:D

    iput-wide v4, p0, Lcom/vkcoffee/android/Photo;->lon:D

    .line 42
    iput-boolean v2, p0, Lcom/vkcoffee/android/Photo;->loadingAddress:Z

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/Photo;->realOffset:I

    .line 53
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/Photo;->id:I

    .line 54
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/Photo;->albumID:I

    .line 55
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/Photo;->ownerID:I

    .line 56
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/Photo;->userID:I

    .line 57
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/Photo;->date:I

    .line 58
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/Photo;->nLikes:I

    .line 59
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/Photo;->nComments:I

    .line 60
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/Photo;->nTags:I

    .line 61
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/Photo;->infoLoaded:Z

    .line 62
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/vkcoffee/android/Photo;->isLiked:Z

    .line 63
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/vkcoffee/android/Photo;->canComment:Z

    .line 64
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/Photo;->thumbURL:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/Photo;->fullURL:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/Photo;->geoAddress:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/Photo;->descr:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/vkcoffee/android/Photo;->lat:D

    .line 69
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/vkcoffee/android/Photo;->lon:D

    .line 70
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/Photo;->accessKey:Ljava/lang/String;

    .line 72
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v3

    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v4

    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v5

    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v6

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/vkcoffee/android/Photo;->viewBounds:Landroid/graphics/Rect;

    .line 78
    :goto_3
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/Photo;->viewClipTop:I

    .line 79
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/Photo;->postID:I

    .line 80
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_4

    :goto_4
    iput-boolean v1, p0, Lcom/vkcoffee/android/Photo;->hidden:Z

    .line 81
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/Photo;->deserializeImages(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/Photo;->realOffset:I

    .line 83
    return-void

    :cond_0
    move v0, v2

    .line 61
    goto :goto_0

    :cond_1
    move v0, v2

    .line 62
    goto :goto_1

    :cond_2
    move v0, v2

    .line 63
    goto :goto_2

    .line 75
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/Photo;->viewBounds:Landroid/graphics/Rect;

    goto :goto_3

    :cond_4
    move v1, v2

    .line 80
    goto :goto_4
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    const/4 v10, -0x1

    const-wide v8, -0x3f3e6c0000000000L    # -9000.0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 112
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;-><init>()V

    .line 27
    iput-boolean v6, p0, Lcom/vkcoffee/android/Photo;->infoLoaded:Z

    .line 29
    iput-boolean v5, p0, Lcom/vkcoffee/android/Photo;->canComment:Z

    .line 35
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/vkcoffee/android/Photo;->tags:Ljava/util/ArrayList;

    .line 36
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/vkcoffee/android/Photo;->sizes:Ljava/util/ArrayList;

    .line 37
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/vkcoffee/android/Photo;->comments:Ljava/util/ArrayList;

    .line 38
    iput-wide v8, p0, Lcom/vkcoffee/android/Photo;->lat:D

    iput-wide v8, p0, Lcom/vkcoffee/android/Photo;->lon:D

    .line 42
    iput-boolean v6, p0, Lcom/vkcoffee/android/Photo;->loadingAddress:Z

    .line 47
    iput v10, p0, Lcom/vkcoffee/android/Photo;->realOffset:I

    .line 114
    :try_start_0
    const-string/jumbo v7, "id"

    const-string/jumbo v8, "pid"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/vkcoffee/android/Photo;->id:I

    .line 115
    const-string/jumbo v7, "owner_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/vkcoffee/android/Photo;->ownerID:I

    .line 116
    const-string/jumbo v7, "album_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/vkcoffee/android/Photo;->albumID:I

    .line 117
    const-string/jumbo v7, "user_id"

    iget v8, p0, Lcom/vkcoffee/android/Photo;->ownerID:I

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/vkcoffee/android/Photo;->userID:I

    .line 118
    iget v7, p0, Lcom/vkcoffee/android/Photo;->userID:I

    const/16 v8, 0x64

    if-ne v7, v8, :cond_0

    .line 119
    iget v7, p0, Lcom/vkcoffee/android/Photo;->ownerID:I

    iput v7, p0, Lcom/vkcoffee/android/Photo;->userID:I

    .line 121
    :cond_0
    const-string/jumbo v7, "text"

    const-string/jumbo v8, ""

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkcoffee/android/Photo;->descr:Ljava/lang/String;

    .line 122
    const-string/jumbo v7, "access_key"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkcoffee/android/Photo;->accessKey:Ljava/lang/String;

    .line 123
    const-string/jumbo v7, "date"

    const-string/jumbo v8, "created"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/vkcoffee/android/Photo;->date:I

    .line 124
    const-string/jumbo v7, "comments"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "tags"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 125
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/vkcoffee/android/Photo;->infoLoaded:Z

    .line 126
    const-string/jumbo v7, "comments"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "count"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/vkcoffee/android/Photo;->nComments:I

    .line 127
    const-string/jumbo v7, "tags"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "count"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/vkcoffee/android/Photo;->nTags:I

    .line 129
    :cond_1
    const-string/jumbo v7, "likes"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 130
    const-string/jumbo v7, "likes"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "count"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/vkcoffee/android/Photo;->nLikes:I

    .line 131
    const-string/jumbo v7, "likes"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v8, "user_likes"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v5, :cond_3

    move v7, v5

    :goto_0
    iput-boolean v7, p0, Lcom/vkcoffee/android/Photo;->isLiked:Z

    .line 133
    :cond_2
    const-string/jumbo v7, "can_comment"

    const/4 v8, 0x1

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_4

    move v7, v5

    :goto_1
    iput-boolean v7, p0, Lcom/vkcoffee/android/Photo;->canComment:Z

    .line 134
    const-string/jumbo v7, "sizes"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 135
    const-string/jumbo v7, "sizes"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 136
    .local v3, "sizes":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v0, v7, :cond_5

    .line 137
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 138
    .local v2, "size":Lorg/json/JSONObject;
    new-instance v1, Lcom/vkcoffee/android/Photo$Image;

    invoke-direct {v1}, Lcom/vkcoffee/android/Photo$Image;-><init>()V

    .line 139
    .local v1, "img":Lcom/vkcoffee/android/Photo$Image;
    const-string/jumbo v7, "height"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/vkcoffee/android/Photo$Image;->height:I

    .line 140
    const-string/jumbo v7, "width"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v1, Lcom/vkcoffee/android/Photo$Image;->width:I

    .line 141
    const-string/jumbo v7, "type"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v7

    iput-char v7, v1, Lcom/vkcoffee/android/Photo$Image;->type:C

    .line 142
    const-string/jumbo v7, "src"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    .line 143
    iget-object v7, p0, Lcom/vkcoffee/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    .end local v1    # "img":Lcom/vkcoffee/android/Photo$Image;
    .end local v2    # "size":Lorg/json/JSONObject;
    .end local v3    # "sizes":Lorg/json/JSONArray;
    :cond_3
    move v7, v6

    .line 131
    goto :goto_0

    :cond_4
    move v7, v6

    .line 133
    goto :goto_1

    .line 146
    :cond_5
    const-string/jumbo v7, "lat"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string/jumbo v7, "long"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 147
    const-string/jumbo v7, "lat"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/vkcoffee/android/Photo;->lat:D

    .line 148
    const-string/jumbo v7, "long"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, p0, Lcom/vkcoffee/android/Photo;->lon:D

    .line 150
    :cond_6
    const-string/jumbo v7, "access_key"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/vkcoffee/android/Photo;->accessKey:Ljava/lang/String;

    .line 151
    const-string/jumbo v7, "post_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/vkcoffee/android/Photo;->postID:I

    .line 152
    const-string/jumbo v7, "hidden"

    const/4 v8, 0x0

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v5, :cond_7

    :goto_3
    iput-boolean v5, p0, Lcom/vkcoffee/android/Photo;->hidden:Z

    .line 153
    const-string/jumbo v5, "real_offset"

    const/4 v6, -0x1

    invoke-virtual {p1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/vkcoffee/android/Photo;->realOffset:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_4
    return-void

    :cond_7
    move v5, v6

    .line 152
    goto :goto_3

    .line 154
    :catch_0
    move-exception v4

    .line 155
    .local v4, "x":Ljava/lang/Exception;
    const-string/jumbo v5, "vk"

    const-string/jumbo v6, "Error parsing photo!"

    invoke-static {v5, v6, v4}, Lcom/vkcoffee/android/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4
.end method


# virtual methods
.method public deserializeImages(Ljava/lang/String;)V
    .locals 11
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 289
    :try_start_0
    const-string/jumbo v8, "\\$"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 290
    .local v5, "ss":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "srcX":Ljava/lang/String;
    const/4 v4, 0x0

    .line 291
    .local v4, "srcY":Ljava/lang/String;
    array-length v8, v5

    :goto_0
    if-ge v7, v8, :cond_3

    aget-object v1, v5, v7

    .line 292
    .local v1, "p":Ljava/lang/String;
    const-string/jumbo v9, "\\^"

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, "pp":[Ljava/lang/String;
    new-instance v0, Lcom/vkcoffee/android/Photo$Image;

    invoke-direct {v0}, Lcom/vkcoffee/android/Photo$Image;-><init>()V

    .line 294
    .local v0, "im":Lcom/vkcoffee/android/Photo$Image;
    const/4 v9, 0x0

    aget-object v9, v2, v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v9

    iput-char v9, v0, Lcom/vkcoffee/android/Photo$Image;->type:C

    .line 295
    const/4 v9, 0x1

    aget-object v9, v2, v9

    iput-object v9, v0, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    .line 296
    const/4 v9, 0x2

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/vkcoffee/android/Photo$Image;->width:I

    .line 297
    const/4 v9, 0x3

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    iput v9, v0, Lcom/vkcoffee/android/Photo$Image;->height:I

    .line 298
    iget-object v9, p0, Lcom/vkcoffee/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    iget-char v9, v0, Lcom/vkcoffee/android/Photo$Image;->type:C

    const/16 v10, 0x6d

    if-ne v9, v10, :cond_0

    .line 300
    iget-object v9, v0, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    iput-object v9, p0, Lcom/vkcoffee/android/Photo;->thumbURL:Ljava/lang/String;

    .line 302
    :cond_0
    iget-char v9, v0, Lcom/vkcoffee/android/Photo$Image;->type:C

    const/16 v10, 0x78

    if-ne v9, v10, :cond_1

    .line 303
    iget-object v3, v0, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    .line 305
    :cond_1
    iget-char v9, v0, Lcom/vkcoffee/android/Photo$Image;->type:C

    const/16 v10, 0x79

    if-ne v9, v10, :cond_2

    .line 306
    iget-object v4, v0, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    .line 291
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 309
    .end local v0    # "im":Lcom/vkcoffee/android/Photo$Image;
    .end local v1    # "p":Ljava/lang/String;
    .end local v2    # "pp":[Ljava/lang/String;
    :cond_3
    sget v7, Lcom/vkcoffee/android/Global;->displayDensity:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_4

    sget-boolean v7, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-eqz v7, :cond_6

    .line 310
    :cond_4
    if-eqz v4, :cond_5

    .end local v4    # "srcY":Ljava/lang/String;
    :goto_1
    iput-object v4, p0, Lcom/vkcoffee/android/Photo;->fullURL:Ljava/lang/String;

    .line 317
    .end local v3    # "srcX":Ljava/lang/String;
    .end local v5    # "ss":[Ljava/lang/String;
    :goto_2
    return-void

    .restart local v3    # "srcX":Ljava/lang/String;
    .restart local v4    # "srcY":Ljava/lang/String;
    .restart local v5    # "ss":[Ljava/lang/String;
    :cond_5
    move-object v4, v3

    .line 310
    goto :goto_1

    .line 312
    :cond_6
    iput-object v3, p0, Lcom/vkcoffee/android/Photo;->fullURL:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 314
    .end local v3    # "srcX":Ljava/lang/String;
    .end local v4    # "srcY":Ljava/lang/String;
    .end local v5    # "ss":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 315
    .local v6, "x":Ljava/lang/Exception;
    invoke-static {v6}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method public getImage(C)Lcom/vkcoffee/android/Photo$Image;
    .locals 3
    .param p1, "s"    # C

    .prologue
    .line 245
    iget-object v1, p0, Lcom/vkcoffee/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/Photo$Image;

    .line 246
    .local v0, "im":Lcom/vkcoffee/android/Photo$Image;
    iget-char v2, v0, Lcom/vkcoffee/android/Photo$Image;->type:C

    if-ne v2, p1, :cond_0

    .line 258
    .end local v0    # "im":Lcom/vkcoffee/android/Photo$Image;
    :goto_0
    return-object v0

    .line 250
    :cond_1
    const/16 v1, 0x73

    if-eq p1, v1, :cond_2

    const/16 v1, 0x6d

    if-eq p1, v1, :cond_2

    const/16 v1, 0x78

    if-ne p1, v1, :cond_3

    .line 251
    :cond_2
    new-instance v0, Lcom/vkcoffee/android/Photo$Image;

    invoke-direct {v0}, Lcom/vkcoffee/android/Photo$Image;-><init>()V

    .line 252
    .restart local v0    # "im":Lcom/vkcoffee/android/Photo$Image;
    iput-char p1, v0, Lcom/vkcoffee/android/Photo$Image;->type:C

    .line 253
    const/4 v1, 0x1

    iput v1, v0, Lcom/vkcoffee/android/Photo$Image;->height:I

    iput v1, v0, Lcom/vkcoffee/android/Photo$Image;->width:I

    .line 254
    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    goto :goto_0

    .line 258
    .end local v0    # "im":Lcom/vkcoffee/android/Photo$Image;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getImage(CC)Lcom/vkcoffee/android/Photo$Image;
    .locals 1
    .param p1, "s"    # C
    .param p2, "fallback"    # C

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v0

    .line 273
    .local v0, "im":Lcom/vkcoffee/android/Photo$Image;
    if-eqz v0, :cond_0

    .line 276
    .end local v0    # "im":Lcom/vkcoffee/android/Photo$Image;
    :goto_0
    return-object v0

    .restart local v0    # "im":Lcom/vkcoffee/android/Photo$Image;
    :cond_0
    invoke-virtual {p0, p2}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v0

    goto :goto_0
.end method

.method public getImage([C)Lcom/vkcoffee/android/Photo$Image;
    .locals 4
    .param p1, "sizes"    # [C

    .prologue
    .line 262
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-char v0, p1, v2

    .line 263
    .local v0, "c":C
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v1

    .line 264
    .local v1, "im":Lcom/vkcoffee/android/Photo$Image;
    if-eqz v1, :cond_0

    .line 268
    .end local v0    # "c":C
    .end local v1    # "im":Lcom/vkcoffee/android/Photo$Image;
    :goto_1
    return-object v1

    .line 262
    .restart local v0    # "c":C
    .restart local v1    # "im":Lcom/vkcoffee/android/Photo$Image;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    .end local v0    # "c":C
    .end local v1    # "im":Lcom/vkcoffee/android/Photo$Image;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getImageByHeight(I)Lcom/vkcoffee/android/Photo$Image;
    .locals 6
    .param p1, "height"    # I

    .prologue
    .line 232
    const v1, 0x7fffffff

    .line 233
    .local v1, "dif":I
    const/4 v0, 0x0

    .line 234
    .local v0, "bestImage":Lcom/vkcoffee/android/Photo$Image;
    iget-object v4, p0, Lcom/vkcoffee/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/Photo$Image;

    .line 235
    .local v2, "image":Lcom/vkcoffee/android/Photo$Image;
    iget v5, v2, Lcom/vkcoffee/android/Photo$Image;->height:I

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 236
    .local v3, "newDif":I
    if-ge v3, v1, :cond_0

    iget v5, v2, Lcom/vkcoffee/android/Photo$Image;->height:I

    if-lt v5, p1, :cond_0

    .line 237
    move-object v0, v2

    .line 238
    move v1, v3

    goto :goto_0

    .line 241
    .end local v2    # "image":Lcom/vkcoffee/android/Photo$Image;
    .end local v3    # "newDif":I
    :cond_1
    if-nez v0, :cond_2

    const/16 v4, 0x6d

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v0

    .end local v0    # "bestImage":Lcom/vkcoffee/android/Photo$Image;
    :cond_2
    return-object v0
.end method

.method public getImageByWidth(I)Lcom/vkcoffee/android/Photo$Image;
    .locals 6
    .param p1, "width"    # I

    .prologue
    .line 219
    const v1, 0x7fffffff

    .line 220
    .local v1, "dif":I
    const/4 v0, 0x0

    .line 221
    .local v0, "bestImage":Lcom/vkcoffee/android/Photo$Image;
    iget-object v4, p0, Lcom/vkcoffee/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/Photo$Image;

    .line 222
    .local v2, "image":Lcom/vkcoffee/android/Photo$Image;
    iget v5, v2, Lcom/vkcoffee/android/Photo$Image;->width:I

    sub-int/2addr v5, p1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 223
    .local v3, "newDif":I
    if-ge v3, v1, :cond_0

    .line 224
    move-object v0, v2

    .line 225
    move v1, v3

    goto :goto_0

    .line 228
    .end local v2    # "image":Lcom/vkcoffee/android/Photo$Image;
    .end local v3    # "newDif":I
    :cond_1
    if-nez v0, :cond_2

    const/16 v4, 0x6d

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/Photo;->getImage(C)Lcom/vkcoffee/android/Photo$Image;

    move-result-object v0

    .end local v0    # "bestImage":Lcom/vkcoffee/android/Photo$Image;
    :cond_2
    return-object v0
.end method

.method public serializeImages()Ljava/lang/String;
    .locals 5

    .prologue
    .line 280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v1, "ss":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/vkcoffee/android/Photo;->sizes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/Photo$Image;

    .line 282
    .local v0, "im":Lcom/vkcoffee/android/Photo$Image;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-char v4, v0, Lcom/vkcoffee/android/Photo$Image;->type:C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "^"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/vkcoffee/android/Photo$Image;->url:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "^"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/vkcoffee/android/Photo$Image;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "^"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/vkcoffee/android/Photo$Image;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 284
    .end local v0    # "im":Lcom/vkcoffee/android/Photo$Image;
    :cond_0
    const-string/jumbo v2, "$"

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 6
    .param p1, "p"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161
    iget v0, p0, Lcom/vkcoffee/android/Photo;->id:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 162
    iget v0, p0, Lcom/vkcoffee/android/Photo;->albumID:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 163
    iget v0, p0, Lcom/vkcoffee/android/Photo;->ownerID:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 164
    iget v0, p0, Lcom/vkcoffee/android/Photo;->userID:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 165
    iget v0, p0, Lcom/vkcoffee/android/Photo;->date:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 166
    iget v0, p0, Lcom/vkcoffee/android/Photo;->nLikes:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 167
    iget v0, p0, Lcom/vkcoffee/android/Photo;->nComments:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 168
    iget v0, p0, Lcom/vkcoffee/android/Photo;->nTags:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 169
    iget-boolean v0, p0, Lcom/vkcoffee/android/Photo;->infoLoaded:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 170
    iget-boolean v0, p0, Lcom/vkcoffee/android/Photo;->isLiked:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 171
    iget-boolean v0, p0, Lcom/vkcoffee/android/Photo;->canComment:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 172
    iget-object v0, p0, Lcom/vkcoffee/android/Photo;->thumbURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/vkcoffee/android/Photo;->fullURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/vkcoffee/android/Photo;->geoAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/vkcoffee/android/Photo;->descr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 176
    iget-wide v4, p0, Lcom/vkcoffee/android/Photo;->lat:D

    invoke-virtual {p1, v4, v5}, Lcom/vkcoffee/android/utils/Serializer;->writeDouble(D)V

    .line 177
    iget-wide v4, p0, Lcom/vkcoffee/android/Photo;->lon:D

    invoke-virtual {p1, v4, v5}, Lcom/vkcoffee/android/utils/Serializer;->writeDouble(D)V

    .line 178
    iget-object v0, p0, Lcom/vkcoffee/android/Photo;->accessKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/vkcoffee/android/Photo;->viewBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_3

    .line 181
    invoke-virtual {p1, v2}, Lcom/vkcoffee/android/utils/Serializer;->writeByte(B)V

    .line 190
    :goto_3
    iget v0, p0, Lcom/vkcoffee/android/Photo;->viewClipTop:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 191
    iget v0, p0, Lcom/vkcoffee/android/Photo;->postID:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 192
    iget-boolean v0, p0, Lcom/vkcoffee/android/Photo;->hidden:Z

    if-eqz v0, :cond_4

    :goto_4
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeByte(B)V

    .line 193
    invoke-virtual {p0}, Lcom/vkcoffee/android/Photo;->serializeImages()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 194
    iget v0, p0, Lcom/vkcoffee/android/Photo;->realOffset:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 195
    return-void

    :cond_0
    move v0, v2

    .line 169
    goto :goto_0

    :cond_1
    move v0, v2

    .line 170
    goto :goto_1

    :cond_2
    move v0, v2

    .line 171
    goto :goto_2

    .line 183
    :cond_3
    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeByte(B)V

    .line 184
    iget-object v0, p0, Lcom/vkcoffee/android/Photo;->viewBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 185
    iget-object v0, p0, Lcom/vkcoffee/android/Photo;->viewBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 186
    iget-object v0, p0, Lcom/vkcoffee/android/Photo;->viewBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 187
    iget-object v0, p0, Lcom/vkcoffee/android/Photo;->viewBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    goto :goto_3

    :cond_4
    move v1, v2

    .line 192
    goto :goto_4
.end method
