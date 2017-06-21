.class public Lcom/vkcoffee/android/PollAttachView;
.super Landroid/widget/LinearLayout;
.source "PollAttachView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/PollAttachView$OnDataLoadedListener;
    }
.end annotation


# instance fields
.field private infoView:Landroid/widget/TextView;

.field public isBoard:Z

.field public isPublic:Z

.field private listener:Lcom/vkcoffee/android/PollAttachView$OnDataLoadedListener;

.field private oid:I

.field private optionViews:Ljava/util/ArrayList;

.field private options:[Lcom/vkcoffee/android/api/PollOption;

.field private pid:I

.field private question:Ljava/lang/String;

.field private userOption:I


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 6
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # I
    .param p3, "var3"    # I

    .prologue
    const/high16 v3, 0x41f00000    # 30.0f

    const/high16 v5, 0x41200000    # 10.0f

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/vkcoffee/android/PollAttachView;->optionViews:Ljava/util/ArrayList;

    .line 46
    iput p2, p0, Lcom/vkcoffee/android/PollAttachView;->oid:I

    .line 47
    iput p3, p0, Lcom/vkcoffee/android/PollAttachView;->pid:I

    .line 48
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/PollAttachView;->setOrientation(I)V

    .line 49
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/vkcoffee/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 50
    .local v1, "var5":Landroid/widget/ProgressBar;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    invoke-static {v3}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51
    .local v0, "var4":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 52
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 54
    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v2}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/vkcoffee/android/PollAttachView;->setPadding(IIII)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/PollAttachView;->optionViews:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/PollAttachView;)[Lcom/vkcoffee/android/api/PollOption;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/PollAttachView;->options:[Lcom/vkcoffee/android/api/PollOption;

    return-object v0
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/PollAttachView;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/vkcoffee/android/PollAttachView;->userOption:I

    return v0
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/PollAttachView;I)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/vkcoffee/android/PollAttachView;->userOption:I

    return-void
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/PollAttachView;)V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/vkcoffee/android/PollAttachView;->updateText()V

    return-void
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/PollAttachView;)V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/vkcoffee/android/PollAttachView;->animateProgress()V

    return-void
.end method

.method static synthetic access$5(Lcom/vkcoffee/android/PollAttachView;Lcom/vkcoffee/android/api/PollOption;)V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/PollAttachView;->vote(Lcom/vkcoffee/android/api/PollOption;)V

    return-void
.end method

.method static synthetic access$6(Lcom/vkcoffee/android/PollAttachView;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/vkcoffee/android/PollAttachView;->oid:I

    return v0
.end method

.method static synthetic access$7(Lcom/vkcoffee/android/PollAttachView;)I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/vkcoffee/android/PollAttachView;->pid:I

    return v0
.end method

.method static synthetic access$8(Lcom/vkcoffee/android/PollAttachView;)V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/vkcoffee/android/PollAttachView;->unvote()V

    return-void
.end method

.method private animateProgress()V
    .locals 15

    .prologue
    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "var1":F
    iget-object v3, p0, Lcom/vkcoffee/android/PollAttachView;->options:[Lcom/vkcoffee/android/api/PollOption;

    .line 64
    .local v3, "var4":[Lcom/vkcoffee/android/api/PollOption;
    array-length v2, v3

    .line 67
    .local v2, "var3":I
    const/4 v1, 0x0

    .local v1, "var2":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 72
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xb

    if-lt v9, v10, :cond_4

    .line 73
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v6, "var7":Ljava/util/ArrayList;
    const/4 v1, 0x0

    :goto_1
    iget-object v9, p0, Lcom/vkcoffee/android/PollAttachView;->options:[Lcom/vkcoffee/android/api/PollOption;

    array-length v9, v9

    if-lt v1, v9, :cond_2

    .line 86
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 87
    .local v8, "var9":Landroid/animation/AnimatorSet;
    invoke-virtual {v8, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 88
    const-wide/16 v10, 0x190

    invoke-virtual {v8, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 89
    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->start()V

    .line 103
    .end local v6    # "var7":Ljava/util/ArrayList;
    .end local v8    # "var9":Landroid/animation/AnimatorSet;
    :cond_0
    return-void

    .line 68
    :cond_1
    aget-object v9, v3, v1

    iget v9, v9, Lcom/vkcoffee/android/api/PollOption;->percent:F

    invoke-static {v0, v9}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    .restart local v6    # "var7":Ljava/util/ArrayList;
    :cond_2
    iget-object v9, p0, Lcom/vkcoffee/android/PollAttachView;->options:[Lcom/vkcoffee/android/api/PollOption;

    aget-object v5, v9, v1

    .line 77
    .local v5, "var6":Lcom/vkcoffee/android/api/PollOption;
    iget-object v9, p0, Lcom/vkcoffee/android/PollAttachView;->optionViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 78
    .local v4, "var5":Landroid/view/View;
    const v9, 0x7f100052

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    const/high16 v10, 0x41200000    # 10.0f

    mul-float/2addr v10, v0

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 79
    iget v9, p0, Lcom/vkcoffee/android/PollAttachView;->userOption:I

    if-eqz v9, :cond_3

    .line 80
    const v9, 0x7f100052

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const-string v10, "progress"

    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    iget v13, v5, Lcom/vkcoffee/android/api/PollOption;->percent:F

    const/high16 v14, 0x41200000    # 10.0f

    mul-float/2addr v13, v14

    float-to-int v13, v13

    aput v13, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 82
    :cond_3
    const v9, 0x7f100052

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const-string v10, "progress"

    const/4 v11, 0x1

    new-array v11, v11, [I

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 91
    .end local v4    # "var5":Landroid/view/View;
    .end local v5    # "var6":Lcom/vkcoffee/android/api/PollOption;
    .end local v6    # "var7":Ljava/util/ArrayList;
    :cond_4
    const/4 v1, 0x0

    :goto_3
    iget-object v9, p0, Lcom/vkcoffee/android/PollAttachView;->options:[Lcom/vkcoffee/android/api/PollOption;

    array-length v9, v9

    if-ge v1, v9, :cond_0

    .line 92
    iget-object v9, p0, Lcom/vkcoffee/android/PollAttachView;->options:[Lcom/vkcoffee/android/api/PollOption;

    aget-object v7, v9, v1

    .line 93
    .local v7, "var8":Lcom/vkcoffee/android/api/PollOption;
    iget-object v9, p0, Lcom/vkcoffee/android/PollAttachView;->optionViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 94
    .restart local v4    # "var5":Landroid/view/View;
    const v9, 0x7f100052

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    const/high16 v10, 0x41200000    # 10.0f

    mul-float/2addr v10, v0

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 95
    iget v9, p0, Lcom/vkcoffee/android/PollAttachView;->userOption:I

    if-eqz v9, :cond_5

    .line 96
    const v9, 0x7f100052

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    iget v10, v7, Lcom/vkcoffee/android/api/PollOption;->percent:F

    const/high16 v11, 0x41200000    # 10.0f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 91
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 98
    :cond_5
    const v9, 0x7f100052

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ProgressBar;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_4
.end method

.method private onFailed(Ljava/lang/String;)V
    .locals 5
    .param p1, "var1"    # Ljava/lang/String;

    .prologue
    const/high16 v4, 0x40a00000    # 5.0f

    .line 106
    invoke-virtual {p0}, Lcom/vkcoffee/android/PollAttachView;->removeAllViews()V

    .line 107
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 108
    .local v0, "var2":Landroid/widget/TextView;
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v1

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 110
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 111
    invoke-virtual {p0}, Lcom/vkcoffee/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080167

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const/16 v1, -0x2223

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/PollAttachView;->setBackgroundColor(I)V

    .line 113
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 114
    return-void
.end method

.method private unvote()V
    .locals 5

    .prologue
    .line 117
    new-instance v0, Lcom/vkcoffee/android/api/polls/PollsDeleteVote;

    iget v1, p0, Lcom/vkcoffee/android/PollAttachView;->oid:I

    iget v2, p0, Lcom/vkcoffee/android/PollAttachView;->pid:I

    iget v3, p0, Lcom/vkcoffee/android/PollAttachView;->userOption:I

    iget-boolean v4, p0, Lcom/vkcoffee/android/PollAttachView;->isBoard:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/api/polls/PollsDeleteVote;-><init>(IIIZ)V

    new-instance v1, Lcom/vkcoffee/android/PollAttachView$1;

    invoke-virtual {p0}, Lcom/vkcoffee/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/vkcoffee/android/PollAttachView$1;-><init>(Lcom/vkcoffee/android/PollAttachView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/polls/PollsDeleteVote;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 141
    invoke-virtual {p0}, Lcom/vkcoffee/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 142
    return-void
.end method

.method private updateText()V
    .locals 14

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 149
    .local v0, "var1":I
    const/4 v1, 0x0

    .local v1, "var2":I
    :goto_0
    iget-object v8, p0, Lcom/vkcoffee/android/PollAttachView;->options:[Lcom/vkcoffee/android/api/PollOption;

    array-length v8, v8

    if-lt v1, v8, :cond_0

    .line 174
    iget-object v7, p0, Lcom/vkcoffee/android/PollAttachView;->infoView:Landroid/widget/TextView;

    .line 175
    .local v7, "var8":Landroid/widget/TextView;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .local v6, "var7":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/vkcoffee/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 177
    .local v4, "var5":Landroid/content/res/Resources;
    iget-boolean v8, p0, Lcom/vkcoffee/android/PollAttachView;->isPublic:Z

    if-eqz v8, :cond_3

    .line 178
    const v1, 0x7f08039f

    .line 183
    :goto_1
    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/vkcoffee/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e0030

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v0, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    return-void

    .line 150
    .end local v4    # "var5":Landroid/content/res/Resources;
    .end local v6    # "var7":Ljava/lang/StringBuilder;
    .end local v7    # "var8":Landroid/widget/TextView;
    :cond_0
    iget-object v8, p0, Lcom/vkcoffee/android/PollAttachView;->options:[Lcom/vkcoffee/android/api/PollOption;

    aget-object v2, v8, v1

    .line 151
    .local v2, "var3":Lcom/vkcoffee/android/api/PollOption;
    iget v8, v2, Lcom/vkcoffee/android/api/PollOption;->numVotes:I

    add-int/2addr v0, v8

    .line 152
    iget-object v8, p0, Lcom/vkcoffee/android/PollAttachView;->optionViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 153
    .local v3, "var4":Landroid/view/View;
    iget v8, p0, Lcom/vkcoffee/android/PollAttachView;->userOption:I

    if-eqz v8, :cond_1

    .line 154
    const v8, 0x7f100051

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 155
    const v8, 0x7f100051

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v2, Lcom/vkcoffee/android/api/PollOption;->numVotes:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%.1f%%"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, v2, Lcom/vkcoffee/android/api/PollOption;->percent:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const v8, 0x7f100050

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    iget v10, v2, Lcom/vkcoffee/android/api/PollOption;->numVotes:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    :goto_2
    const v8, 0x7f100053

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 165
    .restart local v7    # "var8":Landroid/widget/TextView;
    iget v8, p0, Lcom/vkcoffee/android/PollAttachView;->userOption:I

    iget v9, v2, Lcom/vkcoffee/android/api/PollOption;->id:I

    if-ne v8, v9, :cond_2

    .line 166
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 171
    .local v5, "var6":Landroid/graphics/Typeface;
    :goto_3
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 158
    .end local v5    # "var6":Landroid/graphics/Typeface;
    .end local v7    # "var8":Landroid/widget/TextView;
    :cond_1
    const v8, 0x7f100051

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 159
    const v8, 0x7f100051

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "("

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v10, v2, Lcom/vkcoffee/android/api/PollOption;->numVotes:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%.1f%%"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, v2, Lcom/vkcoffee/android/api/PollOption;->percent:F

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    const v8, 0x7f100050

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const v9, 0x7f08039c

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 168
    .restart local v7    # "var8":Landroid/widget/TextView;
    :cond_2
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .restart local v5    # "var6":Landroid/graphics/Typeface;
    goto :goto_3

    .line 180
    .end local v2    # "var3":Lcom/vkcoffee/android/api/PollOption;
    .end local v3    # "var4":Landroid/view/View;
    .end local v5    # "var6":Landroid/graphics/Typeface;
    .restart local v4    # "var5":Landroid/content/res/Resources;
    .restart local v6    # "var7":Ljava/lang/StringBuilder;
    :cond_3
    const v1, 0x7f08039b

    goto/16 :goto_1
.end method

.method private vote(Lcom/vkcoffee/android/api/PollOption;)V
    .locals 5
    .param p1, "var1"    # Lcom/vkcoffee/android/api/PollOption;

    .prologue
    .line 187
    new-instance v0, Lcom/vkcoffee/android/api/polls/PollsAddVote;

    iget v1, p0, Lcom/vkcoffee/android/PollAttachView;->oid:I

    iget v2, p0, Lcom/vkcoffee/android/PollAttachView;->pid:I

    iget v3, p1, Lcom/vkcoffee/android/api/PollOption;->id:I

    iget-boolean v4, p0, Lcom/vkcoffee/android/PollAttachView;->isBoard:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/api/polls/PollsAddVote;-><init>(IIIZ)V

    new-instance v1, Lcom/vkcoffee/android/PollAttachView$2;

    invoke-virtual {p0}, Lcom/vkcoffee/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/vkcoffee/android/PollAttachView$2;-><init>(Lcom/vkcoffee/android/PollAttachView;Landroid/content/Context;Lcom/vkcoffee/android/api/PollOption;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/polls/PollsAddVote;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 211
    invoke-virtual {p0}, Lcom/vkcoffee/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 212
    return-void
.end method


# virtual methods
.method public onLoaded(Ljava/lang/String;I[Lcom/vkcoffee/android/api/PollOption;Z)V
    .locals 28
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # I
    .param p3, "var3"    # [Lcom/vkcoffee/android/api/PollOption;
    .param p4, "var4"    # Z

    .prologue
    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PollAttachView;->listener:Lcom/vkcoffee/android/PollAttachView$OnDataLoadedListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_0

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PollAttachView;->listener:Lcom/vkcoffee/android/PollAttachView$OnDataLoadedListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/PollAttachView$OnDataLoadedListener;->onDataLoaded(Ljava/lang/String;I[Lcom/vkcoffee/android/api/PollOption;Z)V

    .line 219
    :cond_0
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/PollAttachView;->options:[Lcom/vkcoffee/android/api/PollOption;

    .line 220
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/PollAttachView;->question:Ljava/lang/String;

    .line 221
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/vkcoffee/android/PollAttachView;->userOption:I

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/PollAttachView;->removeAllViews()V

    .line 223
    new-instance v21, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 224
    .local v21, "var9":Landroid/widget/TextView;
    const/high16 v22, -0x1000000

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setTextColor(I)V

    .line 225
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const/high16 v22, 0x41880000    # 17.0f

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setTextSize(F)V

    .line 227
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 228
    const/16 v17, 0x0

    .line 229
    .local v17, "var5":I
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    .line 232
    .local v19, "var7":I
    const/16 v18, 0x0

    .local v18, "var6":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, v19

    if-lt v0, v1, :cond_1

    .line 236
    new-instance v22, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/vkcoffee/android/PollAttachView;->infoView:Landroid/widget/TextView;

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PollAttachView;->infoView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0f00ba

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 238
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/vkcoffee/android/PollAttachView;->infoView:Landroid/widget/TextView;

    .line 239
    .local v5, "var10":Landroid/widget/TextView;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .local v7, "var12":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 241
    .local v13, "var18":Landroid/content/res/Resources;
    if-eqz p4, :cond_2

    .line 242
    const v18, 0x7f08039f

    .line 247
    :goto_1
    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0e0030

    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    aput-object v27, v25, v26

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v17

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PollAttachView;->infoView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    const/high16 v23, 0x41700000    # 15.0f

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setTextSize(F)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PollAttachView;->infoView:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 250
    const/16 v19, 0x0

    .line 251
    const/16 v17, 0x0

    .line 252
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    .line 254
    .local v20, "var8":I
    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_3

    .line 259
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    .line 260
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v20, v0

    .line 262
    const/16 v18, 0x0

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_4

    .line 368
    return-void

    .line 233
    .end local v5    # "var10":Landroid/widget/TextView;
    .end local v7    # "var12":Ljava/lang/StringBuilder;
    .end local v13    # "var18":Landroid/content/res/Resources;
    .end local v20    # "var8":I
    :cond_1
    aget-object v22, p3, v18

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkcoffee/android/api/PollOption;->numVotes:I

    move/from16 v22, v0

    add-int v17, v17, v22

    .line 232
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 244
    .restart local v5    # "var10":Landroid/widget/TextView;
    .restart local v7    # "var12":Ljava/lang/StringBuilder;
    .restart local v13    # "var18":Landroid/content/res/Resources;
    :cond_2
    const v18, 0x7f08039b

    goto/16 :goto_1

    .line 255
    .restart local v20    # "var8":I
    :cond_3
    aget-object v22, p3, v18

    move-object/from16 v0, v22

    iget v0, v0, Lcom/vkcoffee/android/api/PollOption;->percent:F

    move/from16 v22, v0

    const/high16 v23, 0x41200000    # 10.0f

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v17

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 256
    move/from16 v19, v17

    .line 254
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 263
    :cond_4
    aget-object v15, p3, v18

    .line 264
    .local v15, "var20":Lcom/vkcoffee/android/api/PollOption;
    new-instance v14, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v14, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 265
    .local v14, "var19":Landroid/widget/RelativeLayout;
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    invoke-direct/range {v22 .. v24}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    new-instance v6, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 267
    .local v6, "var11":Landroid/widget/TextView;
    const/high16 v22, -0x1000000

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 268
    iget-object v0, v15, Lcom/vkcoffee/android/api/PollOption;->title:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    const v22, 0x7f100053

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setId(I)V

    .line 270
    const/16 v22, 0x0

    const/high16 v23, 0x40a00000    # 5.0f

    invoke-static/range {v23 .. v23}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 272
    iget v0, v15, Lcom/vkcoffee/android/api/PollOption;->id:I

    move/from16 v22, v0

    move/from16 v0, p2

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    .line 273
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 278
    .local v8, "var13":Landroid/graphics/Typeface;
    :goto_4
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 279
    invoke-virtual {v14, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 280
    new-instance v9, Landroid/widget/ProgressBar;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v22

    const/16 v23, 0x0

    const v24, 0x1010078

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v9, v0, v1, v2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 281
    .local v9, "var14":Landroid/widget/ProgressBar;
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0202c8

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 283
    if-eqz p2, :cond_6

    .line 284
    iget v0, v15, Lcom/vkcoffee/android/api/PollOption;->percent:F

    move/from16 v22, v0

    const/high16 v23, 0x41200000    # 10.0f

    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v19, v0

    .line 289
    :goto_5
    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 290
    const v22, 0x7f100052

    move/from16 v0, v22

    invoke-virtual {v9, v0}, Landroid/widget/ProgressBar;->setId(I)V

    .line 291
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x1

    const/high16 v23, 0x41a00000    # 20.0f

    invoke-static/range {v23 .. v23}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v23

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 292
    .local v16, "var21":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0x3

    const v23, 0x7f100053

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 293
    const/high16 v22, 0x42480000    # 50.0f

    invoke-static/range {v22 .. v22}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 294
    const/high16 v22, 0x40a00000    # 5.0f

    invoke-static/range {v22 .. v22}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, v16

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 295
    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    invoke-virtual {v14, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 297
    new-instance v10, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v10, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 298
    .local v10, "var15":Landroid/widget/TextView;
    const/high16 v22, -0x1000000

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 299
    const/high16 v22, 0x41700000    # 15.0f

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 300
    const v22, 0x7f100051

    move/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setId(I)V

    .line 301
    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "("

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v15, Lcom/vkcoffee/android/api/PollOption;->numVotes:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ") "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "%.1f%%"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget v0, v15, Lcom/vkcoffee/android/api/PollOption;->percent:F

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v26

    aput-object v26, v24, v25

    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    if-eqz p2, :cond_7

    .line 304
    const/4 v12, 0x0

    .line 309
    .local v12, "var17":B
    :goto_6
    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 310
    new-instance v16, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v16    # "var21":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, -0x2

    const/16 v23, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 311
    .restart local v16    # "var21":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0x6

    const v23, 0x7f100052

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 312
    const/16 v22, 0x8

    const v23, 0x7f100052

    move-object/from16 v0, v16

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 313
    const/16 v22, 0xb

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 314
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    invoke-virtual {v14, v10}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 316
    new-instance v6, Landroid/widget/TextView;

    .end local v6    # "var11":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/PollAttachView;->getContext()Landroid/content/Context;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-direct {v6, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 317
    .restart local v6    # "var11":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/PollAttachView;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x7f0f00ba

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 318
    const/high16 v22, 0x41700000    # 15.0f

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 319
    const v22, 0x7f100050

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setId(I)V

    .line 320
    const/16 v22, 0x11

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 321
    if-nez p2, :cond_8

    .line 322
    const v22, 0x7f08039c

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(I)V

    .line 327
    :goto_7
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v22, -0x2

    const/16 v23, -0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 328
    .local v11, "var16":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v22, 0x6

    const v23, 0x7f100052

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 329
    const/16 v22, 0x8

    const v23, 0x7f100052

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 330
    const/16 v22, 0x5

    const v23, 0x7f100052

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 331
    const/16 v22, 0x7

    const v23, 0x7f100052

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 332
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    invoke-virtual {v14, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 334
    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 335
    new-instance v22, Lcom/vkcoffee/android/PollAttachView$3;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/PollAttachView$3;-><init>(Lcom/vkcoffee/android/PollAttachView;)V

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    new-instance v22, Lcom/vkcoffee/android/PollAttachView$4;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/PollAttachView$4;-><init>(Lcom/vkcoffee/android/PollAttachView;)V

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/widget/RelativeLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/vkcoffee/android/PollAttachView;->optionViews:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/vkcoffee/android/PollAttachView;->addView(Landroid/view/View;)V

    .line 262
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 275
    .end local v8    # "var13":Landroid/graphics/Typeface;
    .end local v9    # "var14":Landroid/widget/ProgressBar;
    .end local v10    # "var15":Landroid/widget/TextView;
    .end local v11    # "var16":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v12    # "var17":B
    .end local v16    # "var21":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    sget-object v8, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .restart local v8    # "var13":Landroid/graphics/Typeface;
    goto/16 :goto_4

    .line 286
    .restart local v9    # "var14":Landroid/widget/ProgressBar;
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_5

    .line 306
    .restart local v10    # "var15":Landroid/widget/TextView;
    .restart local v16    # "var21":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_7
    const/4 v12, 0x4

    .restart local v12    # "var17":B
    goto/16 :goto_6

    .line 324
    :cond_8
    new-instance v22, Ljava/lang/StringBuilder;

    iget v0, v15, Lcom/vkcoffee/android/api/PollOption;->numVotes:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7
.end method

.method public onMeasure(II)V
    .locals 2
    .param p1, "var1"    # I
    .param p2, "var2"    # I

    .prologue
    .line 371
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 372
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/PollAttachView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/vkcoffee/android/PollAttachView;->setMeasuredDimension(II)V

    .line 373
    return-void
.end method

.method public setOnDataLoadedListener(Lcom/vkcoffee/android/PollAttachView$OnDataLoadedListener;)V
    .locals 0
    .param p1, "var1"    # Lcom/vkcoffee/android/PollAttachView$OnDataLoadedListener;

    .prologue
    .line 376
    iput-object p1, p0, Lcom/vkcoffee/android/PollAttachView;->listener:Lcom/vkcoffee/android/PollAttachView$OnDataLoadedListener;

    .line 377
    return-void
.end method
