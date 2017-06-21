.class public Lcom/vkcoffee/android/NewsComment;
.super Ljava/lang/Object;
.source "NewsComment.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Lcom/vkcoffee/android/Comment;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/vkcoffee/android/NewsComment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public attachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field public canDelete:Z

.field public canEdit:Z

.field public cid:I

.field public cnum:I

.field public displayableText:Ljava/lang/CharSequence;

.field public isBanned:Z

.field public isDeleted:Z

.field public isLiked:Z

.field public isReported:Z

.field public numLikes:I

.field public replyToCommentID:I

.field public respToName:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public time:I

.field public uid:I

.field public userName:Ljava/lang/String;

.field public userPhoto:Ljava/lang/String;

.field public userRName:Ljava/lang/String;

.field public userWName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/vkcoffee/android/NewsComment$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/NewsComment$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/NewsComment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/NewsComment;->attachments:Ljava/util/ArrayList;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/NewsComment;->attachments:Ljava/util/ArrayList;

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/NewsComment;->text:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/NewsComment;->userName:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/NewsComment;->userRName:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/NewsComment;->userWName:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/NewsComment;->time:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/NewsComment;->respToName:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/NewsComment;->userPhoto:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/NewsComment;->cid:I

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/NewsComment;->uid:I

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/NewsComment;->cnum:I

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/NewsComment;->replyToCommentID:I

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/vkcoffee/android/NewsComment;->canDelete:Z

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/NewsComment;->numLikes:I

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/vkcoffee/android/NewsComment;->isLiked:Z

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-boolean v1, p0, Lcom/vkcoffee/android/NewsComment;->isDeleted:Z

    .line 65
    return-void

    :cond_0
    move v0, v2

    .line 61
    goto :goto_0

    :cond_1
    move v0, v2

    .line 63
    goto :goto_1

    :cond_2
    move v1, v2

    .line 64
    goto :goto_2
.end method

.method public constructor <init>(Lorg/json/JSONObject;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 8
    .param p1, "jc"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p2, "names":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p3, "photos":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    .local p4, "names_dat":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/vkcoffee/android/NewsComment;->attachments:Ljava/util/ArrayList;

    .line 68
    const-string/jumbo v4, "id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/vkcoffee/android/NewsComment;->cid:I

    .line 69
    const-string/jumbo v4, "from_id"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/vkcoffee/android/NewsComment;->uid:I

    .line 70
    const-string/jumbo v4, "text"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "txt":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/NewsComment;->setText(Ljava/lang/String;)V

    .line 73
    iget v4, p0, Lcom/vkcoffee/android/NewsComment;->uid:I

    invoke-virtual {p3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/vkcoffee/android/NewsComment;->userPhoto:Ljava/lang/String;

    .line 74
    iget v4, p0, Lcom/vkcoffee/android/NewsComment;->uid:I

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/vkcoffee/android/NewsComment;->userName:Ljava/lang/String;

    .line 75
    iget v4, p0, Lcom/vkcoffee/android/NewsComment;->uid:I

    invoke-virtual {p4, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/vkcoffee/android/NewsComment;->userRName:Ljava/lang/String;

    .line 76
    const-string/jumbo v4, "reply_to_user"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    const-string/jumbo v4, "reply_to_user"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 78
    .local v2, "id":I
    if-gez v2, :cond_2

    .line 79
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    const v7, 0x7f0800e4

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/NewsComment;->respToName:Ljava/lang/String;

    .line 84
    .end local v2    # "id":I
    :cond_0
    :goto_0
    const-string/jumbo v4, "date"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/vkcoffee/android/NewsComment;->time:I

    .line 85
    const-string/jumbo v4, "can_edit"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_3

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/vkcoffee/android/NewsComment;->canEdit:Z

    .line 86
    const-string/jumbo v4, "reply_to_comment"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/vkcoffee/android/NewsComment;->replyToCommentID:I

    .line 88
    const-string/jumbo v4, "likes"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 89
    const-string/jumbo v4, "likes"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v7, "count"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/vkcoffee/android/NewsComment;->numLikes:I

    .line 90
    const-string/jumbo v4, "likes"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v7, "user_likes"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v5, :cond_4

    :goto_2
    iput-boolean v5, p0, Lcom/vkcoffee/android/NewsComment;->isLiked:Z

    .line 93
    :cond_1
    const-string/jumbo v4, "attachments"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 94
    const-string/jumbo v4, "attachments"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 95
    .local v0, "atts":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 96
    iget-object v4, p0, Lcom/vkcoffee/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/vkcoffee/android/attachments/Attachment;->parse(Lorg/json/JSONObject;)Lcom/vkcoffee/android/attachments/Attachment;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 81
    .end local v0    # "atts":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .restart local v2    # "id":I
    :cond_2
    invoke-virtual {p4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/vkcoffee/android/NewsComment;->respToName:Ljava/lang/String;

    goto :goto_0

    .end local v2    # "id":I
    :cond_3
    move v4, v6

    .line 85
    goto :goto_1

    :cond_4
    move v5, v6

    .line 90
    goto :goto_2

    .line 98
    .restart local v0    # "atts":Lorg/json/JSONArray;
    .restart local v1    # "i":I
    :cond_5
    iget-object v4, p0, Lcom/vkcoffee/android/NewsComment;->attachments:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/vkcoffee/android/attachments/Attachment;->sort(Ljava/util/List;)V

    .line 100
    .end local v0    # "atts":Lorg/json/JSONArray;
    .end local v1    # "i":I
    :cond_6
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public getAttachments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/vkcoffee/android/attachments/Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    iget-object v0, p0, Lcom/vkcoffee/android/NewsComment;->attachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDisplayableText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/vkcoffee/android/NewsComment;->displayableText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 181
    iget v0, p0, Lcom/vkcoffee/android/NewsComment;->cid:I

    return v0
.end method

.method public getNumLikes()I
    .locals 1

    .prologue
    .line 171
    iget v0, p0, Lcom/vkcoffee/android/NewsComment;->numLikes:I

    return v0
.end method

.method public getResponseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/vkcoffee/android/NewsComment;->respToName:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/vkcoffee/android/NewsComment;->time:I

    return v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lcom/vkcoffee/android/NewsComment;->uid:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/vkcoffee/android/NewsComment;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public isBanned()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Lcom/vkcoffee/android/NewsComment;->isBanned:Z

    return v0
.end method

.method public isLiked()Z
    .locals 1

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/vkcoffee/android/NewsComment;->isLiked:Z

    return v0
.end method

.method public isReported()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/vkcoffee/android/NewsComment;->isReported:Z

    return v0
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/vkcoffee/android/NewsComment;->text:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/vkcoffee/android/NewsComment;->text:Ljava/lang/String;

    invoke-static {v0}, Lcom/vkcoffee/android/LinkParser;->parseLinks(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/Global;->replaceEmoji(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/NewsComment;->displayableText:Ljava/lang/CharSequence;

    .line 125
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    iget-object v0, p0, Lcom/vkcoffee/android/NewsComment;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/vkcoffee/android/NewsComment;->userName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lcom/vkcoffee/android/NewsComment;->userRName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/vkcoffee/android/NewsComment;->userWName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget v0, p0, Lcom/vkcoffee/android/NewsComment;->time:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object v0, p0, Lcom/vkcoffee/android/NewsComment;->respToName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/vkcoffee/android/NewsComment;->userPhoto:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget v0, p0, Lcom/vkcoffee/android/NewsComment;->cid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Lcom/vkcoffee/android/NewsComment;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v0, p0, Lcom/vkcoffee/android/NewsComment;->cnum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v0, p0, Lcom/vkcoffee/android/NewsComment;->replyToCommentID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-boolean v0, p0, Lcom/vkcoffee/android/NewsComment;->canDelete:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget v0, p0, Lcom/vkcoffee/android/NewsComment;->numLikes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget-boolean v0, p0, Lcom/vkcoffee/android/NewsComment;->isLiked:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget-boolean v0, p0, Lcom/vkcoffee/android/NewsComment;->isDeleted:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    return-void

    :cond_0
    move v0, v2

    .line 116
    goto :goto_0

    :cond_1
    move v0, v2

    .line 118
    goto :goto_1

    :cond_2
    move v1, v2

    .line 119
    goto :goto_2
.end method
