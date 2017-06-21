.class public Lcom/vkcoffee/android/data/Posts;
.super Ljava/lang/Object;
.source "Posts.java"


# static fields
.field public static final ACTION_NEW_POST_BROADCAST:Ljava/lang/String; = "com.vkcoffee.android.NEW_POST_ADDED"

.field public static final ACTION_POST_DELETED_BROADCAST:Ljava/lang/String; = "com.vkcoffee.android.POST_DELETED"

.field public static final ACTION_POST_REPLACED_BROADCAST:Ljava/lang/String; = "com.vkcoffee.android.POST_REPLACED"

.field public static final ACTION_POST_UPDATED_BROADCAST:Ljava/lang/String; = "com.vkcoffee.android.POST_UPDATED"

.field public static final ACTION_RELOAD_FEED:Ljava/lang/String; = "com.vkcoffee.android.RELOAD_FEED"

.field public static final ACTION_RELOAD_PROFILE:Ljava/lang/String; = "com.vkcoffee.android.RELOAD_PROFILE"

.field public static final ACTION_USER_NAME_CHANGED:Ljava/lang/String; = "com.vkcoffee.android.USER_NAME_CHANGED"

.field public static final ACTION_USER_PHOTO_CHANGED:Ljava/lang/String; = "com.vkcoffee.android.USER_PHOTO_CHANGED"

.field public static feed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/NewsEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static feedClearForNew:Z

.field public static feedFrom:Ljava/lang/String;

.field public static feedItem:I

.field public static feedItemOffset:I

.field public static feedOffset:I

.field private static liking:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static newNews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/NewsEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static newNewsFrom:Ljava/lang/String;

.field public static preloadedFeed:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/NewsEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/Posts;->feed:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/Posts;->preloadedFeed:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/Posts;->newNews:Ljava/util/List;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/data/Posts;->liking:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/vkcoffee/android/data/Posts;->liking:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/NewsEntry;)V
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/NewsEntry;

    .prologue
    .line 76
    invoke-static {p0}, Lcom/vkcoffee/android/data/Posts;->broadcastPostUpdate(Lcom/vkcoffee/android/NewsEntry;)V

    return-void
.end method

.method private static broadcastPostUpdate(Lcom/vkcoffee/android/NewsEntry;)V
    .locals 8
    .param p0, "post"    # Lcom/vkcoffee/android/NewsEntry;

    .prologue
    const/16 v5, 0x8

    const/4 v6, 0x4

    .line 520
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.vkcoffee.android.POST_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "post_id"

    iget v2, p0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 521
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "owner_id"

    iget v2, p0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    .line 522
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "post_type"

    iget v2, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 523
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "comments"

    iget v2, p0, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    .line 524
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "retweets"

    iget v2, p0, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    .line 525
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "likes"

    iget v2, p0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    .line 526
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "liked"

    .line 527
    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "retweeted"

    .line 528
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v7

    .line 529
    .local v7, "intent":Landroid/content/Intent;
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const-string/jumbo v1, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 530
    iget v0, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-nez v0, :cond_0

    .line 531
    iget v0, p0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget v2, p0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    iget v3, p0, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    iget v4, p0, Lcom/vkcoffee/android/NewsEntry;->numRetweets:I

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v5

    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v6

    invoke-static/range {v0 .. v6}, Lcom/vkcoffee/android/cache/NewsfeedCache;->update(IIIIIZZ)V

    .line 533
    :cond_0
    return-void
.end method

.method public static buildAttachItems(Ljava/util/List;IILcom/vkcoffee/android/NewsEntry;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 31
    .param p1, "postID"    # I
    .param p2, "ownerID"    # I
    .param p3, "e"    # Lcom/vkcoffee/android/NewsEntry;
    .param p4, "referer"    # Ljava/lang/String;
    .param p5, "listReferer"    # Ljava/lang/String;
    .param p6, "fromList"    # Z
    .param p7, "listPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;II",
            "Lcom/vkcoffee/android/NewsEntry;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/posts/PostDisplayItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    .local p0, "attachments":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/attachments/Attachment;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 151
    .local v27, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ui/posts/PostDisplayItem;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .local v29, "tAtts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/ThumbAttachment;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v15, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/AudioAttachment;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .local v21, "markets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v20, "marketAlbums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v22, "other":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v23, "other2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v16, "common":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v28, "sig":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    const/16 v26, 0x0

    .line 160
    .local v26, "repost":Lcom/vkcoffee/android/attachments/RepostAttachment;
    const/16 v17, 0x0

    .line 161
    .local v17, "docCount":I
    const/16 v19, 0x0

    .line 162
    .local v19, "lastDocument":Lcom/vkcoffee/android/attachments/DocumentAttachment;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkcoffee/android/attachments/Attachment;

    .line 163
    .local v14, "att":Lcom/vkcoffee/android/attachments/Attachment;
    if-eqz v14, :cond_0

    .line 166
    instance-of v3, v14, Lcom/vkcoffee/android/attachments/MarketAlbumAttachment;

    if-eqz v3, :cond_1

    .line 167
    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 168
    :cond_1
    instance-of v3, v14, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    if-eqz v3, :cond_2

    .line 169
    check-cast v14, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    .end local v14    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    .restart local v14    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_2
    instance-of v3, v14, Lcom/vkcoffee/android/attachments/AudioAttachment;

    if-eqz v3, :cond_3

    .line 171
    check-cast v14, Lcom/vkcoffee/android/attachments/AudioAttachment;

    .end local v14    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    .restart local v14    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_3
    instance-of v3, v14, Lcom/vkcoffee/android/attachments/SignatureLinkAttachment;

    if-eqz v3, :cond_4

    .line 173
    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 174
    :cond_4
    instance-of v3, v14, Lcom/vkcoffee/android/attachments/GeoAttachment;

    if-eqz v3, :cond_5

    move-object v3, v14

    check-cast v3, Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget v3, v3, Lcom/vkcoffee/android/attachments/GeoAttachment;->style:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 175
    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    :cond_5
    instance-of v3, v14, Lcom/vkcoffee/android/attachments/RepostAttachment;

    if-eqz v3, :cond_6

    move-object/from16 v26, v14

    .line 177
    check-cast v26, Lcom/vkcoffee/android/attachments/RepostAttachment;

    goto :goto_0

    .line 178
    :cond_6
    instance-of v3, v14, Lcom/vkcoffee/android/attachments/PollAttachment;

    if-eqz v3, :cond_7

    .line 179
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    :cond_7
    instance-of v3, v14, Lcom/vkcoffee/android/attachments/MarketAttachment;

    if-eqz v3, :cond_8

    .line 181
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 182
    :cond_8
    instance-of v3, v14, Lcom/vkcoffee/android/attachments/StickerAttachment;

    if-eqz v3, :cond_9

    .line 183
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    :cond_9
    instance-of v3, v14, Lcom/vkcoffee/android/attachments/SnippetAttachment;

    if-nez v3, :cond_b

    instance-of v3, v14, Lcom/vkcoffee/android/attachments/GeoAttachment;

    if-eqz v3, :cond_a

    move-object v3, v14

    check-cast v3, Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget v3, v3, Lcom/vkcoffee/android/attachments/GeoAttachment;->style:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_b

    :cond_a
    instance-of v3, v14, Lcom/vkcoffee/android/attachments/PollAttachment;

    if-eqz v3, :cond_c

    .line 185
    :cond_b
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 186
    :cond_c
    instance-of v3, v14, Lcom/vkcoffee/android/attachments/ShitAttachment;

    if-eqz v3, :cond_d

    move-object/from16 v0, p3

    iget v3, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    if-eqz p6, :cond_0

    .line 188
    :cond_d
    instance-of v3, v14, Lcom/vkcoffee/android/attachments/ShitAttachment;

    if-eqz v3, :cond_e

    move-object/from16 v0, p3

    iget v3, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_e

    .line 189
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    .line 190
    new-instance v3, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Lcom/vkcoffee/android/ui/posts/ShitBlockPostDisplayItem;-><init>(Lcom/vkcoffee/android/NewsEntry;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 192
    :cond_e
    instance-of v3, v14, Lcom/vkcoffee/android/attachments/DocumentAttachment;

    if-eqz v3, :cond_f

    move-object v3, v14

    check-cast v3, Lcom/vkcoffee/android/attachments/ImageAttachment;

    invoke-interface {v3}, Lcom/vkcoffee/android/attachments/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_f
    instance-of v3, v14, Lcom/vkcoffee/android/attachments/GeoAttachment;

    if-eqz v3, :cond_10

    move-object v3, v14

    check-cast v3, Lcom/vkcoffee/android/attachments/GeoAttachment;

    iget v3, v3, Lcom/vkcoffee/android/attachments/GeoAttachment;->id:I

    if-lez v3, :cond_11

    :cond_10
    instance-of v3, v14, Lcom/vkcoffee/android/attachments/ShitAttachment;

    if-eqz v3, :cond_12

    .line 193
    :cond_11
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    instance-of v3, v14, Lcom/vkcoffee/android/attachments/DocumentAttachment;

    if-eqz v3, :cond_0

    .line 195
    add-int/lit8 v17, v17, 0x1

    move-object/from16 v19, v14

    .line 196
    check-cast v19, Lcom/vkcoffee/android/attachments/DocumentAttachment;

    goto/16 :goto_0

    .line 198
    :cond_12
    instance-of v3, v14, Lcom/vkcoffee/android/attachments/FriendsRecommAttachment;

    if-eqz v3, :cond_13

    .line 199
    new-instance v2, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;

    move-object v5, v14

    check-cast v5, Lcom/vkcoffee/android/attachments/FriendsRecommAttachment;

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p3

    move/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/vkcoffee/android/ui/posts/FriendsRecommPostDisplayItem;-><init>(IILcom/vkcoffee/android/attachments/FriendsRecommAttachment;Lcom/vkcoffee/android/NewsEntry;I)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 201
    :cond_13
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 204
    .end local v14    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_14
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_16

    .line 205
    if-nez p6, :cond_15

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x3

    if-le v3, v4, :cond_19

    .line 206
    :cond_15
    new-instance v2, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p3

    move-object/from16 v4, v29

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v8}, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;-><init>(Lcom/vkcoffee/android/NewsEntry;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_16
    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_17

    .line 223
    new-instance v3, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;

    const/4 v8, 0x1

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, v20

    move/from16 v7, p6

    invoke-direct/range {v3 .. v8}, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;-><init>(IILjava/util/ArrayList;ZZ)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :cond_17
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_18

    .line 226
    new-instance v3, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;

    const/4 v8, 0x1

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, v21

    move/from16 v7, p6

    invoke-direct/range {v3 .. v8}, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;-><init>(IILjava/util/ArrayList;ZZ)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_18
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1d

    .line 229
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v25, "pl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_1c

    .line 231
    new-instance v4, Lcom/vkcoffee/android/AudioFile;

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/attachments/AudioAttachment;

    invoke-direct {v4, v3}, Lcom/vkcoffee/android/AudioFile;-><init>(Lcom/vkcoffee/android/attachments/AudioAttachment;)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 208
    .end local v18    # "i":I
    .end local v25    # "pl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    :cond_19
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1a
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/vkcoffee/android/attachments/ThumbAttachment;

    .line 209
    .local v30, "ta":Lcom/vkcoffee/android/attachments/ThumbAttachment;
    new-instance v2, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;

    invoke-static/range {v30 .. v30}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v3, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, v29

    invoke-direct/range {v2 .. v8}, Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;-><init>(Lcom/vkcoffee/android/NewsEntry;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 212
    .local v2, "item":Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;
    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    move-object/from16 v0, v30

    instance-of v3, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    if-eqz v3, :cond_1a

    move-object/from16 v24, v30

    .line 214
    check-cast v24, Lcom/vkcoffee/android/attachments/PhotoAttachment;

    .line 215
    .local v24, "pa":Lcom/vkcoffee/android/attachments/PhotoAttachment;
    move-object/from16 v0, v24

    iget-object v3, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->descr:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a

    move-object/from16 v0, p3

    iget v3, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1b

    move-object/from16 v0, p3

    iget-object v3, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 216
    :cond_1b
    new-instance v3, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;

    move-object/from16 v0, p3

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    move-object/from16 v0, p3

    iget v5, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/vkcoffee/android/attachments/PhotoAttachment;->descr:Ljava/lang/String;

    const/4 v7, 0x7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    iget v9, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p3

    iget v9, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v6, v7, v0, v1, v8}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Lcom/vkcoffee/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;ZZLjava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 233
    .end local v2    # "item":Lcom/vkcoffee/android/ui/posts/ThumbsBlockPostDisplayItem;
    .end local v24    # "pa":Lcom/vkcoffee/android/attachments/PhotoAttachment;
    .end local v30    # "ta":Lcom/vkcoffee/android/attachments/ThumbAttachment;
    .restart local v18    # "i":I
    .restart local v25    # "pl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    :cond_1c
    const/16 v18, 0x0

    .line 234
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkcoffee/android/attachments/AudioAttachment;

    .line 235
    .local v13, "aa":Lcom/vkcoffee/android/attachments/AudioAttachment;
    move-object/from16 v0, v25

    iput-object v0, v13, Lcom/vkcoffee/android/attachments/AudioAttachment;->playlist:Ljava/util/ArrayList;

    .line 236
    move/from16 v0, v18

    iput v0, v13, Lcom/vkcoffee/android/attachments/AudioAttachment;->playlistPos:I

    .line 237
    move-object/from16 v0, p4

    iput-object v0, v13, Lcom/vkcoffee/android/attachments/AudioAttachment;->referer:Ljava/lang/String;

    .line 238
    new-instance v4, Lcom/vkcoffee/android/ui/posts/AudioPostDisplayItem;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v4, v0, v1, v13}, Lcom/vkcoffee/android/ui/posts/AudioPostDisplayItem;-><init>(IILcom/vkcoffee/android/attachments/AudioAttachment;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v18, v18, 0x1

    .line 240
    goto :goto_3

    .line 242
    .end local v13    # "aa":Lcom/vkcoffee/android/attachments/AudioAttachment;
    .end local v18    # "i":I
    .end local v25    # "pl":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/AudioFile;>;"
    :cond_1d
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1e

    .line 243
    if-eqz v19, :cond_21

    const/4 v3, 0x1

    move/from16 v0, v17

    if-ne v0, v3, :cond_21

    .line 244
    const/4 v3, 0x1

    move-object/from16 v0, v19

    iput-boolean v3, v0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->isSingle:Z

    .line 245
    new-instance v3, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/vkcoffee/android/attachments/DocumentAttachment;->video:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, v22

    move/from16 v7, p6

    invoke-direct/range {v3 .. v8}, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;-><init>(IILjava/util/ArrayList;ZZ)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_1e
    :goto_4
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1f

    .line 251
    new-instance v3, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;

    const/4 v8, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, v23

    move/from16 v7, p6

    invoke-direct/range {v3 .. v8}, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;-><init>(IILjava/util/ArrayList;ZZ)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_1f
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_22

    .line 254
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/vkcoffee/android/attachments/Attachment;

    .line 255
    .local v13, "aa":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v3, v13, Lcom/vkcoffee/android/attachments/LinkAttachment;

    if-eqz v3, :cond_20

    move-object v3, v13

    .line 256
    check-cast v3, Lcom/vkcoffee/android/attachments/LinkAttachment;

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/vkcoffee/android/attachments/LinkAttachment;->setReferrer(Lcom/vkcoffee/android/NewsEntry;)V

    .line 258
    :cond_20
    new-instance v3, Lcom/vkcoffee/android/ui/posts/CommonAttachmentPostDisplayItem;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v3, v0, v1, v13}, Lcom/vkcoffee/android/ui/posts/CommonAttachmentPostDisplayItem;-><init>(IILcom/vkcoffee/android/attachments/Attachment;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 247
    .end local v13    # "aa":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_21
    new-instance v3, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;

    const/4 v8, 0x1

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, v22

    move/from16 v7, p6

    invoke-direct/range {v3 .. v8}, Lcom/vkcoffee/android/ui/posts/AttachContainerPostDisplayItem;-><init>(IILjava/util/ArrayList;ZZ)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 261
    :cond_22
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 262
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_23

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/vkcoffee/android/attachments/Attachment;

    .line 263
    .restart local v14    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    new-instance v4, Lcom/vkcoffee/android/ui/posts/SignaturePostDisplayItem;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v4, v0, v1, v14}, Lcom/vkcoffee/android/ui/posts/SignaturePostDisplayItem;-><init>(IILcom/vkcoffee/android/attachments/Attachment;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 266
    .end local v14    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_23
    if-eqz v26, :cond_24

    .line 267
    new-instance v3, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/vkcoffee/android/attachments/RepostAttachment;->name:Ljava/lang/String;

    move-object/from16 v0, v26

    iget-object v7, v0, Lcom/vkcoffee/android/attachments/RepostAttachment;->photo:Ljava/lang/String;

    move-object/from16 v0, v26

    iget v8, v0, Lcom/vkcoffee/android/attachments/RepostAttachment;->ownerID:I

    move-object/from16 v0, v26

    iget v9, v0, Lcom/vkcoffee/android/attachments/RepostAttachment;->time:I

    move-object/from16 v0, v26

    iget v10, v0, Lcom/vkcoffee/android/attachments/RepostAttachment;->postID:I

    move-object/from16 v0, v26

    iget v11, v0, Lcom/vkcoffee/android/attachments/RepostAttachment;->type:I

    const/4 v12, 0x0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v3 .. v12}, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;-><init>(IILjava/lang/String;Ljava/lang/String;IIIILcom/vkcoffee/android/NewsEntry;)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_24
    return-object v27
.end method

.method public static buildItems(Lcom/vkcoffee/android/NewsEntry;ZLjava/lang/String;ZZLandroid/view/View$OnClickListener;ZLjava/lang/String;I)Ljava/util/List;
    .locals 25
    .param p0, "e"    # Lcom/vkcoffee/android/NewsEntry;
    .param p1, "photosMode"    # Z
    .param p2, "referer"    # Ljava/lang/String;
    .param p3, "feedbackStyle"    # Z
    .param p4, "canHideFromFeed"    # Z
    .param p5, "menuClickListener"    # Landroid/view/View$OnClickListener;
    .param p6, "fromList"    # Z
    .param p7, "listReferrer"    # Ljava/lang/String;
    .param p8, "listPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/NewsEntry;",
            "Z",
            "Ljava/lang/String;",
            "ZZ",
            "Landroid/view/View$OnClickListener;",
            "Z",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/ui/posts/PostDisplayItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 273
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v24, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/ui/posts/PostDisplayItem;>;"
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v5, 0xf

    if-ne v4, v5, :cond_0

    .line 276
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string/jumbo v5, "extras_key_user_notification"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v23

    .line 277
    .local v23, "parcelable":Landroid/os/Parcelable;
    if-eqz v23, :cond_0

    .line 278
    new-instance v4, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;

    check-cast v23, Lcom/vkcoffee/android/data/UserNotification;

    .end local v23    # "parcelable":Landroid/os/Parcelable;
    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Lcom/vkcoffee/android/ui/posts/NotificationPostDisplayItem;-><init>(Lcom/vkcoffee/android/data/UserNotification;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v5, 0xd

    if-eq v4, v5, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v5, 0xb

    if-eq v4, v5, :cond_3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v5, 0xf

    if-eq v4, v5, :cond_3

    .line 283
    new-instance v3, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v3 .. v8}, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;-><init>(Lcom/vkcoffee/android/NewsEntry;ZZLjava/lang/String;I)V

    .line 284
    .local v3, "hdr":Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;
    move-object/from16 v0, p5

    iput-object v0, v3, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->menuClickListener:Landroid/view/View$OnClickListener;

    .line 285
    if-eqz p5, :cond_16

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    :cond_1
    if-eqz p4, :cond_16

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    sget v5, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v4, v5, :cond_16

    :cond_2
    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, v3, Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;->showMenu:Z

    .line 286
    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    .end local v3    # "hdr":Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;
    :cond_3
    if-nez p6, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 290
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p7

    move/from16 v10, p6

    move/from16 v11, p8

    invoke-static/range {v4 .. v11}, Lcom/vkcoffee/android/data/Posts;->buildAttachItems(Ljava/util/List;IILcom/vkcoffee/android/NewsEntry;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 293
    :cond_4
    const/16 v4, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 294
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/NewsEntry;->getTypeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 296
    .local v11, "ref":Ljava/lang/String;
    new-instance v4, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-eqz p6, :cond_17

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkcoffee/android/NewsEntry;->displayableRetweetText:Ljava/lang/CharSequence;

    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    const/4 v9, 0x0

    if-nez p6, :cond_18

    const/4 v10, 0x1

    :goto_2
    invoke-direct/range {v4 .. v11}, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;ZZLjava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    .end local v11    # "ref":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 299
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/NewsEntry;->repostAttachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    move-object/from16 v15, p0

    move-object/from16 v16, p2

    move-object/from16 v17, p7

    move/from16 v18, p6

    move/from16 v19, p8

    invoke-static/range {v12 .. v19}, Lcom/vkcoffee/android/data/Posts;->buildAttachItems(Ljava/util/List;IILcom/vkcoffee/android/NewsEntry;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 301
    :cond_6
    new-instance v12, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/NewsEntry;->retweetUserName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->retweetUserPhoto:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->retweetUID:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->retweetOrigTime:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->retweetOrigId:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->retweetType:I

    move/from16 v20, v0

    move-object/from16 v21, p0

    invoke-direct/range {v12 .. v21}, Lcom/vkcoffee/android/ui/posts/RepostPostDisplayItem;-><init>(IILjava/lang/String;Ljava/lang/String;IIIILcom/vkcoffee/android/NewsEntry;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_7
    const v4, 0x8000

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "kz"

    invoke-static {}, Lcom/vkcoffee/android/Global;->getDeviceLang()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 305
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1a

    .line 306
    new-instance v12, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vkcoffee/android/NewsEntry;->f:Z

    if-eqz v4, :cond_19

    const v4, 0x7f080330

    :goto_3
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v12 .. v19}, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;ZZLjava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_8
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_9

    if-nez p1, :cond_9

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_9

    .line 314
    const/16 v4, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/NewsEntry;->getRepostTypeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkcoffee/android/NewsEntry;->retweetUID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkcoffee/android/NewsEntry;->retweetOrigId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 315
    .restart local v11    # "ref":Ljava/lang/String;
    :goto_5
    new-instance v4, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-eqz p6, :cond_1d

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkcoffee/android/NewsEntry;->displayablePreviewText:Ljava/lang/CharSequence;

    :goto_6
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    const/16 v9, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v9

    if-nez p6, :cond_1e

    const/4 v10, 0x1

    :goto_7
    invoke-direct/range {v4 .. v11}, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;ZZLjava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .end local v11    # "ref":Ljava/lang/String;
    :cond_9
    const v4, 0x8000

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string/jumbo v4, "kz"

    invoke-static {}, Lcom/vkcoffee/android/Global;->getDeviceLang()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 319
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_20

    .line 320
    new-instance v12, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vkcoffee/android/NewsEntry;->f:Z

    if-eqz v4, :cond_1f

    const v4, 0x7f080330

    :goto_8
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v12 .. v19}, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;ZZLjava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    :cond_a
    :goto_9
    if-nez p6, :cond_b

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_c

    .line 327
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    move-object/from16 v15, p0

    move-object/from16 v16, p2

    move-object/from16 v17, p7

    move/from16 v18, p6

    move/from16 v19, p8

    invoke-static/range {v12 .. v19}, Lcom/vkcoffee/android/data/Posts;->buildAttachItems(Ljava/util/List;IILcom/vkcoffee/android/NewsEntry;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 330
    :cond_c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_d

    .line 331
    new-instance v4, Lcom/vkcoffee/android/ui/posts/CommonAttachmentPostDisplayItem;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    new-instance v7, Lcom/vkcoffee/android/attachments/BoardTopicAttachment;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    invoke-direct {v7, v8}, Lcom/vkcoffee/android/attachments/BoardTopicAttachment;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5, v6, v7}, Lcom/vkcoffee/android/ui/posts/CommonAttachmentPostDisplayItem;-><init>(IILcom/vkcoffee/android/attachments/Attachment;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    :cond_d
    if-eqz p6, :cond_12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v5, 0xd

    if-eq v4, v5, :cond_12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v5, 0xf

    if-eq v4, v5, :cond_12

    if-nez p3, :cond_12

    .line 359
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    :cond_e
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v5, 0x5

    if-eq v4, v5, :cond_f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v5, 0xb

    if-eq v4, v5, :cond_f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v5, 0x12

    if-eq v4, v5, :cond_f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_f

    const/16 v4, 0x1000

    .line 367
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v4

    if-nez v4, :cond_f

    const/16 v4, 0x800

    .line 368
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v4

    if-nez v4, :cond_f

    .line 369
    new-instance v5, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v6, 0x4

    if-eq v4, v6, :cond_22

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p0

    move/from16 v1, p3

    move-object/from16 v2, p7

    invoke-direct {v5, v0, v1, v4, v2}, Lcom/vkcoffee/android/ui/posts/FooterPostDisplayItem;-><init>(Lcom/vkcoffee/android/NewsEntry;ZZLjava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_f
    const/16 v4, 0x1000

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    neg-int v4, v4

    invoke-static {v4}, Lcom/vkcoffee/android/data/Groups;->getAdminLevel(I)I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_10

    .line 373
    new-instance v4, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/vkcoffee/android/ui/posts/ButtonsPostDisplayItem;-><init>(Lcom/vkcoffee/android/NewsEntry;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->lastComment:Ljava/lang/String;

    if-eqz v4, :cond_11

    .line 377
    new-instance v12, Lcom/vkcoffee/android/ui/posts/CommentPostDisplayItem;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/NewsEntry;->lastComment:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->lastCommentUserName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/NewsEntry;->lastCommentUserPhoto:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->numComments:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->lastCommentTime:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/vkcoffee/android/NewsEntry;->lastCommentUserID:I

    move/from16 v20, v0

    invoke-direct/range {v12 .. v20}, Lcom/vkcoffee/android/ui/posts/CommentPostDisplayItem;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    :cond_11
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_12

    .line 381
    new-instance v4, Lcom/vkcoffee/android/ui/posts/PaddingPostDisplayItem;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    const/high16 v7, 0x41800000    # 16.0f

    invoke-static {v7}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/vkcoffee/android/ui/posts/PaddingPostDisplayItem;-><init>(III)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_12
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_23

    .line 386
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    const/4 v5, 0x3

    iput v5, v4, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->bgType:I

    .line 392
    :cond_13
    :goto_b
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    if-eqz v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v5, 0x7

    if-eq v4, v5, :cond_15

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v5, 0xf

    if-eq v4, v5, :cond_15

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v5, 0x6

    if-eq v4, v5, :cond_15

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_15

    move-object/from16 v0, p0

    iget v4, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v5, 0xd

    if-ne v4, v5, :cond_24

    .line 398
    :cond_15
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    .line 399
    .local v22, "di":Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    const/4 v5, 0x0

    move-object/from16 v0, v22

    iput-boolean v5, v0, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->clickable:Z

    goto :goto_c

    .line 285
    .end local v22    # "di":Lcom/vkcoffee/android/ui/posts/PostDisplayItem;
    .restart local v3    # "hdr":Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;
    :cond_16
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 296
    .end local v3    # "hdr":Lcom/vkcoffee/android/ui/posts/HeaderPostDisplayItem;
    .restart local v11    # "ref":Ljava/lang/String;
    :cond_17
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkcoffee/android/NewsEntry;->retweetText:Ljava/lang/String;

    const/4 v8, 0x7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p7

    invoke-static {v7, v8, v11, v0, v9}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Lcom/vkcoffee/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    goto/16 :goto_1

    :cond_18
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 306
    .end local v11    # "ref":Ljava/lang/String;
    :cond_19
    const v4, 0x7f080331

    goto/16 :goto_3

    .line 308
    :cond_1a
    new-instance v12, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vkcoffee/android/NewsEntry;->f:Z

    if-eqz v4, :cond_1b

    const v4, 0x7f080332

    :goto_d
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v12 .. v19}, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;ZZLjava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    :cond_1b
    const v4, 0x7f080333

    goto :goto_d

    .line 314
    :cond_1c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/NewsEntry;->getTypeString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_5

    .line 315
    .restart local v11    # "ref":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    const/4 v8, 0x7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget v10, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p7

    invoke-static {v7, v8, v11, v0, v9}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Lcom/vkcoffee/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    goto/16 :goto_6

    :cond_1e
    const/4 v10, 0x0

    goto/16 :goto_7

    .line 320
    .end local v11    # "ref":Ljava/lang/String;
    :cond_1f
    const v4, 0x7f080331

    goto/16 :goto_8

    .line 322
    :cond_20
    new-instance v12, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/vkcoffee/android/NewsEntry;->f:Z

    if-eqz v4, :cond_21

    const v4, 0x7f080332

    :goto_e
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v12 .. v19}, Lcom/vkcoffee/android/ui/posts/TextPostDisplayItem;-><init>(IILjava/lang/CharSequence;Ljava/lang/String;ZZLjava/lang/String;)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_21
    const v4, 0x7f080333

    goto :goto_e

    .line 369
    :cond_22
    const/4 v4, 0x0

    goto/16 :goto_a

    .line 387
    :cond_23
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_13

    .line 388
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    const/4 v5, 0x1

    iput v5, v4, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->bgType:I

    .line 389
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;

    const/4 v5, 0x2

    iput v5, v4, Lcom/vkcoffee/android/ui/posts/PostDisplayItem;->bgType:I

    goto/16 :goto_b

    .line 403
    :cond_24
    return-object v24
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/vkcoffee/android/data/Posts;->feed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 104
    sget-object v0, Lcom/vkcoffee/android/data/Posts;->preloadedFeed:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 105
    sget-object v0, Lcom/vkcoffee/android/data/Posts;->newNews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 106
    return-void
.end method

.method private static copyWithout(Ljava/util/List;II)Ljava/util/List;
    .locals 4
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "oid"    # I
    .param p2, "pid"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/NewsEntry;",
            ">;II)",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/NewsEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/NewsEntry;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 111
    .local v0, "buf":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/NewsEntry;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 112
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/NewsEntry;

    .line 113
    .local v1, "entry":Lcom/vkcoffee/android/NewsEntry;
    iget v3, v1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    if-ne v3, p1, :cond_0

    iget v3, v1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    if-eq v3, p1, :cond_1

    .line 114
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    .end local v1    # "entry":Lcom/vkcoffee/android/NewsEntry;
    :cond_2
    return-object v0
.end method

.method public static deleteFromStaticCache(II)V
    .locals 1
    .param p0, "oid"    # I
    .param p1, "pid"    # I

    .prologue
    .line 97
    sget-object v0, Lcom/vkcoffee/android/data/Posts;->feed:Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/vkcoffee/android/data/Posts;->copyWithout(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/data/Posts;->feed:Ljava/util/List;

    .line 98
    sget-object v0, Lcom/vkcoffee/android/data/Posts;->preloadedFeed:Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/vkcoffee/android/data/Posts;->copyWithout(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/data/Posts;->preloadedFeed:Ljava/util/List;

    .line 99
    sget-object v0, Lcom/vkcoffee/android/data/Posts;->newNews:Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/vkcoffee/android/data/Posts;->copyWithout(Ljava/util/List;II)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/vkcoffee/android/data/Posts;->newNews:Ljava/util/List;

    .line 100
    return-void
.end method

.method public static deletePost(Lcom/vkcoffee/android/NewsEntry;Landroid/app/Activity;)V
    .locals 5
    .param p0, "e"    # Lcom/vkcoffee/android/NewsEntry;
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 445
    :try_start_0
    new-instance v1, Lcom/vkcoffee/android/api/wall/WallDelete;

    iget v2, p0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget v3, p0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget v4, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/api/wall/WallDelete;-><init>(III)V

    new-instance v2, Lcom/vkcoffee/android/data/Posts$3;

    invoke-direct {v2, p1, p0, p1}, Lcom/vkcoffee/android/data/Posts$3;-><init>(Landroid/content/Context;Lcom/vkcoffee/android/NewsEntry;Landroid/app/Activity;)V

    .line 446
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/wall/WallDelete;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 457
    invoke-virtual {v1, p1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 458
    invoke-virtual {v1, p1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_0
    return-void

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "x":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/vkcoffee/android/utils/L;->e(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public static editRepostComment(Lcom/vkcoffee/android/NewsEntry;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 4
    .param p0, "e"    # Lcom/vkcoffee/android/NewsEntry;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "act"    # Landroid/app/Activity;

    .prologue
    .line 407
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 408
    .local v0, "edit":Landroid/widget/EditText;
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 409
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setLines(I)V

    .line 410
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 411
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 412
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 413
    new-instance v1, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-direct {v1, p2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f08004a

    .line 414
    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 415
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080451

    invoke-static {p0, v0, p2}, Lcom/vkcoffee/android/data/Posts$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/NewsEntry;Landroid/widget/EditText;Landroid/app/Activity;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v3

    .line 416
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0800b7

    const/4 v3, 0x0

    .line 417
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 418
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 419
    return-void
.end method

.method static synthetic lambda$editRepostComment$273(Lcom/vkcoffee/android/NewsEntry;Landroid/widget/EditText;Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p3, "dialog"    # Landroid/content/DialogInterface;
    .param p4, "which"    # I

    .prologue
    .line 416
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/vkcoffee/android/data/Posts;->saveRepostComment(Lcom/vkcoffee/android/NewsEntry;Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method

.method public static like(Lcom/vkcoffee/android/NewsEntry;ZLandroid/app/Activity;Ljava/lang/String;)V
    .locals 12
    .param p0, "e"    # Lcom/vkcoffee/android/NewsEntry;
    .param p1, "liked"    # Z
    .param p2, "act"    # Landroid/app/Activity;
    .param p3, "referer"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 465
    invoke-static {p2}, Lcom/vkcoffee/android/Auth;->ensureLoggedIn(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 469
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lcom/vkcoffee/android/NewsEntry;->flag(IZ)V

    .line 470
    iget v0, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    int-to-long v0, v0

    const/16 v2, 0x3c

    shl-long/2addr v0, v2

    iget v2, p0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    int-to-long v2, v2

    const/16 v5, 0x20

    shl-long/2addr v2, v5

    or-long/2addr v0, v2

    iget v2, p0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    int-to-long v2, v2

    or-long v10, v0, v2

    .line 471
    .local v10, "id":J
    if-eqz p1, :cond_2

    .line 472
    iget v0, p0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    .line 476
    :goto_1
    invoke-static {p0}, Lcom/vkcoffee/android/data/Posts;->broadcastPostUpdate(Lcom/vkcoffee/android/NewsEntry;)V

    .line 477
    sget-object v0, Lcom/vkcoffee/android/data/Posts;->liking:Ljava/util/ArrayList;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 480
    sget-object v0, Lcom/vkcoffee/android/data/Posts;->liking:Ljava/util/ArrayList;

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 481
    iget v8, p0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    .local v8, "lOid":I
    iget v9, p0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    .line 482
    .local v9, "lPid":I
    new-instance v0, Lcom/vkcoffee/android/api/wall/WallLike;

    iget v2, p0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget v3, p0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget v5, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const-string/jumbo v7, ""

    move v1, p1

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/vkcoffee/android/api/wall/WallLike;-><init>(ZIIZIILjava/lang/String;)V

    const-string/jumbo v1, "ref"

    .line 483
    invoke-virtual {v0, v1, p3}, Lcom/vkcoffee/android/api/wall/WallLike;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    new-instance v1, Lcom/vkcoffee/android/data/Posts$4;

    move-wide v2, v10

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v9}, Lcom/vkcoffee/android/data/Posts$4;-><init>(JLcom/vkcoffee/android/NewsEntry;ZLandroid/app/Activity;Ljava/lang/String;II)V

    .line 484
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 516
    invoke-virtual {v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec()Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0

    .line 474
    .end local v8    # "lOid":I
    .end local v9    # "lPid":I
    :cond_2
    iget v0, p0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/NewsEntry;->numLikes:I

    goto :goto_1
.end method

.method public static publishPostponed(Lcom/vkcoffee/android/NewsEntry;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "e"    # Lcom/vkcoffee/android/NewsEntry;
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "runAfter"    # Ljava/lang/Runnable;

    .prologue
    .line 121
    new-instance v0, Lcom/vkcoffee/android/api/wall/WallPost;

    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    iget v2, p0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/wall/WallPost;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/data/Posts$1;

    invoke-direct {v1, p1, p0, p1, p2}, Lcom/vkcoffee/android/data/Posts$1;-><init>(Landroid/content/Context;Lcom/vkcoffee/android/NewsEntry;Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 122
    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/wall/WallPost;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 145
    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 146
    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 147
    return-void
.end method

.method private static saveRepostComment(Lcom/vkcoffee/android/NewsEntry;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 3
    .param p0, "e"    # Lcom/vkcoffee/android/NewsEntry;
    .param p1, "newComment"    # Ljava/lang/String;
    .param p2, "act"    # Landroid/app/Activity;

    .prologue
    .line 422
    new-instance v0, Lcom/vkcoffee/android/api/wall/WallEdit;

    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget v2, p0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-direct {v0, v1, v2, p1}, Lcom/vkcoffee/android/api/wall/WallEdit;-><init>(IILjava/lang/String;)V

    new-instance v1, Lcom/vkcoffee/android/data/Posts$2;

    invoke-direct {v1, p2, p2, p0, p1}, Lcom/vkcoffee/android/data/Posts$2;-><init>(Landroid/content/Context;Landroid/app/Activity;Lcom/vkcoffee/android/NewsEntry;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/wall/WallEdit;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 440
    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 441
    return-void
.end method

.method public static toggleFixed(Lcom/vkcoffee/android/NewsEntry;Landroid/app/Activity;Ljava/lang/Runnable;)V
    .locals 4
    .param p0, "post"    # Lcom/vkcoffee/android/NewsEntry;
    .param p1, "act"    # Landroid/app/Activity;
    .param p2, "runAfter"    # Ljava/lang/Runnable;

    .prologue
    .line 536
    new-instance v1, Lcom/vkcoffee/android/api/wall/WallSetFixed;

    iget v2, p0, Lcom/vkcoffee/android/NewsEntry;->postID:I

    iget v3, p0, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v1, v2, v3, v0}, Lcom/vkcoffee/android/api/wall/WallSetFixed;-><init>(IIZ)V

    new-instance v0, Lcom/vkcoffee/android/data/Posts$5;

    invoke-direct {v0, p1, p0, p1, p2}, Lcom/vkcoffee/android/data/Posts$5;-><init>(Landroid/content/Context;Lcom/vkcoffee/android/NewsEntry;Landroid/app/Activity;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/api/wall/WallSetFixed;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 547
    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 548
    return-void

    .line 536
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
