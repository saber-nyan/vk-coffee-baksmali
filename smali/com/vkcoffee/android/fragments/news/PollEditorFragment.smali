.class public Lcom/vkcoffee/android/fragments/news/PollEditorFragment;
.super Lme/grishka/appkit/fragments/ContainerFragment;
.source "PollEditorFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/vkcoffee/android/fragments/BackListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/news/PollEditorFragment$Builder;,
        Lcom/vkcoffee/android/fragments/news/PollEditorFragment$PollEditorFragment$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/news/PollEditorFragment$PollEditorFragment$$Lambda$2;
    }
.end annotation


# instance fields
.field private editOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/attachments/PollAttachment$Answer;",
            ">;"
        }
    .end annotation
.end field

.field mAddButton:Landroid/view/View;

.field mAnonymousSwitch:Landroid/widget/Switch;

.field mAnonymousWrap:Landroid/view/View;

.field mDoneDrawable:Landroid/graphics/drawable/Drawable;

.field mDoneEnabled:Z

.field mDoneItem:Landroid/view/MenuItem;

.field mOptionsRoot:Landroid/view/ViewGroup;

.field mOwnerId:I

.field mPoll:Lcom/vkcoffee/android/attachments/PollAttachment;

.field mPreviousHeight:I

.field mRootView:Landroid/view/ViewGroup;

.field mSkipFrame:Z

.field mTitle:Landroid/widget/TextView;

.field private origEditOptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/attachments/PollAttachment$Answer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Lme/grishka/appkit/fragments/ContainerFragment;-><init>()V

    .line 47
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mDoneEnabled:Z

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mPreviousHeight:I

    .line 54
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mSkipFrame:Z

    .line 41
    return-void
.end method

.method public static create(I)Lcom/vkcoffee/android/fragments/news/PollEditorFragment$Builder;
    .locals 2
    .param p0, "ownerId"    # I

    .prologue
    .line 75
    new-instance v0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$Builder;-><init>(Lcom/vkcoffee/android/fragments/news/PollEditorFragment$Builder;)V

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$Builder;->setOwnerId(I)Lcom/vkcoffee/android/fragments/news/PollEditorFragment$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static edit(Lcom/vkcoffee/android/attachments/PollAttachment;)Lcom/vkcoffee/android/fragments/news/PollEditorFragment$Builder;
    .locals 2
    .param p0, "poll"    # Lcom/vkcoffee/android/attachments/PollAttachment;

    .prologue
    .line 79
    new-instance v0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$Builder;-><init>(Lcom/vkcoffee/android/fragments/news/PollEditorFragment$Builder;)V

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$Builder;->attachPoll(Lcom/vkcoffee/android/attachments/PollAttachment;)Lcom/vkcoffee/android/fragments/news/PollEditorFragment$Builder;

    move-result-object v0

    return-object v0
.end method

.method private initAnimation()V
    .locals 6

    .prologue
    .line 132
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 133
    .local v0, "lt":Landroid/animation/LayoutTransition;
    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v2

    const-wide/16 v4, 0x3

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 134
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 135
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$PollEditorFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/news/PollEditorFragment;)Landroid/view/ViewTreeObserver$OnPreDrawListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 136
    new-instance v1, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$1;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$1;-><init>(Lcom/vkcoffee/android/fragments/news/PollEditorFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 148
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 149
    return-void
.end method

.method private loadPoll()V
    .locals 4

    .prologue
    .line 119
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->editOptions:Ljava/util/List;

    .line 120
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->editOptions:Ljava/util/List;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mPoll:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget-object v3, v3, Lcom/vkcoffee/android/attachments/PollAttachment;->answers:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 121
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->origEditOptions:Ljava/util/List;

    .line 122
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->origEditOptions:Ljava/util/List;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mPoll:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget-object v3, v3, Lcom/vkcoffee/android/attachments/PollAttachment;->answers:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mPoll:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget-object v0, v2, Lcom/vkcoffee/android/attachments/PollAttachment;->answers:Ljava/util/ArrayList;

    .line 124
    .local v0, "answers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/vkcoffee/android/attachments/PollAttachment$Answer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mPoll:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget-object v3, v3, Lcom/vkcoffee/android/attachments/PollAttachment;->question:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->initAnimation()V

    .line 129
    return-void

    .line 125
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;

    iget-object v2, v2, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->text:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->addOptionRow(Ljava/lang/CharSequence;)V

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method addOptionRow(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const v6, 0x7f10035d

    const v5, 0x7f10035c

    const/4 v4, 0x0

    .line 277
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030132

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 278
    .local v0, "opt":Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 279
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 282
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 283
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "opt":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 284
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->updateAddButton()V

    .line 285
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->updateDoneButton()V

    .line 286
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->updateRemoveButtons()V

    .line 287
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->updateDoneButton()V

    .line 264
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 205
    return-void
.end method

.method enableDone(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mDoneEnabled:Z

    if-eq p1, v0, :cond_1

    .line 340
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mDoneEnabled:Z

    .line 341
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mDoneDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 342
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mDoneDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mDoneEnabled:Z

    if-eqz v0, :cond_2

    const/16 v0, 0xff

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mDoneItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mDoneItem:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mDoneEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 348
    :cond_1
    return-void

    .line 342
    :cond_2
    const/16 v0, 0x7f

    goto :goto_0
.end method

.method lambda$initAnimation$491()Z
    .locals 3

    .prologue
    .line 152
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    .line 153
    .local v0, "h":I
    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mSkipFrame:Z

    if-eqz v1, :cond_0

    .line 154
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mSkipFrame:Z

    .line 155
    iget v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mPreviousHeight:I

    .line 159
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mAnonymousWrap:Landroid/view/View;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v0, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 160
    const/4 v1, 0x1

    return v1

    .line 157
    :cond_0
    iput v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mPreviousHeight:I

    goto :goto_0
.end method

.method lambda$onBackPressed$492(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 260
    return-void
.end method

.method public onBackPressed()Z
    .locals 7

    .prologue
    const v6, 0x7f10035c

    .line 214
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mPoll:Lcom/vkcoffee/android/attachments/PollAttachment;

    if-nez v3, :cond_4

    .line 215
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 216
    const/4 v0, 0x1

    .line 220
    .local v0, "changed":Z
    :goto_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-lt v1, v3, :cond_2

    .line 251
    .end local v1    # "i":I
    :cond_0
    if-nez v0, :cond_8

    .line 252
    const/4 v3, 0x0

    .line 255
    :goto_2
    return v3

    .line 218
    .end local v0    # "changed":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "changed":Z
    goto :goto_0

    .line 221
    .restart local v1    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 222
    const/4 v2, 0x1

    .line 226
    .local v2, "i2":Z
    :goto_3
    or-int/2addr v0, v2

    .line 220
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 224
    .end local v2    # "i2":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i2":Z
    goto :goto_3

    .line 229
    .end local v0    # "changed":Z
    .end local v1    # "i":I
    .end local v2    # "i2":Z
    :cond_4
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mPoll:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget-object v4, v4, Lcom/vkcoffee/android/attachments/PollAttachment;->question:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 230
    const/4 v0, 0x0

    .line 234
    .restart local v0    # "changed":Z
    :goto_4
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mPoll:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget-object v4, v4, Lcom/vkcoffee/android/attachments/PollAttachment;->answers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_6

    .line 235
    const/4 v2, 0x1

    .line 239
    .restart local v2    # "i2":Z
    :goto_5
    or-int/2addr v0, v2

    .line 240
    if-nez v0, :cond_0

    .line 241
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_6
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_0

    .line 242
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mPoll:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget-object v3, v3, Lcom/vkcoffee/android/attachments/PollAttachment;->answers:Ljava/util/ArrayList;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;

    iget-object v3, v3, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->text:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 243
    const/4 v2, 0x0

    .line 247
    :goto_7
    or-int/2addr v0, v2

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 232
    .end local v0    # "changed":Z
    .end local v1    # "i":I
    .end local v2    # "i2":Z
    :cond_5
    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_4

    .line 237
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "i2":Z
    goto :goto_5

    .line 245
    .restart local v1    # "i":I
    :cond_7
    const/4 v2, 0x1

    goto :goto_7

    .line 254
    .end local v1    # "i":I
    .end local v2    # "i2":Z
    :cond_8
    new-instance v3, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0800f4

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0800f8

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f080119

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$PollEditorFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/news/PollEditorFragment;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0800b7

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 255
    const/4 v3, 0x1

    goto/16 :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 182
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 184
    :sswitch_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->addOptionRow(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 187
    :sswitch_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 190
    .local v0, "index":I
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->editOptions:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->editOptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->editOptions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->updateAddButton()V

    .line 194
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->updateDoneButton()V

    .line 195
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->updateRemoveButtons()V

    goto :goto_0

    .line 182
    :sswitch_data_0
    .sparse-switch
        0x7f100358 -> :sswitch_0
        0x7f10035d -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 290
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/ContainerFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 291
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->updateDecorator()V

    .line 292
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/ContainerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->setHasOptionsMenu(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "poll"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/attachments/PollAttachment;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mPoll:Lcom/vkcoffee/android/attachments/PollAttachment;

    .line 86
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "oid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOwnerId:I

    .line 87
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v4, 0x0

    .line 164
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/ContainerFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 165
    const v2, 0x7f100019

    const v3, 0x7f08013b

    invoke-interface {p1, v4, v2, v4, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mDoneItem:Landroid/view/MenuItem;

    .line 166
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mDoneItem:Landroid/view/MenuItem;

    .line 167
    .local v1, "menuItem":Landroid/view/MenuItem;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020140

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 168
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mDoneDrawable:Landroid/graphics/drawable/Drawable;

    .line 169
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 170
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mDoneItem:Landroid/view/MenuItem;

    iget-boolean v3, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mDoneEnabled:Z

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 171
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mDoneDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mDoneEnabled:Z

    if-eqz v2, :cond_0

    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 172
    return-void

    .line 171
    :cond_0
    const/16 v2, 0x7f

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 91
    const v0, 0x7f030131

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method onDone()V
    .locals 12

    .prologue
    const v2, 0x7f10035c

    .line 352
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mPoll:Lcom/vkcoffee/android/attachments/PollAttachment;

    if-nez v0, :cond_1

    .line 353
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v9, "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v8, v0, :cond_0

    .line 357
    new-instance v0, Lcom/vkcoffee/android/api/polls/PollsCreate;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOwnerId:I

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mAnonymousSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/vkcoffee/android/api/polls/PollsCreate;-><init>(Ljava/lang/String;Ljava/util/List;IZ)V

    new-instance v1, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$2;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$2;-><init>(Lcom/vkcoffee/android/fragments/news/PollEditorFragment;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/polls/PollsCreate;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 364
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 398
    .end local v9    # "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 355
    .restart local v9    # "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 368
    .end local v8    # "i":I
    .end local v9    # "options":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .local v5, "remove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .local v4, "add":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 371
    .local v6, "edit":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v8, 0x1

    .restart local v8    # "i":I
    :goto_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v8, v0, :cond_2

    .line 382
    const/4 v8, 0x0

    :goto_3
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->origEditOptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v8, v0, :cond_5

    .line 388
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    .line 389
    .local v10, "question":Ljava/lang/String;
    new-instance v0, Lcom/vkcoffee/android/api/polls/PollsEdit;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mPoll:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget v1, v1, Lcom/vkcoffee/android/attachments/PollAttachment;->oid:I

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mPoll:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget v2, v2, Lcom/vkcoffee/android/attachments/PollAttachment;->pid:I

    iget-object v3, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mPoll:Lcom/vkcoffee/android/attachments/PollAttachment;

    iget-object v3, v3, Lcom/vkcoffee/android/attachments/PollAttachment;->question:Ljava/lang/String;

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    :goto_4
    invoke-direct/range {v0 .. v6}, Lcom/vkcoffee/android/api/polls/PollsEdit;-><init>(IILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/Map;)V

    new-instance v1, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$3;

    invoke-direct {v1, p0, p0, v10}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment$3;-><init>(Lcom/vkcoffee/android/fragments/news/PollEditorFragment;Landroid/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/polls/PollsEdit;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 397
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    goto :goto_1

    .line 372
    .end local v10    # "question":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 373
    .local v11, "text":Ljava/lang/String;
    add-int/lit8 v0, v8, -0x1

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->editOptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 374
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->editOptions:Ljava/util/List;

    add-int/lit8 v1, v8, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;

    .line 375
    .local v7, "answer":Lcom/vkcoffee/android/attachments/PollAttachment$Answer;
    iget-object v0, v7, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->text:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 376
    iget v0, v7, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->id:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .end local v7    # "answer":Lcom/vkcoffee/android/attachments/PollAttachment$Answer;
    :cond_3
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 379
    :cond_4
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 383
    .end local v11    # "text":Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->origEditOptions:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;

    .line 384
    .restart local v7    # "answer":Lcom/vkcoffee/android/attachments/PollAttachment$Answer;
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->editOptions:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 385
    iget v0, v7, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .end local v7    # "answer":Lcom/vkcoffee/android/attachments/PollAttachment$Answer;
    .restart local v10    # "question":Ljava/lang/String;
    :cond_7
    move-object v3, v10

    .line 389
    goto :goto_4
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 175
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f100019

    if-ne v0, v1, :cond_0

    .line 176
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->onDone()V

    .line 178
    :cond_0
    invoke-super {p0, p1}, Lme/grishka/appkit/fragments/ContainerFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 208
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 95
    invoke-super {p0, p1, p2}, Lme/grishka/appkit/fragments/ContainerFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 96
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mPoll:Lcom/vkcoffee/android/attachments/PollAttachment;

    if-eqz v0, :cond_0

    const v0, 0x7f08039e

    :goto_0
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->setTitle(I)V

    .line 97
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const v1, 0x7f020318

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vkcoffee/android/GlobalMethodsCoffee;->buildCounterDrawable(ILandroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    .line 98
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->getToolbar()Landroid/support/v7/widget/Toolbar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/Toolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v0, 0x7f100358

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mAddButton:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mAddButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v0, 0x7f100357

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    .line 102
    const v0, 0x7f100355

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mRootView:Landroid/view/ViewGroup;

    .line 103
    const v0, 0x7f100356

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mTitle:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 105
    const v0, 0x7f100359

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mAnonymousWrap:Landroid/view/View;

    .line 106
    const v0, 0x7f10035b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mAnonymousSwitch:Landroid/widget/Switch;

    .line 107
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->updateDecorator()V

    .line 108
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mPoll:Lcom/vkcoffee/android/attachments/PollAttachment;

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mAnonymousWrap:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->loadPoll()V

    .line 115
    :goto_1
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->initAnimation()V

    .line 116
    return-void

    .line 96
    :cond_0
    const v0, 0x7f08039d

    goto/16 :goto_0

    .line 112
    :cond_1
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->addOptionRow(Ljava/lang/CharSequence;)V

    .line 113
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->addOptionRow(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method updateAddButton()V
    .locals 3

    .prologue
    .line 273
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mAddButton:Landroid/view/View;

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/16 v2, 0xc

    if-ge v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 274
    return-void

    .line 273
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method updateDecorator()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 296
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 307
    iget v5, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->scrW:I

    const/16 v6, 0x39c

    if-lt v5, v6, :cond_2

    .line 308
    const/high16 v5, 0x42000000    # 32.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v2

    .line 312
    .local v2, "pad":I
    :goto_1
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v2, v8, v2, v8}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 313
    return-void

    .line 298
    .end local v2    # "pad":I
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 299
    .local v3, "resources":Landroid/content/res/Resources;
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    int-to-float v0, v5

    .line 300
    .local v0, "dp":F
    iget-boolean v5, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->isTablet:Z

    if-eqz v5, :cond_1

    .line 301
    const/4 v4, 0x0

    .line 305
    .local v4, "z":Z
    :goto_2
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/vkcoffee/android/ui/cardview/CardDrawable;

    const/4 v7, -0x1

    invoke-direct {v6, v3, v7, v0, v4}, Lcom/vkcoffee/android/ui/cardview/CardDrawable;-><init>(Landroid/content/res/Resources;IFZ)V

    invoke-static {v5, v6}, Lcom/vkcoffee/android/ViewUtils;->setBackgroundWithViewPadding(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 296
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 303
    .end local v4    # "z":Z
    :cond_1
    const/4 v4, 0x1

    .restart local v4    # "z":Z
    goto :goto_2

    .line 310
    .end local v0    # "dp":F
    .end local v3    # "resources":Landroid/content/res/Resources;
    .end local v4    # "z":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "pad":I
    goto :goto_1
.end method

.method updateDoneButton()V
    .locals 6

    .prologue
    .line 317
    const/4 v3, 0x1

    .line 318
    .local v3, "z":Z
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 319
    const/4 v0, 0x1

    .line 323
    .local v0, "disable":Z
    :goto_0
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_2

    .line 332
    if-eqz v0, :cond_0

    .line 333
    const/4 v3, 0x0

    .line 335
    :cond_0
    invoke-virtual {p0, v3}, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->enableDone(Z)V

    .line 336
    return-void

    .line 321
    .end local v0    # "disable":Z
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "disable":Z
    goto :goto_0

    .line 325
    .restart local v1    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f10035c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 326
    const/4 v2, 0x1

    .line 330
    .local v2, "i2":Z
    :goto_2
    or-int/2addr v0, v2

    .line 323
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 328
    .end local v2    # "i2":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "i2":Z
    goto :goto_2
.end method

.method updateRemoveButtons()V
    .locals 4

    .prologue
    .line 267
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 270
    return-void

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10035d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/news/PollEditorFragment;->mOptionsRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v3, 0x4

    if-lt v1, v3, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method
