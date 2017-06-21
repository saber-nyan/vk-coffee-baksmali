.class public Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;
.super Lcom/vkcoffee/android/fragments/CardRecyclerFragment;
.source "BoardTopicsFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/holder/DiscussionHolder$DiscussionClickable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$TopicListAdapter;,
        Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/CardRecyclerFragment",
        "<",
        "Lcom/vkcoffee/android/api/BoardTopic;",
        ">;",
        "Lcom/vkcoffee/android/ui/holder/DiscussionHolder$DiscussionClickable;"
    }
.end annotation


# static fields
.field private static final CREATE_TOPIC_RESULT:I = 0x1

.field public static final ORDER_CREATED_ASC:I = -0x2

.field public static final ORDER_CREATED_DESC:I = 0x2

.field public static final ORDER_UPDATED_ASC:I = -0x1

.field public static final ORDER_UPDATED_DESC:I = 0x1


# instance fields
.field private adapter:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$TopicListAdapter;

.field private canCreate:Z

.field private defaultOrder:I

.field private refreshOnResume:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;-><init>(I)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->refreshOnResume:Z

    .line 63
    return-void
.end method

.method static synthetic access$002(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->canCreate:Z

    return p1
.end method

.method static synthetic access$100(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    .prologue
    .line 38
    iget v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->defaultOrder:I

    return v0
.end method

.method static synthetic access$1000(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->defaultOrder:I

    return p1
.end method

.method static synthetic access$1100(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;Lme/grishka/appkit/api/APIRequest;)Lme/grishka/appkit/api/APIRequest;
    .locals 0
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;
    .param p1, "x1"    # Lme/grishka/appkit/api/APIRequest;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    return-object p1
.end method

.method static synthetic access$300(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->data:Ljava/util/ArrayList;

    return-object v0
.end method

.method private confirmDeleteTopic(Lcom/vkcoffee/android/api/BoardTopic;)V
    .locals 3
    .param p1, "topic"    # Lcom/vkcoffee/android/api/BoardTopic;

    .prologue
    .line 176
    new-instance v0, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080127

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080126

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0805c0

    invoke-static {p0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$$Lambda$5;->lambdaFactory$(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;Lcom/vkcoffee/android/api/BoardTopic;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    .line 177
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0802d7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 178
    return-void
.end method

.method private deleteTopic(Lcom/vkcoffee/android/api/BoardTopic;)V
    .locals 3
    .param p1, "topic"    # Lcom/vkcoffee/android/api/BoardTopic;

    .prologue
    .line 181
    new-instance v0, Lcom/vkcoffee/android/api/board/BoardDeleteTopic;

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getGroupId()I

    move-result v1

    iget v2, p1, Lcom/vkcoffee/android/api/BoardTopic;->id:I

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/board/BoardDeleteTopic;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$2;

    invoke-direct {v1, p0, p0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$2;-><init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;Landroid/app/Fragment;Lcom/vkcoffee/android/api/BoardTopic;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/board/BoardDeleteTopic;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 187
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 188
    return-void
.end method

.method private getGroupId()I
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "group_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private showCreateBox()V
    .locals 7

    .prologue
    .line 121
    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 122
    .local v1, "edit":Landroid/widget/EditText;
    const v4, 0x7f08015e

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 123
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 124
    .local v2, "editWrap":Landroid/widget/FrameLayout;
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v3

    .line 125
    .local v3, "pad":I
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 126
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 127
    new-instance v4, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f080111

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 128
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f08031e

    invoke-static {p0, v1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;Landroid/widget/EditText;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0800b7

    const/4 v6, 0x0

    .line 135
    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 136
    .local v0, "dlg":Landroid/app/AlertDialog;
    invoke-static {p0, v1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;Landroid/widget/EditText;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 139
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 140
    return-void
.end method

.method private toggleCloseTopic(Lcom/vkcoffee/android/api/BoardTopic;)V
    .locals 6
    .param p1, "topic"    # Lcom/vkcoffee/android/api/BoardTopic;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 191
    iget v3, p1, Lcom/vkcoffee/android/api/BoardTopic;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_0

    move v0, v1

    .line 192
    .local v0, "isClosed":Z
    :goto_0
    new-instance v3, Lcom/vkcoffee/android/api/board/BoardCloseTopic;

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getGroupId()I

    move-result v4

    iget v5, p1, Lcom/vkcoffee/android/api/BoardTopic;->id:I

    if-nez v0, :cond_1

    :goto_1
    invoke-direct {v3, v4, v5, v1}, Lcom/vkcoffee/android/api/board/BoardCloseTopic;-><init>(IIZ)V

    new-instance v1, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$3;

    invoke-direct {v1, p0, p0, v0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$3;-><init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;Landroid/app/Fragment;ZLcom/vkcoffee/android/api/BoardTopic;)V

    invoke-virtual {v3, v1}, Lcom/vkcoffee/android/api/board/BoardCloseTopic;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 203
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 204
    return-void

    .end local v0    # "isClosed":Z
    :cond_0
    move v0, v2

    .line 191
    goto :goto_0

    .restart local v0    # "isClosed":Z
    :cond_1
    move v1, v2

    .line 192
    goto :goto_1
.end method

.method private toggleFixTopic(Lcom/vkcoffee/android/api/BoardTopic;)V
    .locals 6
    .param p1, "topic"    # Lcom/vkcoffee/android/api/BoardTopic;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 207
    iget v3, p1, Lcom/vkcoffee/android/api/BoardTopic;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-lez v3, :cond_0

    move v0, v1

    .line 208
    .local v0, "isFixed":Z
    :goto_0
    new-instance v3, Lcom/vkcoffee/android/api/board/BoardFixTopic;

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getGroupId()I

    move-result v4

    iget v5, p1, Lcom/vkcoffee/android/api/BoardTopic;->id:I

    if-nez v0, :cond_1

    :goto_1
    invoke-direct {v3, v4, v5, v1}, Lcom/vkcoffee/android/api/board/BoardFixTopic;-><init>(IIZ)V

    new-instance v1, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;

    invoke-direct {v1, p0, p0, v0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$4;-><init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;Landroid/app/Fragment;ZLcom/vkcoffee/android/api/BoardTopic;)V

    invoke-virtual {v3, v1}, Lcom/vkcoffee/android/api/board/BoardFixTopic;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 243
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->contentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/view/View;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 244
    return-void

    .end local v0    # "isFixed":Z
    :cond_0
    move v0, v2

    .line 207
    goto :goto_0

    .restart local v0    # "isFixed":Z
    :cond_1
    move v1, v2

    .line 208
    goto :goto_1
.end method


# virtual methods
.method public doLoadData(II)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "count"    # I

    .prologue
    .line 107
    new-instance v0, Lcom/vkcoffee/android/api/board/BoardGetTopics;

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getGroupId()I

    move-result v1

    invoke-direct {v0, v1, p1, p2}, Lcom/vkcoffee/android/api/board/BoardGetTopics;-><init>(III)V

    new-instance v1, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$1;

    invoke-direct {v1, p0, p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$1;-><init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;Landroid/app/Fragment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/board/BoardGetTopics;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    .line 118
    return-void
.end method

.method protected bridge synthetic getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getAdapter()Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$TopicListAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected getAdapter()Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$TopicListAdapter;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->adapter:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$TopicListAdapter;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$TopicListAdapter;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$TopicListAdapter;-><init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->adapter:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$TopicListAdapter;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->adapter:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$TopicListAdapter;

    return-object v0
.end method

.method synthetic lambda$confirmDeleteTopic$318(Lcom/vkcoffee/android/api/BoardTopic;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->deleteTopic(Lcom/vkcoffee/android/api/BoardTopic;)V

    return-void
.end method

.method synthetic lambda$onLongClick$317(Lcom/vkcoffee/android/api/BoardTopic;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 160
    packed-switch p3, :pswitch_data_0

    .line 171
    :goto_0
    return-void

    .line 162
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->confirmDeleteTopic(Lcom/vkcoffee/android/api/BoardTopic;)V

    goto :goto_0

    .line 165
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->toggleCloseTopic(Lcom/vkcoffee/android/api/BoardTopic;)V

    goto :goto_0

    .line 168
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->toggleFixTopic(Lcom/vkcoffee/android/api/BoardTopic;)V

    goto :goto_0

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method synthetic lambda$showCreateBox$314(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 129
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->refreshOnResume:Z

    .line 130
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "title1":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    new-instance v1, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;

    const/4 v2, -0x1

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getGroupId()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;->go(Landroid/content/Context;)V

    goto :goto_0
.end method

.method synthetic lambda$showCreateBox$315(Landroid/widget/EditText;Landroid/content/DialogInterface;)V
    .locals 2
    .param p2, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 138
    return-void
.end method

.method synthetic lambda$updateList$316()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->adapter:Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$TopicListAdapter;

    invoke-virtual {v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$TopicListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 248
    if-ne p1, v4, :cond_1

    const/4 v2, -0x1

    if-ne p2, v2, :cond_1

    .line 249
    new-instance v1, Lcom/vkcoffee/android/api/BoardTopic;

    invoke-direct {v1}, Lcom/vkcoffee/android/api/BoardTopic;-><init>()V

    .line 250
    .local v1, "topic":Lcom/vkcoffee/android/api/BoardTopic;
    const-string/jumbo v2, "id"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/vkcoffee/android/api/BoardTopic;->id:I

    .line 251
    invoke-static {}, Lcom/vkcoffee/android/TimeUtils;->getCurrentTime()I

    move-result v2

    iput v2, v1, Lcom/vkcoffee/android/api/BoardTopic;->created:I

    iput v2, v1, Lcom/vkcoffee/android/api/BoardTopic;->updated:I

    .line 252
    const-string/jumbo v2, "title"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/vkcoffee/android/api/BoardTopic;->title:Ljava/lang/String;

    .line 253
    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    iput v2, v1, Lcom/vkcoffee/android/api/BoardTopic;->lastCommentUid:I

    .line 254
    iput v4, v1, Lcom/vkcoffee/android/api/BoardTopic;->numComments:I

    .line 255
    sget v2, Lcom/vkcoffee/android/Global;->uid:I

    iput v2, v1, Lcom/vkcoffee/android/api/BoardTopic;->creator:I

    .line 256
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 257
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/vkcoffee/android/api/BoardTopic;

    iget v2, v2, Lcom/vkcoffee/android/api/BoardTopic;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    .line 258
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->data:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 262
    :cond_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->updateList()V

    .line 264
    .end local v0    # "i":I
    .end local v1    # "topic":Lcom/vkcoffee/android/api/BoardTopic;
    :cond_1
    return-void

    .line 256
    .restart local v0    # "i":I
    .restart local v1    # "topic":Lcom/vkcoffee/android/api/BoardTopic;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "act"    # Landroid/app/Activity;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onAttach(Landroid/app/Activity;)V

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "board"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getGroupId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vkcoffee/android/ActivityUtils;->setBeamLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->loadData()V

    .line 75
    const v0, 0x7f080553

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->setTitle(I)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->setHasOptionsMenu(Z)V

    .line 77
    return-void
.end method

.method public onClick(Lcom/vkcoffee/android/api/BoardTopic;Z)V
    .locals 4
    .param p1, "topic"    # Lcom/vkcoffee/android/api/BoardTopic;
    .param p2, "showLast"    # Z

    .prologue
    .line 148
    new-instance v0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;

    iget v1, p1, Lcom/vkcoffee/android/api/BoardTopic;->id:I

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getGroupId()I

    move-result v2

    iget-object v3, p1, Lcom/vkcoffee/android/api/BoardTopic;->title:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;-><init>(IILjava/lang/String;)V

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getGroupId()I

    move-result v1

    invoke-static {v1}, Lcom/vkcoffee/android/data/Groups;->isGroupAdmin(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;->setIsAdmin(Z)Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;

    move-result-object v1

    iget v0, p1, Lcom/vkcoffee/android/api/BoardTopic;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 149
    :goto_0
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;->setIsClosed(Z)Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;

    move-result-object v0

    iget v1, p1, Lcom/vkcoffee/android/api/BoardTopic;->numComments:I

    invoke-virtual {v0, p2, v1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;->showLast(ZI)Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;->go(Landroid/content/Context;)V

    .line 150
    return-void

    .line 148
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 88
    const v0, 0x7f110012

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 89
    const v0, 0x7f100201

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->canCreate:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 90
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 100
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onDestroy()V

    .line 101
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->currentRequest:Lme/grishka/appkit/api/APIRequest;

    invoke-virtual {v0}, Lme/grishka/appkit/api/APIRequest;->cancel()V

    .line 104
    :cond_0
    return-void
.end method

.method public onLongClick(Lcom/vkcoffee/android/api/BoardTopic;)Z
    .locals 6
    .param p1, "topic"    # Lcom/vkcoffee/android/api/BoardTopic;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 154
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getGroupId()I

    move-result v2

    invoke-static {v2}, Lcom/vkcoffee/android/data/Groups;->isGroupAdmin(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, p1, Lcom/vkcoffee/android/api/BoardTopic;->creator:I

    sget v3, Lcom/vkcoffee/android/Global;->uid:I

    if-eq v2, v3, :cond_0

    .line 172
    :goto_0
    return v0

    .line 157
    :cond_0
    new-instance v2, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080119

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v0, p1, Lcom/vkcoffee/android/api/BoardTopic;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_1

    const v0, 0x7f08032b

    .line 158
    :goto_1
    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v4, 0x2

    .line 159
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v0, p1, Lcom/vkcoffee/android/api/BoardTopic;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_2

    const v0, 0x7f08055a

    :goto_2
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {p0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;Lcom/vkcoffee/android/api/BoardTopic;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    .line 157
    invoke-virtual {v2, v3, v0}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v1

    .line 172
    goto :goto_0

    .line 157
    :cond_1
    const v0, 0x7f0800de

    goto :goto_1

    .line 159
    :cond_2
    const v0, 0x7f080187

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 93
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f100201

    if-ne v0, v1, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->showCreateBox()V

    .line 96
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 300
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/CardRecyclerFragment;->onResume()V

    .line 301
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->updateList()V

    .line 302
    iget-boolean v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->refreshOnResume:Z

    if-eqz v0, :cond_0

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->refreshOnResume:Z

    .line 304
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;->refresh()V

    .line 306
    :cond_0
    return-void
.end method

.method public updateList()V
    .locals 1

    .prologue
    .line 143
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/fragments/discussions/BoardTopicsFragment;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-static {v0}, Lcom/vkcoffee/android/ViewUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method
