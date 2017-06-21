.class public Lcom/vkcoffee/android/attachments/PollAttachment;
.super Lcom/vkcoffee/android/attachments/Attachment;
.source "PollAttachment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/attachments/PollAttachment$Answer;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;


# instance fields
.field public answers:Ljava/util/ArrayList;

.field public isAnonymous:Z

.field public isBoard:Z

.field public lastUpdated:I

.field public numVotes:I

.field public oid:I

.field public transient parentPost:Lcom/vkcoffee/android/NewsEntry;

.field public pid:I

.field public question:Ljava/lang/String;

.field public userAnswer:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/vkcoffee/android/attachments/PollAttachment$1;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/PollAttachment$1;-><init>()V

    sput-object v0, Lcom/vkcoffee/android/attachments/PollAttachment;->CREATOR:Lcom/vkcoffee/android/utils/Serializer$Creator;

    .line 47
    return-void
.end method

.method protected constructor <init>(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 6
    .param p1, "var1"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 62
    const/4 v3, 0x1

    .line 64
    .local v3, "var5":Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->answers:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->question:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v4

    iput v4, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->oid:I

    .line 67
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v4

    iput v4, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->pid:I

    .line 68
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v1

    .line 70
    .local v1, "var3":I
    const/4 v0, 0x0

    .local v0, "var2":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v4

    iput v4, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->numVotes:I

    .line 75
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v4

    iput v4, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->userAnswer:I

    .line 77
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readByte()B

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    const/4 v2, 0x1

    .line 83
    .local v2, "var4":Z
    :goto_1
    iput-boolean v2, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->isAnonymous:Z

    .line 84
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readInt()I

    move-result v4

    iput v4, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->lastUpdated:I

    .line 85
    invoke-virtual {p1}, Lcom/vkcoffee/android/utils/Serializer;->readByte()B

    move-result v4

    if-eqz v4, :cond_2

    .line 86
    move v2, v3

    .line 91
    .end local v2    # "var4":Z
    :goto_2
    iput-boolean v2, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->isBoard:Z

    .line 92
    return-void

    .line 71
    :cond_0
    iget-object v4, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->answers:Ljava/util/ArrayList;

    const-class v5, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/vkcoffee/android/utils/Serializer;->readSerializable(Ljava/lang/ClassLoader;)Lcom/vkcoffee/android/utils/Serializer$Serializable;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "var4":Z
    goto :goto_1

    .line 88
    :cond_2
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/util/ArrayList;IIZI)V
    .locals 10
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # Ljava/util/ArrayList;
    .param p5, "var5"    # I
    .param p6, "var6"    # I
    .param p7, "var7"    # Z
    .param p8, "var8"    # I

    .prologue
    .line 95
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/vkcoffee/android/attachments/PollAttachment;-><init>(Ljava/lang/String;IILjava/util/ArrayList;IIZIZ)V

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/util/ArrayList;IIZIZ)V
    .locals 1
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # I
    .param p3, "var3"    # I
    .param p4, "var4"    # Ljava/util/ArrayList;
    .param p5, "var5"    # I
    .param p6, "var6"    # I
    .param p7, "var7"    # Z
    .param p8, "var8"    # I
    .param p9, "var9"    # Z

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/Attachment;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->answers:Ljava/util/ArrayList;

    .line 100
    iput-object p1, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->question:Ljava/lang/String;

    .line 101
    iput p2, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->oid:I

    .line 102
    iput p3, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->pid:I

    .line 103
    iput-object p4, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->answers:Ljava/util/ArrayList;

    .line 104
    iput p5, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->numVotes:I

    .line 105
    iput p6, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->userAnswer:I

    .line 106
    iput-boolean p7, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->isAnonymous:Z

    .line 107
    iput p8, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->lastUpdated:I

    .line 108
    iput-boolean p9, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->isBoard:Z

    .line 109
    return-void
.end method

.method static synthetic access$0(Lcom/vkcoffee/android/attachments/PollAttachment;Lcom/vkcoffee/android/attachments/PollAttachment$Answer;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 294
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/attachments/PollAttachment;->vote(Lcom/vkcoffee/android/attachments/PollAttachment$Answer;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$1(Lcom/vkcoffee/android/attachments/PollAttachment;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 192
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/attachments/PollAttachment;->unvote(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$2(Lcom/vkcoffee/android/attachments/PollAttachment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/attachments/PollAttachment;->bindView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/attachments/PollAttachment;)V
    .locals 0

    .prologue
    .line 286
    invoke-direct {p0}, Lcom/vkcoffee/android/attachments/PollAttachment;->updateCachedPost()V

    return-void
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/attachments/PollAttachment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/attachments/PollAttachment;->updateAttachViewText(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$5(Lcom/vkcoffee/android/attachments/PollAttachment;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/attachments/PollAttachment;->updateAttachViewProgress(Landroid/view/View;Z)V

    return-void
.end method

.method private bindView(Landroid/view/View;)V
    .locals 9
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    .line 112
    const v6, 0x7f10013e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->question:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/attachments/PollAttachment;->updateAttachViewText(Landroid/view/View;)V

    .line 114
    const v6, 0x7f100152

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 115
    .local v1, "var3":Landroid/view/ViewGroup;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v2, "var4":Ljava/util/ArrayList;
    const/4 v0, 0x0

    .local v0, "var2":I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lt v0, v6, :cond_0

    .line 123
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 125
    .local v5, "var7":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 129
    iget-object v6, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->answers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 131
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 170
    return-void

    .line 118
    .end local v5    # "var7":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;

    if-eqz v6, :cond_1

    .line 119
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .restart local v5    # "var7":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 132
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;

    .line 133
    .local v4, "var6":Lcom/vkcoffee/android/attachments/PollAttachment$Answer;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    const v7, 0x7f030133

    invoke-virtual {v6, v7, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 134
    .local v3, "var5":Landroid/view/View;
    const v6, 0x7f10035c

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iget-object v7, v4, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->text:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    new-instance v6, Lcom/vkcoffee/android/ui/PollOptionBackgroundDrawable;

    invoke-direct {v6}, Lcom/vkcoffee/android/ui/PollOptionBackgroundDrawable;-><init>()V

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 137
    invoke-direct {p0, v3, v8}, Lcom/vkcoffee/android/attachments/PollAttachment;->updateAttachViewProgress(Landroid/view/View;Z)V

    .line 138
    new-instance v6, Lcom/vkcoffee/android/attachments/PollAttachment$2;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/attachments/PollAttachment$2;-><init>(Lcom/vkcoffee/android/attachments/PollAttachment;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    new-instance v6, Lcom/vkcoffee/android/attachments/PollAttachment$3;

    invoke-direct {v6, p0}, Lcom/vkcoffee/android/attachments/PollAttachment$3;-><init>(Lcom/vkcoffee/android/attachments/PollAttachment;)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 167
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2
.end method

.method private reloadIfNeeded(Landroid/view/View;)V
    .locals 4
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->lastUpdated:I

    sub-int/2addr v0, v1

    const/16 v1, 0x12c

    if-lt v0, v1, :cond_0

    .line 174
    new-instance v0, Lcom/vkcoffee/android/api/polls/PollsGetById;

    iget v1, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->oid:I

    iget v2, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->pid:I

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/polls/PollsGetById;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/attachments/PollAttachment$4;

    invoke-direct {v1, p0, p1}, Lcom/vkcoffee/android/attachments/PollAttachment$4;-><init>(Lcom/vkcoffee/android/attachments/PollAttachment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/polls/PollsGetById;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 187
    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 190
    :cond_0
    return-void
.end method

.method private unvote(Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "var1"    # Landroid/view/ViewGroup;

    .prologue
    .line 193
    new-instance v0, Lcom/vkcoffee/android/api/polls/PollsDeleteVote;

    iget v1, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->oid:I

    iget v2, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->pid:I

    iget v3, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->userAnswer:I

    iget-boolean v4, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->isBoard:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/api/polls/PollsDeleteVote;-><init>(IIIZ)V

    new-instance v1, Lcom/vkcoffee/android/attachments/PollAttachment$5;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/vkcoffee/android/attachments/PollAttachment$5;-><init>(Lcom/vkcoffee/android/attachments/PollAttachment;Landroid/content/Context;Landroid/view/ViewGroup;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/polls/PollsDeleteVote;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 226
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 227
    return-void
.end method

.method private updateAttachViewProgress(Landroid/view/View;Z)V
    .locals 9
    .param p1, "var1"    # Landroid/view/View;
    .param p2, "var2"    # Z

    .prologue
    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;

    .line 231
    .local v1, "var4":Lcom/vkcoffee/android/attachments/PollAttachment$Answer;
    const v3, 0x7f10035e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 232
    .local v0, "var3":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v1, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->votes:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%.0f %%"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget v7, v1, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->rate:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget v3, v1, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->id:I

    iget v4, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->userAnswer:I

    if-ne v3, v4, :cond_0

    .line 234
    const v3, -0xae7e48

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 235
    sget-object v3, Lcom/vkcoffee/android/ui/Font;->Medium:Lcom/vkcoffee/android/ui/Font;

    iget-object v3, v3, Lcom/vkcoffee/android/ui/Font;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 242
    :goto_0
    iget v3, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->userAnswer:I

    if-eqz v3, :cond_2

    .line 243
    if-eqz p2, :cond_1

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v4, "level"

    const/4 v5, 0x1

    new-array v5, v5, [I

    const/4 v6, 0x0

    iget v7, v1, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->rate:F

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    aput v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 245
    .local v2, "var5":Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/vkcoffee/android/attachments/PollAttachment$6;

    invoke-direct {v3, p0, p1}, Lcom/vkcoffee/android/attachments/PollAttachment$6;-><init>(Lcom/vkcoffee/android/attachments/PollAttachment;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 250
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 251
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    .line 270
    .end local v2    # "var5":Landroid/animation/ObjectAnimator;
    :goto_1
    return-void

    .line 237
    :cond_0
    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v4, v1, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->rate:F

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 254
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 256
    :cond_2
    if-eqz p2, :cond_3

    .line 257
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-string v4, "level"

    const/4 v5, 0x1

    new-array v5, v5, [I

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 258
    .restart local v2    # "var5":Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/vkcoffee/android/attachments/PollAttachment$7;

    invoke-direct {v3, p0, p1}, Lcom/vkcoffee/android/attachments/PollAttachment$7;-><init>(Lcom/vkcoffee/android/attachments/PollAttachment;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 263
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 264
    const/4 v3, 0x4

    invoke-static {v0, v3}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    goto :goto_1

    .line 266
    .end local v2    # "var5":Landroid/animation/ObjectAnimator;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 267
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateAttachViewText(Landroid/view/View;)V
    .locals 11
    .param p1, "var1"    # Landroid/view/View;

    .prologue
    .line 273
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 274
    .local v1, "var3":Landroid/content/Context;
    const v4, 0x7f10013f

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 275
    .local v2, "var4":Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    .local v3, "var5":Ljava/lang/StringBuilder;
    iget-boolean v4, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->isAnonymous:Z

    if-eqz v4, :cond_0

    .line 278
    const v0, 0x7f08039b

    .line 283
    .local v0, "var2":I
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u2022 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0030

    iget v7, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->numVotes:I

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget v10, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->numVotes:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    return-void

    .line 280
    .end local v0    # "var2":I
    :cond_0
    const v0, 0x7f08039f

    .restart local v0    # "var2":I
    goto :goto_0
.end method

.method private updateCachedPost()V
    .locals 4

    .prologue
    .line 287
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    invoke-static {v0}, Lcom/vkcoffee/android/cache/NewsfeedCache;->replaceOne(Lcom/vkcoffee/android/NewsEntry;)V

    .line 288
    iget-object v0, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    if-eqz v0, :cond_0

    .line 289
    sget-object v0, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.vkcoffee.android.POST_REPLACED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "entry"

    iget-object v3, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->parentPost:Lcom/vkcoffee/android/NewsEntry;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "bg_only"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.vkcoffee.android.permission.ACCESS_DATA"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 292
    :cond_0
    return-void
.end method

.method private vote(Lcom/vkcoffee/android/attachments/PollAttachment$Answer;Landroid/view/ViewGroup;)V
    .locals 5
    .param p1, "var1"    # Lcom/vkcoffee/android/attachments/PollAttachment$Answer;
    .param p2, "var2"    # Landroid/view/ViewGroup;

    .prologue
    .line 295
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10035f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 296
    new-instance v0, Lcom/vkcoffee/android/api/polls/PollsAddVote;

    iget v1, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->oid:I

    iget v2, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->pid:I

    iget v3, p1, Lcom/vkcoffee/android/attachments/PollAttachment$Answer;->id:I

    iget-boolean v4, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->isBoard:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vkcoffee/android/api/polls/PollsAddVote;-><init>(IIIZ)V

    new-instance v1, Lcom/vkcoffee/android/attachments/PollAttachment$8;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p2, p1}, Lcom/vkcoffee/android/attachments/PollAttachment$8;-><init>(Lcom/vkcoffee/android/attachments/PollAttachment;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/vkcoffee/android/attachments/PollAttachment$Answer;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/polls/PollsAddVote;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 338
    invoke-virtual {v0, p2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 339
    return-void
.end method


# virtual methods
.method public getFullView(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1, "var1"    # Landroid/content/Context;

    .prologue
    .line 342
    const v1, 0x7f030041

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 343
    .local v0, "var2":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/attachments/PollAttachment;->bindView(Landroid/view/View;)V

    .line 344
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/attachments/PollAttachment;->reloadIfNeeded(Landroid/view/View;)V

    .line 345
    return-object v0
.end method

.method public getViewForList(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 1
    .param p1, "var1"    # Landroid/content/Context;
    .param p2, "var2"    # Landroid/view/View;

    .prologue
    .line 349
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/attachments/PollAttachment;->getFullView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public overrideLayoutParams()Lcom/vkcoffee/android/ui/FlowLayout$LayoutParams;
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x0

    return-object v0
.end method

.method public serializeTo(Lcom/vkcoffee/android/utils/Serializer;)V
    .locals 4
    .param p1, "var1"    # Lcom/vkcoffee/android/utils/Serializer;

    .prologue
    .line 357
    const/4 v1, 0x1

    .line 358
    .local v1, "var3":B
    iget-object v3, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->question:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/vkcoffee/android/utils/Serializer;->writeString(Ljava/lang/String;)V

    .line 359
    iget v3, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->oid:I

    invoke-virtual {p1, v3}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 360
    iget v3, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->pid:I

    invoke-virtual {p1, v3}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 361
    iget-object v3, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->answers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 363
    const/4 v2, 0x0

    .local v2, "var4":I
    :goto_0
    iget-object v3, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->answers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 367
    iget v3, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->numVotes:I

    invoke-virtual {p1, v3}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 368
    iget v3, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->userAnswer:I

    invoke-virtual {p1, v3}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 370
    iget-boolean v3, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->isAnonymous:Z

    if-eqz v3, :cond_1

    .line 371
    const/4 v0, 0x1

    .line 376
    .local v0, "var2":B
    :goto_1
    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeByte(B)V

    .line 377
    iget v3, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->lastUpdated:I

    invoke-virtual {p1, v3}, Lcom/vkcoffee/android/utils/Serializer;->writeInt(I)V

    .line 378
    iget-boolean v3, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->isBoard:Z

    if-eqz v3, :cond_2

    .line 379
    move v0, v1

    .line 384
    .end local v0    # "var2":B
    :goto_2
    invoke-virtual {p1, v0}, Lcom/vkcoffee/android/utils/Serializer;->writeByte(B)V

    .line 385
    return-void

    .line 364
    :cond_0
    iget-object v3, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->answers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/utils/Serializer$Serializable;

    invoke-virtual {p1, v3}, Lcom/vkcoffee/android/utils/Serializer;->writeSerializable(Lcom/vkcoffee/android/utils/Serializer$Serializable;)V

    .line 363
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "var2":B
    goto :goto_1

    .line 381
    :cond_2
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "poll"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->oid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/vkcoffee/android/attachments/PollAttachment;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
