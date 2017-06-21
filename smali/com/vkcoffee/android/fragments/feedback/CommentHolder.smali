.class Lcom/vkcoffee/android/fragments/feedback/CommentHolder;
.super Lcom/vkcoffee/android/ui/holder/RecyclerHolder;
.source "CommentHolder.java"

# interfaces
.implements Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/ui/holder/RecyclerHolder",
        "<",
        "Lcom/vkcoffee/android/api/models/Notification;",
        ">;",
        "Lme/grishka/appkit/imageloader/ImageLoaderViewHolder;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final TAG_POST_URL:I


# instance fields
.field private final info:Landroid/widget/TextView;

.field private mData:Lcom/vkcoffee/android/api/models/Notification;

.field private mNewsAction:Lcom/vkcoffee/android/functions/VoidF1Int;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1Int",
            "<",
            "Lcom/vkcoffee/android/api/models/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private mUsersAction:Lcom/vkcoffee/android/functions/VoidF1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/functions/VoidF1",
            "<",
            "Lcom/vkcoffee/android/UserProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final photo:Landroid/widget/ImageView;

.field private final postPhoto:Landroid/widget/ImageView;

.field private final subtitle:Landroid/widget/TextView;

.field private final title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 50
    const v0, 0x7f030106

    invoke-direct {p0, v0, p1}, Lcom/vkcoffee/android/ui/holder/RecyclerHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 51
    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->title:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f100169

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->subtitle:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f100202

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->info:Landroid/widget/TextView;

    .line 54
    const v0, 0x7f100146

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->photo:Landroid/widget/ImageView;

    .line 55
    const v0, 0x7f1002c3

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->postPhoto:Landroid/widget/ImageView;

    .line 57
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method static getImageURL(Lcom/vkcoffee/android/api/models/Notification;I)Ljava/lang/String;
    .locals 1
    .param p0, "entry"    # Lcom/vkcoffee/android/api/models/Notification;
    .param p1, "position"    # I

    .prologue
    .line 61
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/api/models/Notification;->commentUser:Lcom/vkcoffee/android/UserProfile;

    iget-object v0, v0, Lcom/vkcoffee/android/UserProfile;->photo:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->getPostImageURL(Lcom/vkcoffee/android/api/models/Notification;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getImagesCount(Lcom/vkcoffee/android/api/models/Notification;)I
    .locals 1
    .param p0, "entry"    # Lcom/vkcoffee/android/api/models/Notification;

    .prologue
    .line 158
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->getPostImageURL(Lcom/vkcoffee/android/api/models/Notification;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public static getPostImageURL(Lcom/vkcoffee/android/api/models/Notification;)Ljava/lang/String;
    .locals 7
    .param p0, "entry"    # Lcom/vkcoffee/android/api/models/Notification;

    .prologue
    const/4 v6, 0x0

    .line 162
    invoke-virtual {p0, v6}, Lcom/vkcoffee/android/api/models/Notification;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 163
    .local v4, "url":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 164
    const/4 v2, 0x0

    .line 165
    .local v2, "found":Z
    iget-object v5, p0, Lcom/vkcoffee/android/api/models/Notification;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    iget-object v1, v5, Lcom/vkcoffee/android/NewsEntry;->attachments:Ljava/util/ArrayList;

    .line 166
    .local v1, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 167
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 168
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v5, v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    if-eqz v5, :cond_2

    .line 169
    check-cast v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    invoke-interface {v0}, Lcom/vkcoffee/android/attachments/ImageAttachment;->getImageURL()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v6, v4}, Lcom/vkcoffee/android/api/models/Notification;->setTag(ILjava/lang/Object;)V

    .line 170
    const/4 v2, 0x1

    .line 174
    :cond_0
    if-nez v2, :cond_1

    .line 175
    const-string/jumbo v4, ""

    invoke-virtual {p0, v6, v4}, Lcom/vkcoffee/android/api/models/Notification;->setTag(ILjava/lang/Object;)V

    .line 178
    .end local v1    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    .end local v2    # "found":Z
    .end local v3    # "i":I
    :cond_1
    return-object v4

    .line 166
    .restart local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    .restart local v1    # "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/Attachment;>;"
    .restart local v2    # "found":Z
    .restart local v3    # "i":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method


# virtual methods
.method public attach(Lcom/vkcoffee/android/functions/VoidF1;Lcom/vkcoffee/android/functions/VoidF1Int;)Lcom/vkcoffee/android/fragments/feedback/CommentHolder;
    .locals 0
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
            "Lcom/vkcoffee/android/fragments/feedback/CommentHolder;"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "userAction":Lcom/vkcoffee/android/functions/VoidF1;, "Lcom/vkcoffee/android/functions/VoidF1<Lcom/vkcoffee/android/UserProfile;>;"
    .local p2, "newsAction":Lcom/vkcoffee/android/functions/VoidF1Int;, "Lcom/vkcoffee/android/functions/VoidF1Int<Lcom/vkcoffee/android/api/models/Notification;>;"
    iput-object p2, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->mNewsAction:Lcom/vkcoffee/android/functions/VoidF1Int;

    .line 66
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->mUsersAction:Lcom/vkcoffee/android/functions/VoidF1;

    .line 67
    return-object p0
.end method

.method public bind(Lcom/vkcoffee/android/api/models/Notification;)V
    .locals 7
    .param p1, "e"    # Lcom/vkcoffee/android/api/models/Notification;

    .prologue
    const/4 v2, 0x0

    const/16 v5, 0x20

    .line 72
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->mData:Lcom/vkcoffee/android/api/models/Notification;

    .line 73
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->title:Landroid/widget/TextView;

    iget-object v4, p1, Lcom/vkcoffee/android/api/models/Notification;->commentUser:Lcom/vkcoffee/android/UserProfile;

    iget-object v4, v4, Lcom/vkcoffee/android/UserProfile;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/vkcoffee/android/api/models/Notification;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/models/Notification;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 77
    .local v0, "infoText":Landroid/text/SpannableStringBuilder;
    if-nez v0, :cond_0

    .line 78
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .end local v0    # "infoText":Landroid/text/SpannableStringBuilder;
    iget v3, p1, Lcom/vkcoffee/android/api/models/Notification;->date:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vkcoffee/android/TimeUtils;->langDateRelative(ILandroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 79
    .restart local v0    # "infoText":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 80
    iget-object v3, p1, Lcom/vkcoffee/android/api/models/Notification;->link:Ljava/lang/CharSequence;

    if-nez v3, :cond_1

    move v1, v2

    .line 81
    .local v1, "linkLen":I
    :goto_0
    sget-object v3, Lcom/vkcoffee/android/fragments/feedback/CommentHolder$1;->$SwitchMap$com$vkontakte$android$api$models$Notification$ParentType:[I

    iget-object v4, p1, Lcom/vkcoffee/android/api/models/Notification;->type:Lcom/vkcoffee/android/api/models/Notification$Type;

    iget-object v4, v4, Lcom/vkcoffee/android/api/models/Notification$Type;->parentType:Lcom/vkcoffee/android/api/models/Notification$ParentType;

    invoke-virtual {v4}, Lcom/vkcoffee/android/api/models/Notification$ParentType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 107
    :goto_1
    if-lez v1, :cond_0

    .line 108
    iget-object v3, p1, Lcom/vkcoffee/android/api/models/Notification;->link:Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 109
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    const v4, -0xb88b58

    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 110
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    .line 109
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 113
    .end local v1    # "linkLen":I
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->info:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->info:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 116
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->postPhoto:Landroid/widget/ImageView;

    invoke-static {p1}, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->getPostImageURL(Lcom/vkcoffee/android/api/models/Notification;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    return-void

    .line 80
    :cond_1
    iget-object v3, p1, Lcom/vkcoffee/android/api/models/Notification;->link:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_0

    .line 83
    .restart local v1    # "linkLen":I
    :pswitch_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080314

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 84
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 87
    :pswitch_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080316

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 88
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 91
    :pswitch_2
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080315

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 94
    :pswitch_3
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080318

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 95
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    .line 98
    :pswitch_4
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080313

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 99
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    .line 102
    :pswitch_5
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080317

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 103
    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_1

    .line 116
    .end local v1    # "linkLen":I
    :cond_2
    const/16 v2, 0x8

    goto :goto_2

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public bridge synthetic bind(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lcom/vkcoffee/android/api/models/Notification;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->bind(Lcom/vkcoffee/android/api/models/Notification;)V

    return-void
.end method

.method public clearImage(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 135
    packed-switch p1, :pswitch_data_0

    .line 155
    :goto_0
    return-void

    .line 137
    :pswitch_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 138
    .local v0, "placeholder":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202c5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 146
    .end local v0    # "placeholder":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->postPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 147
    .restart local v0    # "placeholder":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 148
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->postPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020271

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->postPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->postPhoto:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onClick()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->mNewsAction:Lcom/vkcoffee/android/functions/VoidF1Int;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->mNewsAction:Lcom/vkcoffee/android/functions/VoidF1Int;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->mData:Lcom/vkcoffee/android/api/models/Notification;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->getAdapterPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/vkcoffee/android/functions/VoidF1Int;->f(Ljava/lang/Object;I)V

    .line 186
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->mData:Lcom/vkcoffee/android/api/models/Notification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->mUsersAction:Lcom/vkcoffee/android/functions/VoidF1;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->mUsersAction:Lcom/vkcoffee/android/functions/VoidF1;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->mData:Lcom/vkcoffee/android/api/models/Notification;

    iget-object v1, v1, Lcom/vkcoffee/android/api/models/Notification;->commentUser:Lcom/vkcoffee/android/UserProfile;

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/functions/VoidF1;->f(Ljava/lang/Object;)V

    .line 193
    :cond_0
    return-void
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 121
    packed-switch p1, :pswitch_data_0

    .line 131
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 127
    :pswitch_1
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/feedback/CommentHolder;->postPhoto:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
