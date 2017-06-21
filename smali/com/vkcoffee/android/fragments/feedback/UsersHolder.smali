.class public Lcom/vkcoffee/android/fragments/feedback/UsersHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "UsersHolder.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vkcoffee/android/ui/PhotoStripView$OnPhotoClickListener;
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/api/models/Notification;",
        ">;",
        "Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/vkcoffee/android/ui/PhotoStripView$OnPhotoClickListener;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;"
    }
.end annotation


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final TAG_POST_URL:I


# instance fields
.field private action:Landroid/widget/ImageView;

.field private final mActions:[[[Ljava/lang/String;

.field private mData:Lcom/vkcoffee/android/api/models/Notification;

.field private mNewsAction:Lcom/vkcoffee/android/functions/VoidF1Int;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1Int",
            "<",
            "Lcom/vkcoffee/android/api/models/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private mUserAction:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private photo:Landroid/widget/ImageView;

.field private postPhoto:Landroid/widget/ImageView;

.field private subtitle:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private users:Lcom/vkcoffee/android/ui/PhotoStripView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;[[[Ljava/lang/String;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "actions"    # [[[Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 58
    const v0, 0x7f030107

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 59
    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->title:Landroid/widget/TextView;

    .line 60
    const v0, 0x7f100169

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->subtitle:Landroid/widget/TextView;

    .line 61
    const v0, 0x7f100146

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->photo:Landroid/widget/ImageView;

    .line 62
    const v0, 0x7f1002c3

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->postPhoto:Landroid/widget/ImageView;

    .line 63
    const v0, 0x7f10021e

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->action:Landroid/widget/ImageView;

    .line 64
    const v0, 0x7f100203

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/ui/PhotoStripView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->users:Lcom/vkcoffee/android/ui/PhotoStripView;

    .line 65
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->mActions:[[[Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->postPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->users:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/ui/PhotoStripView;->setListener(Lcom/vkcoffee/android/ui/PhotoStripView$OnPhotoClickListener;)V

    .line 70
    return-void
.end method

.method public static getImageURL(Lcom/vkcoffee/android/api/models/Notification;I)Ljava/lang/String;
    .locals 2
    .param p0, "e"    # Lcom/vkcoffee/android/api/models/Notification;
    .param p1, "index"    # I

    .prologue
    .line 218
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/vkcoffee/android/api/models/Notification;->feedBackUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/vkcoffee/android/api/models/Notification;->feedBackUsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/UserProfile;

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    .line 221
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->getPostImageURL(Lcom/vkcoffee/android/api/models/Notification;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getImagesCount(Lcom/vkcoffee/android/api/models/Notification;)I
    .locals 3
    .param p0, "entry"    # Lcom/vkcoffee/android/api/models/Notification;

    .prologue
    .line 226
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->getPostImageURL(Lcom/vkcoffee/android/api/models/Notification;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/api/models/Notification;->feedBackUsers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x7

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getPostImageURL(Lcom/vkcoffee/android/api/models/Notification;)Ljava/lang/String;
    .locals 7
    .param p0, "entry"    # Lcom/vkcoffee/android/api/models/Notification;

    .prologue
    const/4 v6, 0x0

    .line 230
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/api/models/Notification;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 231
    .local v4, "url":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 232
    const/4 v2, 0x0

    .line 233
    .local v2, "found":Z
    iget-object v5, p0, Lcom/vkcoffee/android/api/models/Notification;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    if-eqz v5, :cond_0

    .line 234
    iget-object v5, p0, Lcom/vkcoffee/android/api/models/Notification;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    iget-object v1, v5, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 235
    .local v1, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    if-eqz v1, :cond_0

    .line 236
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 237
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 238
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v5, v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    if-eqz v5, :cond_2

    .line 239
    check-cast v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    invoke-interface {v0}, Lcom/vkcoffee/android/attachments/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v6, v4}, Lcom/vkcoffee/android/api/models/Notification;->setTag(ILjava/lang/Object;)V

    .line 240
    const/4 v2, 0x1

    .line 246
    .end local v1    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    .end local v3    # "i":I
    :cond_0
    if-nez v2, :cond_1

    .line 247
    const-string/jumbo v4, ""

    invoke-virtual {p0, v6, v4}, Lcom/vkcoffee/android/api/models/Notification;->setTag(ILjava/lang/Object;)V

    .line 250
    .end local v2    # "found":Z
    :cond_1
    return-object v4

    .line 236
    .restart local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    .restart local v1    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    .restart local v2    # "found":Z
    .restart local v3    # "i":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public attach(Lcom/vkcoffee/android/functions/VoidF1;Lcom/vkcoffee/android/functions/VoidF1Int;)Lcom/vkcoffee/android/fragments/feedback/UsersHolder;
    .locals 0
    .param p1    # Lcom/vkcoffee/android/functions/VoidF1;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/vkcoffee/android/functions/VoidF1Int;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;",
            "Lcom/vkcoffee/android/functions/VoidF1Int",
            "<",
            "Lcom/vkcoffee/android/api/models/Notification;",
            ">;)",
            "Lcom/vkcoffee/android/fragments/feedback/UsersHolder;"
        }
    .end annotation

    .prologue
    .line 74
    .local p1, "userAction":Lcom/vkcoffee/android/functions/VoidF1;, "Lcom/vkcoffee/android/functions/VoidF1<Lcom/vkcoffee/android/UserProfile;>;"
    .local p2, "newsAction":Lcom/vkcoffee/android/functions/VoidF1Int;, "Lcom/vkcoffee/android/functions/VoidF1Int<Lcom/vkcoffee/android/api/models/Notification;>;"
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->mUserAction:Lcom/vkcoffee/android/functions/VoidF1;

    .line 75
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->mNewsAction:Lcom/vkcoffee/android/functions/VoidF1Int;

    .line 76
    return-object p0
.end method

.method public bind(Lcom/vkcoffee/android/api/models/Notification;)V
    .locals 14
    .param p1, "entry"    # Lcom/vkcoffee/android/api/models/Notification;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->mData:Lcom/vkcoffee/android/api/models/Notification;

    .line 84
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/models/Notification;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/text/SpannableStringBuilder;

    .line 85
    .local v7, "titleText":Landroid/text/SpannableStringBuilder;
    if-nez v7, :cond_4

    .line 88
    new-instance v7, Landroid/text/SpannableStringBuilder;

    .end local v7    # "titleText":Landroid/text/SpannableStringBuilder;
    iget-object v8, p1, Lcom/vkcoffee/android/api/models/Notification;->feedBackUsers:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/UserProfile;

    iget-object v8, v8, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 89
    .restart local v7    # "titleText":Landroid/text/SpannableStringBuilder;
    new-instance v8, Lcom/vkcoffee/android/ui/Font$TypefaceSpan;

    sget-object v9, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    const v10, -0xb88b58

    invoke-direct {v8, v9, v10}, Lcom/vkcoffee/android/ui/Font$TypefaceSpan;-><init>(Lcom/vkcoffee/android/ui/Font;I)V

    const/4 v9, 0x0

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 91
    iget-object v8, p1, Lcom/vkcoffee/android/api/models/Notification;->feedBackUsers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    .line 92
    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 93
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e0028

    iget-object v10, p1, Lcom/vkcoffee/android/api/models/Notification;->feedBackUsers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p1, Lcom/vkcoffee/android/api/models/Notification;->feedBackUsers:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v8, v9, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 94
    .local v4, "moreUsers":Ljava/lang/String;
    const-string/jumbo v8, "<b>"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 95
    .local v6, "start":I
    const-string/jumbo v8, "<b>"

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 96
    const-string/jumbo v8, "</b>"

    invoke-virtual {v4, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 97
    .local v0, "end":I
    const-string/jumbo v8, "</b>"

    const-string/jumbo v9, ""

    invoke-virtual {v4, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 98
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 99
    .local v5, "offset":I
    invoke-virtual {v7, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 100
    new-instance v8, Lcom/vkcoffee/android/ui/Font$TypefaceSpan;

    sget-object v9, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    invoke-direct {v8, v9}, Lcom/vkcoffee/android/ui/Font$TypefaceSpan;-><init>(Lcom/vkcoffee/android/ui/Font;)V

    add-int v9, v6, v5

    add-int v10, v0, v5

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 104
    .end local v0    # "end":I
    .end local v4    # "moreUsers":Ljava/lang/String;
    .end local v5    # "offset":I
    .end local v6    # "start":I
    :cond_0
    const/4 v1, 0x0

    .local v1, "index1":I
    const/4 v3, 0x0

    .line 105
    .local v3, "index3":I
    sget-object v8, Lcom/vkcoffee/android/fragments/feedback/UsersHolder$1;->$SwitchMap$com$vkontakte$android$api$models$Notification$Activity:[I

    iget-object v9, p1, Lcom/vkcoffee/android/api/models/Notification;->type:Lcom/vkcoffee/android/api/models/Notification$Type;

    iget-object v9, v9, Lcom/vkcoffee/android/api/models/Notification$Type;->activity:Lcom/vkcoffee/android/api/models/Notification$Activity;

    invoke-virtual {v9}, Lcom/vkcoffee/android/api/models/Notification$Activity;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 124
    :goto_0
    iget-object v8, p1, Lcom/vkcoffee/android/api/models/Notification;->feedBackUsers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3

    .line 125
    iget-object v8, p1, Lcom/vkcoffee/android/api/models/Notification;->feedBackUsers:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vkcoffee/android/UserProfile;

    iget-boolean v8, v8, Lcom/vkcoffee/android/UserProfile;->f:Z

    if-eqz v8, :cond_2

    const/4 v2, 0x1

    .line 130
    .local v2, "index2":I
    :goto_1
    sget-object v8, Lcom/vkcoffee/android/fragments/feedback/UsersHolder$1;->$SwitchMap$com$vkontakte$android$api$models$Notification$ParentType:[I

    iget-object v9, p1, Lcom/vkcoffee/android/api/models/Notification;->type:Lcom/vkcoffee/android/api/models/Notification$Type;

    iget-object v9, v9, Lcom/vkcoffee/android/api/models/Notification$Type;->parentType:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-virtual {v9}, Lcom/vkcoffee/android/api/models/Notification$ParentType;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    .line 145
    :goto_2
    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 146
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->mActions:[[[Ljava/lang/String;

    aget-object v8, v8, v1

    aget-object v8, v8, v2

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 148
    iget-object v8, p1, Lcom/vkcoffee/android/api/models/Notification;->link:Ljava/lang/CharSequence;

    if-eqz v8, :cond_1

    .line 149
    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 150
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    .line 151
    .restart local v6    # "start":I
    iget-object v8, p1, Lcom/vkcoffee/android/api/models/Notification;->link:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 152
    new-instance v8, Landroid/text/style/ForegroundColorSpan;

    const v9, -0xb88b58

    invoke-direct {v8, v9}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    const/16 v10, 0x21

    invoke-virtual {v7, v8, v6, v9, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 155
    .end local v6    # "start":I
    :cond_1
    invoke-virtual {p1, v7}, Lcom/vkcoffee/android/api/models/Notification;->setTag(Ljava/lang/Object;)V

    .line 173
    .end local v1    # "index1":I
    .end local v2    # "index2":I
    .end local v3    # "index3":I
    :goto_3
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->subtitle:Landroid/widget/TextView;

    iget v9, p1, Lcom/vkcoffee/android/api/models/Notification;->date:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/vkcoffee/android/TimeUtils;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->postPhoto:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->getPostImageURL(Lcom/vkcoffee/android/api/models/Notification;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x8

    :goto_4
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->users:Lcom/vkcoffee/android/ui/PhotoStripView;

    const/4 v9, 0x6

    iget-object v10, p1, Lcom/vkcoffee/android/api/models/Notification;->feedBackUsers:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v8, v9}, Lcom/vkcoffee/android/ui/PhotoStripView;->setCount(I)V

    .line 177
    iget-object v9, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->users:Lcom/vkcoffee/android/ui/PhotoStripView;

    iget-object v8, p1, Lcom/vkcoffee/android/api/models/Notification;->feedBackUsers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x1

    if-le v8, v10, :cond_6

    const/4 v8, 0x0

    :goto_5
    invoke-virtual {v9, v8}, Lcom/vkcoffee/android/ui/PhotoStripView;->setVisibility(I)V

    .line 178
    return-void

    .line 107
    .restart local v1    # "index1":I
    .restart local v3    # "index3":I
    :pswitch_0
    const/4 v1, 0x0

    .line 108
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->action:Landroid/widget/ImageView;

    const v9, 0x7f020161

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 111
    :pswitch_1
    const/4 v1, 0x1

    .line 112
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->action:Landroid/widget/ImageView;

    const v9, 0x7f020162

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 115
    :pswitch_2
    const/4 v1, 0x2

    .line 116
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->action:Landroid/widget/ImageView;

    const v9, 0x7f02015f

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 119
    :pswitch_3
    const/4 v1, 0x3

    .line 120
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->action:Landroid/widget/ImageView;

    const v9, 0x7f020160

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 125
    :cond_2
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 127
    :cond_3
    const/4 v2, 0x2

    .restart local v2    # "index2":I
    goto/16 :goto_1

    .line 132
    :pswitch_4
    const/4 v3, 0x0

    .line 133
    goto/16 :goto_2

    .line 135
    :pswitch_5
    const/4 v3, 0x1

    .line 136
    goto/16 :goto_2

    .line 138
    :pswitch_6
    const/4 v3, 0x2

    .line 139
    goto/16 :goto_2

    .line 141
    :pswitch_7
    const/4 v3, 0x3

    goto/16 :goto_2

    .line 157
    .end local v1    # "index1":I
    .end local v2    # "index2":I
    .end local v3    # "index3":I
    :cond_4
    sget-object v8, Lcom/vkcoffee/android/fragments/feedback/UsersHolder$1;->$SwitchMap$com$vkontakte$android$api$models$Notification$Activity:[I

    iget-object v9, p1, Lcom/vkcoffee/android/api/models/Notification;->type:Lcom/vkcoffee/android/api/models/Notification$Type;

    iget-object v9, v9, Lcom/vkcoffee/android/api/models/Notification$Type;->activity:Lcom/vkcoffee/android/api/models/Notification$Activity;

    invoke-virtual {v9}, Lcom/vkcoffee/android/api/models/Notification$Activity;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_2

    goto/16 :goto_3

    .line 159
    :pswitch_8
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->action:Landroid/widget/ImageView;

    const v9, 0x7f020161

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 162
    :pswitch_9
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->action:Landroid/widget/ImageView;

    const v9, 0x7f020162

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 165
    :pswitch_a
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->action:Landroid/widget/ImageView;

    const v9, 0x7f02015f

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 168
    :pswitch_b
    iget-object v8, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->action:Landroid/widget/ImageView;

    const v9, 0x7f020160

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    .line 175
    :cond_5
    const/4 v8, 0x0

    goto/16 :goto_4

    .line 177
    :cond_6
    const/16 v8, 0x8

    goto :goto_5

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 130
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 157
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 38
    check-cast p1, Lcom/vkcoffee/android/api/models/Notification;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->bind(Lcom/vkcoffee/android/api/models/Notification;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const v3, 0x7f0202c5

    .line 193
    if-nez p1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 195
    .local v0, "placeholder":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 196
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 199
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 215
    :goto_0
    return-void

    .line 200
    .end local v0    # "placeholder":Landroid/graphics/drawable/Drawable;
    :cond_1
    add-int/lit8 p1, p1, -0x1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->users:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/PhotoStripView;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 201
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->users:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 202
    .restart local v0    # "placeholder":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_2

    .line 203
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->users:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->users:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/ui/PhotoStripView;->setTag(Ljava/lang/Object;)V

    .line 206
    :cond_2
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->users:Lcom/vkcoffee/android/ui/PhotoStripView;

    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->setBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 208
    .end local v0    # "placeholder":Landroid/graphics/drawable/Drawable;
    :cond_3
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->postPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 209
    .restart local v0    # "placeholder":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_4

    .line 210
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->postPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020271

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->postPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 213
    :cond_4
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->postPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onClick()V
    .locals 3

    .prologue
    .line 277
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->mNewsAction:Lcom/vkcoffee/android/functions/VoidF1Int;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->mNewsAction:Lcom/vkcoffee/android/functions/VoidF1Int;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->mData:Lcom/vkcoffee/android/api/models/Notification;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/functions/VoidF1Int;->f(Ljava/lang/Object;I)V

    .line 280
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 255
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->photo:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->mUserAction:Lcom/vkcoffee/android/functions/VoidF1;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->mUserAction:Lcom/vkcoffee/android/functions/VoidF1;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->mData:Lcom/vkcoffee/android/api/models/Notification;

    iget-object v1, v1, Lcom/vkcoffee/android/api/models/Notification;->feedBackUsers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/functions/VoidF1;->f(Ljava/lang/Object;)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->mNewsAction:Lcom/vkcoffee/android/functions/VoidF1Int;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->mNewsAction:Lcom/vkcoffee/android/functions/VoidF1Int;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->mData:Lcom/vkcoffee/android/api/models/Notification;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/functions/VoidF1Int;->f(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method public onPhotoClick(Lcom/vkcoffee/android/ui/PhotoStripView;I)V
    .locals 2
    .param p1, "view"    # Lcom/vkcoffee/android/ui/PhotoStripView;
    .param p2, "index"    # I

    .prologue
    .line 268
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->users:Lcom/vkcoffee/android/ui/PhotoStripView;

    if-ne p1, v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->mUserAction:Lcom/vkcoffee/android/functions/VoidF1;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->mUserAction:Lcom/vkcoffee/android/functions/VoidF1;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->mData:Lcom/vkcoffee/android/api/models/Notification;

    iget-object v1, v1, Lcom/vkcoffee/android/api/models/Notification;->feedBackUsers:Ljava/util/List;

    add-int/lit8 p2, p2, 0x1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/functions/VoidF1;->f(Ljava/lang/Object;)V

    .line 273
    :cond_0
    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 182
    if-nez p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 189
    :goto_0
    return-void

    .line 184
    :cond_0
    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->users:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/PhotoStripView;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->users:Lcom/vkcoffee/android/ui/PhotoStripView;

    invoke-virtual {v0, p1, p2}, Lcom/vkcoffee/android/ui/PhotoStripView;->setBitmap(ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/UsersHolder;->postPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
