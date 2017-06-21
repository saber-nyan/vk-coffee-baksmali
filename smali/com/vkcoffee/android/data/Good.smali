.class public Lcom/vkcoffee/android/data/Good;
.super Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;
.source "Good.java"

# interfaces
.implements Lcom/vkcoffee/android/data/ServerKeys;


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/utils/Serializer$Creator",
            "<",
            "Lcom/vkcoffee/android/data/Good;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final availability:I

.field public final can_comment:Z

.field public final can_repost:Z

.field public final category_id:I

.field public final category_name:Ljava/lang/String;

.field public final category_section_id:I

.field public final category_section_name:Ljava/lang/String;

.field public final date:I

.field public final description:Ljava/lang/String;

.field public final descriptionPreview:Ljava/lang/CharSequence;

.field public final descriptionView:Ljava/lang/CharSequence;

.field public final id:I

.field public likesPhoto:[Ljava/lang/String;

.field public likes_count:I

.field public final owner_id:I

.field public final photos:[Lcom/vkcoffee/android/Photo;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field public final price_amount:I

.field public final price_currency_id:I

.field public final price_currency_name:Ljava/lang/String;

.field public final price_text:Ljava/lang/String;

.field public final thumb_photo:Ljava/lang/String;

.field public final title:Ljava/lang/String;

.field public user_likes:I

.field public final views_count:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lcom/vkcoffee/android/data/Good$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/data/Good$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/Good;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 3
    .param p1, "s"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 128
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/data/Good;->likesPhoto:[Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/Good;->id:I

    .line 130
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/Good;->owner_id:I

    .line 131
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/Good;->title:Ljava/lang/String;

    .line 132
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/Good;->description:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/vkcoffee/android/data/Good;->description:Ljava/lang/String;

    invoke-static {v0}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/LinkParser;->truncatePost(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/Good;->descriptionPreview:Ljava/lang/CharSequence;

    .line 134
    iget-object v0, p0, Lcom/vkcoffee/android/data/Good;->description:Ljava/lang/String;

    invoke-static {v0}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/Good;->descriptionView:Ljava/lang/CharSequence;

    .line 136
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/Good;->price_amount:I

    .line 137
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/Good;->price_currency_id:I

    .line 138
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/Good;->price_currency_name:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/Good;->price_text:Ljava/lang/String;

    .line 141
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/Good;->category_id:I

    .line 142
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/Good;->category_name:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/Good;->category_section_id:I

    .line 144
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/Good;->category_section_name:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/Good;->thumb_photo:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/Good;->date:I

    .line 148
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/Good;->availability:I

    .line 150
    sget-object v0, Lcom/vkcoffee/android/Photo;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->createTypedArray(Lcom/vkcoffee/android/utils/Serializer$Creator;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vkcoffee/android/Photo;

    iput-object v0, p0, Lcom/vkcoffee/android/data/Good;->photos:[Lcom/vkcoffee/android/Photo;

    .line 152
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/data/Good;->can_comment:Z

    .line 153
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/vkcoffee/android/data/Good;->can_repost:Z

    .line 155
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/Good;->user_likes:I

    .line 156
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/Good;->likes_count:I

    .line 158
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/data/Good;->views_count:I

    .line 160
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/data/Good;->likesPhoto:[Ljava/lang/String;

    .line 161
    return-void

    :cond_0
    move v0, v2

    .line 152
    goto :goto_0

    :cond_1
    move v1, v2

    .line 153
    goto :goto_1
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 13
    .param p1, "o"    # Lorg/json/JSONObject;

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x0

    const/4 v10, 0x0

    .line 48
    invoke-direct {p0}, Lcom/vkcoffee/android/utils/Serializer$SerializableAdapter;-><init>()V

    .line 43
    iput-object v12, p0, Lcom/vkcoffee/android/data/Good;->likesPhoto:[Ljava/lang/String;

    .line 49
    const-string/jumbo v8, "id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/vkcoffee/android/data/Good;->id:I

    .line 50
    const-string/jumbo v8, "owner_id"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/vkcoffee/android/data/Good;->owner_id:I

    .line 51
    const-string/jumbo v8, "title"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/vkcoffee/android/data/Good;->title:Ljava/lang/String;

    .line 52
    const-string/jumbo v8, "description"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/vkcoffee/android/data/Good;->description:Ljava/lang/String;

    .line 53
    iget-object v8, p0, Lcom/vkcoffee/android/data/Good;->description:Ljava/lang/String;

    invoke-static {v8}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Lcom/vkcoffee/android/LinkParser;->truncatePost(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Lcom/vkcoffee/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/vkcoffee/android/data/Good;->descriptionPreview:Ljava/lang/CharSequence;

    .line 54
    iget-object v8, p0, Lcom/vkcoffee/android/data/Good;->description:Ljava/lang/String;

    invoke-static {v8}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Lcom/vkcoffee/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/vkcoffee/android/data/Good;->descriptionView:Ljava/lang/CharSequence;

    .line 56
    const-string/jumbo v8, "price"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 57
    .local v6, "price":Lorg/json/JSONObject;
    if-eqz v6, :cond_1

    .line 58
    const-string/jumbo v8, "amount"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/vkcoffee/android/data/Good;->price_amount:I

    .line 59
    const-string/jumbo v8, "text"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/vkcoffee/android/data/Good;->price_text:Ljava/lang/String;

    .line 61
    const-string/jumbo v8, "currency"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 62
    .local v1, "currency":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 63
    const-string/jumbo v8, "id"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/vkcoffee/android/data/Good;->price_currency_id:I

    .line 64
    const-string/jumbo v8, "name"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/vkcoffee/android/data/Good;->price_currency_name:Ljava/lang/String;

    .line 74
    .end local v1    # "currency":Lorg/json/JSONObject;
    :goto_0
    const-string/jumbo v8, "category"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 75
    .local v0, "category":Lorg/json/JSONObject;
    if-eqz v0, :cond_3

    .line 76
    const-string/jumbo v8, "id"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/vkcoffee/android/data/Good;->category_id:I

    .line 77
    const-string/jumbo v8, "name"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/vkcoffee/android/data/Good;->category_name:Ljava/lang/String;

    .line 79
    const-string/jumbo v8, "section"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 80
    .local v7, "section":Lorg/json/JSONObject;
    if-eqz v7, :cond_2

    .line 81
    const-string/jumbo v8, "id"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/vkcoffee/android/data/Good;->category_section_id:I

    .line 82
    const-string/jumbo v8, "name"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/vkcoffee/android/data/Good;->category_section_name:Ljava/lang/String;

    .line 92
    .end local v7    # "section":Lorg/json/JSONObject;
    :goto_1
    const-string/jumbo v8, "thumb_photo"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/vkcoffee/android/data/Good;->thumb_photo:Ljava/lang/String;

    .line 93
    const-string/jumbo v8, "date"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/vkcoffee/android/data/Good;->date:I

    .line 94
    const-string/jumbo v8, "availability"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/vkcoffee/android/data/Good;->availability:I

    .line 95
    const-string/jumbo v8, "views_count"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/vkcoffee/android/data/Good;->views_count:I

    .line 99
    const-string/jumbo v8, "photos"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 100
    .local v5, "photos":Lorg/json/JSONArray;
    if-eqz v5, :cond_5

    .line 101
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    new-array v8, v8, [Lcom/vkcoffee/android/Photo;

    iput-object v8, p0, Lcom/vkcoffee/android/data/Good;->photos:[Lcom/vkcoffee/android/Photo;

    .line 102
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v2, v8, :cond_6

    .line 103
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 104
    .local v4, "photo":Lorg/json/JSONObject;
    if-eqz v4, :cond_4

    .line 105
    iget-object v8, p0, Lcom/vkcoffee/android/data/Good;->photos:[Lcom/vkcoffee/android/Photo;

    new-instance v11, Lcom/vkcoffee/android/Photo;

    invoke-direct {v11, v4}, Lcom/vkcoffee/android/Photo;-><init>(Lorg/json/JSONObject;)V

    aput-object v11, v8, v2

    .line 102
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 66
    .end local v0    # "category":Lorg/json/JSONObject;
    .end local v2    # "i":I
    .end local v4    # "photo":Lorg/json/JSONObject;
    .end local v5    # "photos":Lorg/json/JSONArray;
    .restart local v1    # "currency":Lorg/json/JSONObject;
    :cond_0
    iput v10, p0, Lcom/vkcoffee/android/data/Good;->price_currency_id:I

    .line 67
    iput-object v12, p0, Lcom/vkcoffee/android/data/Good;->price_currency_name:Ljava/lang/String;

    goto/16 :goto_0

    .line 70
    .end local v1    # "currency":Lorg/json/JSONObject;
    :cond_1
    iput v10, p0, Lcom/vkcoffee/android/data/Good;->price_currency_id:I

    iput v10, p0, Lcom/vkcoffee/android/data/Good;->price_amount:I

    .line 71
    iput-object v12, p0, Lcom/vkcoffee/android/data/Good;->price_currency_name:Ljava/lang/String;

    iput-object v12, p0, Lcom/vkcoffee/android/data/Good;->price_text:Ljava/lang/String;

    goto/16 :goto_0

    .line 84
    .restart local v0    # "category":Lorg/json/JSONObject;
    .restart local v7    # "section":Lorg/json/JSONObject;
    :cond_2
    iput v10, p0, Lcom/vkcoffee/android/data/Good;->category_section_id:I

    .line 85
    iput-object v12, p0, Lcom/vkcoffee/android/data/Good;->category_section_name:Ljava/lang/String;

    goto :goto_1

    .line 88
    .end local v7    # "section":Lorg/json/JSONObject;
    :cond_3
    iput v10, p0, Lcom/vkcoffee/android/data/Good;->category_section_id:I

    iput v10, p0, Lcom/vkcoffee/android/data/Good;->category_id:I

    .line 89
    iput-object v12, p0, Lcom/vkcoffee/android/data/Good;->category_section_name:Ljava/lang/String;

    iput-object v12, p0, Lcom/vkcoffee/android/data/Good;->category_name:Ljava/lang/String;

    goto :goto_1

    .line 107
    .restart local v2    # "i":I
    .restart local v4    # "photo":Lorg/json/JSONObject;
    .restart local v5    # "photos":Lorg/json/JSONArray;
    :cond_4
    iget-object v8, p0, Lcom/vkcoffee/android/data/Good;->photos:[Lcom/vkcoffee/android/Photo;

    aput-object v12, v8, v2

    goto :goto_3

    .line 111
    .end local v2    # "i":I
    .end local v4    # "photo":Lorg/json/JSONObject;
    :cond_5
    iput-object v12, p0, Lcom/vkcoffee/android/data/Good;->photos:[Lcom/vkcoffee/android/Photo;

    .line 114
    :cond_6
    const-string/jumbo v8, "can_comment"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_7

    move v8, v9

    :goto_4
    iput-boolean v8, p0, Lcom/vkcoffee/android/data/Good;->can_comment:Z

    .line 115
    const-string/jumbo v8, "can_repost"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    if-eqz v8, :cond_8

    :goto_5
    iput-boolean v9, p0, Lcom/vkcoffee/android/data/Good;->can_repost:Z

    .line 117
    const-string/jumbo v8, "likes"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 118
    .local v3, "likes":Lorg/json/JSONObject;
    if-eqz v3, :cond_9

    .line 119
    const-string/jumbo v8, "user_likes"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/vkcoffee/android/data/Good;->user_likes:I

    .line 120
    const-string/jumbo v8, "count"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/vkcoffee/android/data/Good;->likes_count:I

    .line 124
    :goto_6
    return-void

    .end local v3    # "likes":Lorg/json/JSONObject;
    :cond_7
    move v8, v10

    .line 114
    goto :goto_4

    :cond_8
    move v9, v10

    .line 115
    goto :goto_5

    .line 122
    .restart local v3    # "likes":Lorg/json/JSONObject;
    :cond_9
    iput v10, p0, Lcom/vkcoffee/android/data/Good;->likes_count:I

    iput v10, p0, Lcom/vkcoffee/android/data/Good;->user_likes:I

    goto :goto_6
.end method


# virtual methods
.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 3
    .param p1, "s"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 165
    iget v0, p0, Lcom/vkcoffee/android/data/Good;->id:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 166
    iget v0, p0, Lcom/vkcoffee/android/data/Good;->owner_id:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 167
    iget-object v0, p0, Lcom/vkcoffee/android/data/Good;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/vkcoffee/android/data/Good;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 170
    iget v0, p0, Lcom/vkcoffee/android/data/Good;->price_amount:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 171
    iget v0, p0, Lcom/vkcoffee/android/data/Good;->price_currency_id:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 172
    iget-object v0, p0, Lcom/vkcoffee/android/data/Good;->price_currency_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/vkcoffee/android/data/Good;->price_text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 175
    iget v0, p0, Lcom/vkcoffee/android/data/Good;->category_id:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 176
    iget-object v0, p0, Lcom/vkcoffee/android/data/Good;->category_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 177
    iget v0, p0, Lcom/vkcoffee/android/data/Good;->category_section_id:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 178
    iget-object v0, p0, Lcom/vkcoffee/android/data/Good;->category_section_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/vkcoffee/android/data/Good;->thumb_photo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 181
    iget v0, p0, Lcom/vkcoffee/android/data/Good;->date:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 182
    iget v0, p0, Lcom/vkcoffee/android/data/Good;->availability:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 184
    iget-object v0, p0, Lcom/vkcoffee/android/data/Good;->photos:[Lcom/vkcoffee/android/Photo;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeTypedArray([Lcom/vkcoffee/android/utils/Serializer$Serializable;)V

    .line 186
    iget-boolean v0, p0, Lcom/vkcoffee/android/data/Good;->can_comment:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeByte(B)V

    .line 187
    iget-boolean v0, p0, Lcom/vkcoffee/android/data/Good;->can_repost:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Lcom/vkcoffee/android/utils/Serializer;->writeByte(B)V

    .line 189
    iget v0, p0, Lcom/vkcoffee/android/data/Good;->user_likes:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 190
    iget v0, p0, Lcom/vkcoffee/android/data/Good;->likes_count:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 192
    iget v0, p0, Lcom/vkcoffee/android/data/Good;->views_count:I

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 194
    iget-object v0, p0, Lcom/vkcoffee/android/data/Good;->likesPhoto:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeStringArray([Ljava/lang/String;)V

    .line 195
    return-void

    :cond_0
    move v0, v2

    .line 186
    goto :goto_0

    :cond_1
    move v1, v2

    .line 187
    goto :goto_1
.end method
