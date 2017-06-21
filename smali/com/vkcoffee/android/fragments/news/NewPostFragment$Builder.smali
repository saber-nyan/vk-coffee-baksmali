.class public Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;
.super Lcom/vkcoffee/android/navigation/Navigator;
.source "NewPostFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vkcoffee/android/fragments/news/NewPostFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 149
    const-class v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment;

    new-instance v1, Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    invoke-direct {v1}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;-><init>()V

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setGravity(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    const/high16 v2, 0x43e10000    # 450.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setPreferredHeight(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setInputMode(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    const/high16 v2, 0x44340000    # 720.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setMaxWidth(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->setMinSpacing(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/TabletDialogActivity$Builder;->windowBackgroundResource(I)Lcom/vkcoffee/android/TabletDialogActivity$Builder;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/vkcoffee/android/navigation/Navigator;-><init>(Ljava/lang/Class;Lcom/vkcoffee/android/navigation/Navigator$ActivityNavigator;)V

    .line 150
    return-void
.end method


# virtual methods
.method public attachAttachments([Lcom/vkcoffee/android/attachments/Attachment;)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;
    .locals 2
    .param p1, "attachments"    # [Lcom/vkcoffee/android/attachments/Attachment;

    .prologue
    .line 181
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "attachments"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 182
    return-object p0
.end method

.method public attachCamera(Z)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;
    .locals 2
    .param p1, "camera"    # Z

    .prologue
    .line 201
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "camera"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 202
    return-object p0
.end method

.method public attachGroup(Lcom/vkcoffee/android/api/Group;)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;
    .locals 2
    .param p1, "group"    # Lcom/vkcoffee/android/api/Group;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 206
    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p1, Lcom/vkcoffee/android/api/Group;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/vkcoffee/android/api/Group;->photo:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->attachGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    move-result-object p0

    .line 209
    .end local p0    # "this":Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;
    :cond_0
    return-object p0
.end method

.method public attachGroup(Ljava/lang/String;Ljava/lang/String;)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "photo"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 213
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "group_title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "group_photo"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-object p0
.end method

.method public attachPhoto(Landroid/net/Uri;)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;
    .locals 2
    .param p1, "photo"    # Landroid/net/Uri;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "photoURI"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 192
    return-object p0
.end method

.method public attachPhotos(Ljava/util/ArrayList;)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;"
        }
    .end annotation

    .prologue
    .line 176
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "photos"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 177
    return-object p0
.end method

.method public attachPost(Lcom/vkcoffee/android/NewsEntry;)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;
    .locals 2
    .param p1, "post"    # Lcom/vkcoffee/android/NewsEntry;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "edit"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 187
    return-object p0
.end method

.method public attachText(Ljava/lang/String;)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 196
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-object p0
.end method

.method public isPublic(Z)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;
    .locals 2
    .param p1, "isPublic"    # Z

    .prologue
    .line 219
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "public"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 220
    return-object p0
.end method

.method public send(Z)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;
    .locals 2
    .param p1, "send"    # Z

    .prologue
    .line 234
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "send_action"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 235
    return-object p0
.end method

.method public setBoardComment(Lcom/vkcoffee/android/api/board/BoardComment;II)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;
    .locals 3
    .param p1, "boardComment"    # Lcom/vkcoffee/android/api/board/BoardComment;
    .param p2, "topicId"    # I
    .param p3, "groupId"    # I

    .prologue
    .line 153
    new-instance v0, Lcom/vkcoffee/android/NewsEntry;

    invoke-direct {v0}, Lcom/vkcoffee/android/NewsEntry;-><init>()V

    .line 154
    .local v0, "ce":Lcom/vkcoffee/android/NewsEntry;
    iget-object v1, v0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string v2, "topic_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 155
    iget-object v1, v0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string v2, "group_id"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 156
    iget-object v1, v0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string v2, "comment"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 157
    iget-object v1, p1, Lcom/vkcoffee/android/api/board/BoardComment;->text:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    .line 158
    iget-object v1, p1, Lcom/vkcoffee/android/api/board/BoardComment;->attachments:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 159
    const/16 v1, 0xe

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 160
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->attachPost(Lcom/vkcoffee/android/NewsEntry;)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    .line 161
    return-object p0
.end method

.method public setMarketComment(Lcom/vkcoffee/android/api/board/BoardComment;I)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;
    .locals 3
    .param p1, "boardComment"    # Lcom/vkcoffee/android/api/board/BoardComment;
    .param p2, "groupId"    # I

    .prologue
    .line 165
    new-instance v0, Lcom/vkcoffee/android/NewsEntry;

    invoke-direct {v0}, Lcom/vkcoffee/android/NewsEntry;-><init>()V

    .line 166
    .local v0, "ce":Lcom/vkcoffee/android/NewsEntry;
    iget-object v1, v0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string v2, "group_id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 167
    iget-object v1, v0, Lcom/vkcoffee/android/NewsEntry;->extra:Landroid/os/Bundle;

    const-string v2, "comment"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 168
    iget-object v1, p1, Lcom/vkcoffee/android/api/board/BoardComment;->text:Ljava/lang/String;

    iput-object v1, v0, Lcom/vkcoffee/android/NewsEntry;->text:Ljava/lang/String;

    .line 169
    iget-object v1, p1, Lcom/vkcoffee/android/api/board/BoardComment;->attachments:Ljava/util/ArrayList;

    iput-object v1, v0, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 170
    const/16 v1, 0x11

    iput v1, v0, Lcom/vkcoffee/android/NewsEntry;->type:I

    .line 171
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->attachPost(Lcom/vkcoffee/android/NewsEntry;)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    .line 172
    return-object p0
.end method

.method public suggest(Z)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;
    .locals 2
    .param p1, "suggest"    # Z

    .prologue
    .line 229
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "suggest"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 230
    return-object p0
.end method

.method public uid(I)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;
    .locals 2
    .param p1, "uid"    # I

    .prologue
    .line 224
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->args:Landroid/os/Bundle;

    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    return-object p0
.end method
