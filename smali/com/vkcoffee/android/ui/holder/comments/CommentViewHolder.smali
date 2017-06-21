.class public Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;
.super Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder;
.source "CommentViewHolder.java"

# interfaces
.implements Lme/grishka/appkit/views/UsableRecyclerView$Clickable;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder$CommentViewHolderListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/vkcoffee/android/Comment;",
        ">",
        "Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder",
        "<TT;>;",
        "Lme/grishka/appkit/views/UsableRecyclerView$Clickable;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private attachContainer:Landroid/view/ViewGroup;

.field private date:Landroid/widget/TextView;

.field private final holderListener:Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder$CommentViewHolderListener;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder$CommentViewHolderListener",
            "<TT;>;"
        }
    .end annotation
.end field

.field private likes:Landroid/widget/TextView;

.field private name:Landroid/widget/TextView;

.field private photo:Landroid/widget/ImageView;

.field private reply:Landroid/widget/ImageView;

.field private text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder$CommentViewHolderListener;)V
    .locals 8
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder$CommentViewHolderListener",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;, "Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder<TT;>;"
    .local p2, "holderListener":Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder$CommentViewHolderListener;, "Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder$CommentViewHolderListener<TT;>;"
    const v3, 0x7f03019b

    invoke-direct {p0, v3, p1}, Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder;-><init>(ILandroid/view/ViewGroup;)V

    .line 37
    const v3, 0x7f1001da

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->$(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->text:Landroid/widget/TextView;

    .line 49
    iput-object p2, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->holderListener:Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder$CommentViewHolderListener;

    .line 50
    const v3, 0x7f10040e

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->$(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 51
    .local v0, "imageView":Landroid/widget/ImageView;
    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->photo:Landroid/widget/ImageView;

    .line 52
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "fontSize"

    const-string v5, "0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 54
    .local v1, "k":I
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->text:Landroid/widget/TextView;

    const/4 v4, 0x1

    const/high16 v5, 0x41800000    # 16.0f

    int-to-float v6, v1

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 55
    const v3, 0x7f1002a3

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->$(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->name:Landroid/widget/TextView;

    .line 56
    const v3, 0x7f10029f

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->$(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 57
    .local v2, "textView":Landroid/widget/TextView;
    iput-object v2, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->likes:Landroid/widget/TextView;

    .line 58
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v3, 0x7f1002a4

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->$(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->date:Landroid/widget/TextView;

    .line 60
    const v3, 0x7f10040f

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->$(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->attachContainer:Landroid/view/ViewGroup;

    .line 61
    const v3, 0x7f100410

    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->$(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "imageView":Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 62
    .restart local v0    # "imageView":Landroid/widget/ImageView;
    iput-object v0, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->reply:Landroid/widget/ImageView;

    .line 63
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    return-void
.end method

.method private canShowLongDate()Z
    .locals 2

    .prologue
    .line 88
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;, "Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder<TT;>;"
    sget-boolean v0, Lcom/vkcoffee/android/Global;->isTablet:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/vkcoffee/android/Comment;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;, "Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder<TT;>;"
    .local p1, "comment":Lcom/vkcoffee/android/Comment;, "TT;"
    const/4 v12, 0x1

    .line 95
    .local v12, "z":Z
    invoke-super/range {p0 .. p1}, Lcom/vkcoffee/android/ui/holder/comments/AbsCommentViewHolder;->bind(Lcom/vkcoffee/android/Comment;)V

    .line 96
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->itemView:Landroid/view/View;

    const v15, 0x7f100067

    invoke-virtual {v14, v15}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 97
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->itemView:Landroid/view/View;

    const v16, 0x7f100067

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Runnable;

    invoke-virtual {v15, v14}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 99
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->itemView:Landroid/view/View;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->text:Landroid/widget/TextView;

    invoke-interface/range {p1 .. p1}, Lcom/vkcoffee/android/Comment;->getDisplayableText()Ljava/lang/CharSequence;

    move-result-object v15

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/vkcoffee/android/DecrEncr;->autoDecryptionView(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->name:Landroid/widget/TextView;

    invoke-interface/range {p1 .. p1}, Lcom/vkcoffee/android/Comment;->getUserName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    invoke-interface/range {p1 .. p1}, Lcom/vkcoffee/android/Comment;->getResponseName()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 110
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->date:Landroid/widget/TextView;

    .line 111
    .local v7, "textView":Landroid/widget/TextView;
    const/4 v14, 0x2

    new-array v5, v14, [Ljava/lang/Object;

    .line 112
    .local v5, "objArr":[Ljava/lang/Object;
    invoke-interface/range {p1 .. p1}, Lcom/vkcoffee/android/Comment;->getTime()I

    move-result v10

    .line 113
    .local v10, "time":I
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->canShowLongDate()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 114
    const/4 v13, 0x0

    .line 118
    .local v13, "z2":Z
    :goto_0
    const/4 v14, 0x0

    invoke-static {v10, v13}, Lcom/vkcoffee/android/TimeUtils;->langDate(IZ)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v14

    .line 119
    const/4 v14, 0x1

    invoke-interface/range {p1 .. p1}, Lcom/vkcoffee/android/Comment;->getResponseName()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v14

    .line 120
    const v14, 0x7f0800f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v5}, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .end local v5    # "objArr":[Ljava/lang/Object;
    .end local v7    # "textView":Landroid/widget/TextView;
    .end local v10    # "time":I
    .end local v13    # "z2":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->text:Landroid/widget/TextView;

    .line 130
    .local v9, "textView3":Landroid/widget/TextView;
    invoke-interface/range {p1 .. p1}, Lcom/vkcoffee/android/Comment;->getDisplayableText()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-lez v14, :cond_4

    .line 131
    const/4 v2, 0x0

    .line 135
    .local v2, "i":I
    :goto_2
    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->likes:Landroid/widget/TextView;

    .line 137
    invoke-interface/range {p1 .. p1}, Lcom/vkcoffee/android/Comment;->getNumLikes()I

    move-result v14

    if-lez v14, :cond_5

    .line 138
    new-instance v6, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f020148

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0f00c4

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    invoke-direct {v6, v14, v15}, Lcom/vkcoffee/android/ui/drawable/RecoloredDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    .line 142
    .local v6, "recoloredDrawable":Landroid/graphics/drawable/Drawable;
    :goto_3
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v9, v6, v14, v15, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 143
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->likes:Landroid/widget/TextView;

    invoke-interface/range {p1 .. p1}, Lcom/vkcoffee/android/Comment;->isLiked()Z

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setSelected(Z)V

    .line 144
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->likes:Landroid/widget/TextView;

    invoke-interface/range {p1 .. p1}, Lcom/vkcoffee/android/Comment;->getNumLikes()I

    move-result v14

    if-lez v14, :cond_6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Lcom/vkcoffee/android/Comment;->getNumLikes()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :goto_4
    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->attachContainer:Landroid/view/ViewGroup;

    invoke-virtual {v14}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 146
    invoke-interface/range {p1 .. p1}, Lcom/vkcoffee/android/Comment;->getAttachments()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_a

    .line 147
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->attachContainer:Landroid/view/ViewGroup;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 148
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->attachContainer:Landroid/view/ViewGroup;

    invoke-interface/range {p1 .. p1}, Lcom/vkcoffee/android/Comment;->getAttachments()Ljava/util/ArrayList;

    move-result-object v15

    const/16 v16, 0x0

    const v17, 0x7f10040f

    invoke-static/range {v14 .. v17}, Lcom/vkcoffee/android/NewsItemView;->addAttachments(Landroid/view/View;Ljava/util/ArrayList;Lcom/vkcoffee/android/NewsEntry;I)V

    .line 149
    const/4 v3, 0x0

    .line 150
    .local v3, "idx":I
    invoke-interface/range {p1 .. p1}, Lcom/vkcoffee/android/Comment;->getAttachments()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 151
    .local v4, "it":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_7

    .line 164
    .end local v3    # "idx":I
    .end local v4    # "it":Ljava/util/Iterator;
    :goto_6
    return-void

    .line 116
    .end local v2    # "i":I
    .end local v6    # "recoloredDrawable":Landroid/graphics/drawable/Drawable;
    .end local v9    # "textView3":Landroid/widget/TextView;
    .restart local v5    # "objArr":[Ljava/lang/Object;
    .restart local v7    # "textView":Landroid/widget/TextView;
    .restart local v10    # "time":I
    :cond_1
    const/4 v13, 0x1

    .restart local v13    # "z2":Z
    goto/16 :goto_0

    .line 122
    .end local v5    # "objArr":[Ljava/lang/Object;
    .end local v7    # "textView":Landroid/widget/TextView;
    .end local v10    # "time":I
    .end local v13    # "z2":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->date:Landroid/widget/TextView;

    .line 123
    .local v8, "textView2":Landroid/widget/TextView;
    invoke-interface/range {p1 .. p1}, Lcom/vkcoffee/android/Comment;->getTime()I

    move-result v11

    .line 124
    .local v11, "time2":I
    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->canShowLongDate()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 125
    const/4 v12, 0x0

    .line 127
    :cond_3
    invoke-static {v11, v12}, Lcom/vkcoffee/android/TimeUtils;->langDate(IZ)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 133
    .end local v8    # "textView2":Landroid/widget/TextView;
    .end local v11    # "time2":I
    .restart local v9    # "textView3":Landroid/widget/TextView;
    :cond_4
    const/16 v2, 0x8

    .restart local v2    # "i":I
    goto/16 :goto_2

    .line 140
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f020148

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .restart local v6    # "recoloredDrawable":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_3

    .line 144
    :cond_6
    const-string v14, ""

    goto :goto_4

    .line 152
    .restart local v3    # "idx":I
    .restart local v4    # "it":Ljava/util/Iterator;
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/attachments/Attachment;

    .line 153
    .local v1, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v14, v1, Lcom/vkcoffee/android/attachments/ImageAttachment;

    if-eqz v14, :cond_8

    move-object v14, v1

    .line 154
    check-cast v14, Lcom/vkcoffee/android/attachments/ImageAttachment;

    invoke-interface {v14}, Lcom/vkcoffee/android/attachments/ImageAttachment;->getImageURL()Ljava/lang/String;

    .line 156
    :cond_8
    instance-of v14, v1, Lcom/vkcoffee/android/attachments/StickerAttachment;

    if-eqz v14, :cond_9

    .line 157
    check-cast v1, Lcom/vkcoffee/android/attachments/StickerAttachment;

    .end local v1    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->holderListener:Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder$CommentViewHolderListener;

    invoke-virtual {v1, v14}, Lcom/vkcoffee/android/attachments/StickerAttachment;->setCallback(Lcom/vkcoffee/android/attachments/StickerAttachment$Callback;)V

    .line 159
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 163
    .end local v3    # "idx":I
    .end local v4    # "it":Ljava/util/Iterator;
    :cond_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->attachContainer:Landroid/view/ViewGroup;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_6
.end method

.method public clearImage(I)V
    .locals 5
    .param p1, "index"    # I

    .prologue
    .line 186
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;, "Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder<TT;>;"
    if-nez p1, :cond_1

    .line 187
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->photo:Landroid/widget/ImageView;

    const v4, 0x7f0202c5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 191
    const/4 v2, 0x0

    .line 192
    .local v2, "imgIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->comment:Lcom/vkcoffee/android/Comment;

    invoke-interface {v3}, Lcom/vkcoffee/android/Comment;->getAttachments()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 193
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->comment:Lcom/vkcoffee/android/Comment;

    invoke-interface {v3}, Lcom/vkcoffee/android/Comment;->getAttachments()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 194
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v3, v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    if-eqz v3, :cond_3

    .line 195
    if-ne v2, p1, :cond_2

    .line 196
    check-cast v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->attachContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/vkcoffee/android/attachments/ImageAttachment;->clearImage(Landroid/view/View;)V

    goto :goto_0

    .line 199
    .restart local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 192
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public onClick()V
    .locals 2

    .prologue
    .line 205
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;, "Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder<TT;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->holderListener:Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder$CommentViewHolderListener;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->comment:Lcom/vkcoffee/android/Comment;

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder$CommentViewHolderListener;->showCommentActions(Lcom/vkcoffee/android/Comment;)V

    .line 206
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;, "Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 83
    :goto_0
    return-void

    .line 74
    :sswitch_0
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->holderListener:Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder$CommentViewHolderListener;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->comment:Lcom/vkcoffee/android/Comment;

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder$CommentViewHolderListener;->likeComment(Lcom/vkcoffee/android/Comment;)V

    goto :goto_0

    .line 77
    :sswitch_1
    new-instance v0, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->comment:Lcom/vkcoffee/android/Comment;

    invoke-interface {v1}, Lcom/vkcoffee/android/Comment;->getUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;-><init>(I)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/ProfileFragment$Builder;->go(Landroid/content/Context;)V

    goto :goto_0

    .line 80
    :sswitch_2
    iget-object v0, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->holderListener:Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder$CommentViewHolderListener;

    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->comment:Lcom/vkcoffee/android/Comment;

    invoke-interface {v0, v1}, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder$CommentViewHolderListener;->replyToComment(Lcom/vkcoffee/android/Comment;)V

    goto :goto_0

    .line 72
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10029f -> :sswitch_0
        0x7f10040e -> :sswitch_1
        0x7f100410 -> :sswitch_2
    .end sparse-switch
.end method

.method public setCanReply(Z)Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;
    .locals 2
    .param p1, "canReply"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;, "Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder<TT;>;"
    iget-object v1, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->reply:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 68
    return-object p0

    .line 67
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setImage(ILandroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "index"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 167
    .local p0, "this":Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;, "Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder<TT;>;"
    if-nez p1, :cond_1

    .line 168
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->photo:Landroid/widget/ImageView;

    invoke-virtual {v3, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    add-int/lit8 p1, p1, -0x1

    .line 172
    const/4 v2, 0x0

    .line 173
    .local v2, "imgIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->comment:Lcom/vkcoffee/android/Comment;

    invoke-interface {v3}, Lcom/vkcoffee/android/Comment;->getAttachments()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 174
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->comment:Lcom/vkcoffee/android/Comment;

    invoke-interface {v3}, Lcom/vkcoffee/android/Comment;->getAttachments()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/Attachment;

    .line 175
    .local v0, "att":Lcom/vkcoffee/android/attachments/Attachment;
    instance-of v3, v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    if-eqz v3, :cond_3

    .line 176
    if-ne v2, p1, :cond_2

    .line 177
    check-cast v0, Lcom/vkcoffee/android/attachments/ImageAttachment;

    .end local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    iget-object v3, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->attachContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-boolean v4, p0, Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder;->bindingImages:Z

    invoke-interface {v0, v3, p2, v4}, Lcom/vkcoffee/android/attachments/ImageAttachment;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 180
    .restart local v0    # "att":Lcom/vkcoffee/android/attachments/Attachment;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 173
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
