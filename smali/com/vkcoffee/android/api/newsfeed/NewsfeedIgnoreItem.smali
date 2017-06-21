.class public Lcom/vkcoffee/android/api/newsfeed/NewsfeedIgnoreItem;
.super Lcom/vkcoffee/android/api/ResultlessAPIRequest;
.source "NewsfeedIgnoreItem.java"


# direct methods
.method public constructor <init>(Lcom/vkcoffee/android/NewsEntry;)V
    .locals 2
    .param p1, "e"    # Lcom/vkcoffee/android/NewsEntry;

    .prologue
    .line 9
    const-string/jumbo v0, "newsfeed.ignoreItem"

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/api/ResultlessAPIRequest;-><init>(Ljava/lang/String;)V

    .line 10
    const-string/jumbo v0, "owner_id"

    iget v1, p1, Lcom/vkcoffee/android/NewsEntry;->ownerID:I

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedIgnoreItem;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 11
    const-string/jumbo v0, "item_id"

    iget v1, p1, Lcom/vkcoffee/android/NewsEntry;->postID:I

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedIgnoreItem;->param(Ljava/lang/String;I)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 12
    const/16 v0, 0x100

    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "profilephoto"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedIgnoreItem;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 34
    :goto_0
    return-void

    .line 15
    :cond_0
    iget v0, p1, Lcom/vkcoffee/android/NewsEntry;->type:I

    sparse-switch v0, :sswitch_data_0

    .line 18
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "wall"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedIgnoreItem;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0

    .line 21
    :sswitch_0
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "tag"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedIgnoreItem;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0

    .line 24
    :sswitch_1
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "photo"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedIgnoreItem;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0

    .line 27
    :sswitch_2
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "video"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedIgnoreItem;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0

    .line 30
    :sswitch_3
    const-string/jumbo v0, "type"

    const-string/jumbo v1, "audio"

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/api/newsfeed/NewsfeedIgnoreItem;->param(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_0

    .line 15
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x7 -> :sswitch_0
        0xa -> :sswitch_3
    .end sparse-switch
.end method

.method public static canIgnore(Lcom/vkcoffee/android/NewsEntry;)Z
    .locals 3
    .param p0, "e"    # Lcom/vkcoffee/android/NewsEntry;

    .prologue
    const/4 v0, 0x1

    .line 37
    const/16 v1, 0x100

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/NewsEntry;->flag(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/vkcoffee/android/NewsEntry;->type:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
