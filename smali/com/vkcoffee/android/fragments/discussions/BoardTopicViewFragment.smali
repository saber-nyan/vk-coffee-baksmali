.class public Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;
.super Lcom/vkcoffee/android/fragments/VKToolbarFragment;
.source "BoardTopicViewFragment.java"

# interfaces
.implements Lcom/vkcoffee/android/ui/PaginationView$Listener;
.implements Lcom/vkcoffee/android/api/board/BoardCommentsLoader$BoardCommentsLoaderListener;
.implements Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder$CommentViewHolderListener;
.implements Lcom/vkcoffee/android/fragments/BackListener;
.implements Lcom/vkcoffee/android/stickers/StickersView$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$1;,
        Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$2;,
        Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$3;,
        Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$4;,
        Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$5;,
        Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$6;,
        Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$7;,
        Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$8;,
        Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$9;,
        Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;,
        Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;,
        Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollAdapter;,
        Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vkcoffee/android/fragments/VKToolbarFragment;",
        "Lcom/vkcoffee/android/ui/PaginationView$Listener;",
        "Lcom/vkcoffee/android/api/board/BoardCommentsLoader$BoardCommentsLoaderListener;",
        "Lcom/vkcoffee/android/ui/holder/comments/CommentViewHolder$CommentViewHolderListener",
        "<",
        "Lcom/vkcoffee/android/api/board/BoardComment;",
        ">;",
        "Lcom/vkcoffee/android/fragments/BackListener;",
        "Lcom/vkcoffee/android/stickers/StickersView$Listener;"
    }
.end annotation


# static fields
.field private static final COUNT_OF_PAGE:I = 0x14

.field private static final EDIT_COMMENT_REQUEST:I = 0x10e9


# instance fields
.field bigProgress:Landroid/view/View;

.field bigProgressVisibility:I

.field commentBar:Lcom/vkcoffee/android/ui/WriteBar;

.field commentsAdapter:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;

.field commentsLoader:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

.field createHint:Landroid/view/View;

.field keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

.field layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field paginationView:Lcom/vkcoffee/android/ui/PaginationView;

.field pollAdapter:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollAdapter;

.field replyFromGroup:Z

.field replyTo:I

.field replyToName:Ljava/lang/String;

.field replyToUid:I

.field sendingComment:Z

.field stickersView:Lcom/vkcoffee/android/stickers/StickersView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 96
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;-><init>()V

    .line 100
    const/16 v0, 0x8

    iput v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->bigProgressVisibility:I

    .line 102
    new-instance v0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;

    invoke-direct {v0, p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;-><init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentsAdapter:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;

    .line 108
    new-instance v0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollAdapter;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollAdapter;-><init>()V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->pollAdapter:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollAdapter;

    .line 110
    iput v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyTo:I

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyToName:Ljava/lang/String;

    .line 112
    iput v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyToUid:I

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->sendingComment:Z

    .line 96
    return-void
.end method

.method static synthetic access$10(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Lcom/vkcoffee/android/UserProfile;I)V
    .locals 0

    .prologue
    .line 946
    invoke-direct {p0, p1, p2}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->openBanUserFragment(Lcom/vkcoffee/android/UserProfile;I)V

    return-void
.end method

.method static synthetic access$3(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)Z
    .locals 1

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->canWrite()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)V
    .locals 0

    .prologue
    .line 682
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->waitAndSendComment()V

    return-void
.end method

.method static synthetic access$5(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)V
    .locals 0

    .prologue
    .line 727
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->sendComment()V

    return-void
.end method

.method static synthetic access$6(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)I
    .locals 1

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getGroupId()I

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)I
    .locals 1

    .prologue
    .line 319
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getTopicId()I

    move-result v0

    return v0
.end method

.method static synthetic access$8(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Lcom/vkcoffee/android/api/board/BoardComment;)V
    .locals 0

    .prologue
    .line 958
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->deleteComment(Lcom/vkcoffee/android/api/board/BoardComment;)V

    return-void
.end method

.method static synthetic access$9(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Lcom/vkcoffee/android/api/board/BoardComment;)V
    .locals 0

    .prologue
    .line 954
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->editComment(Lcom/vkcoffee/android/api/board/BoardComment;)V

    return-void
.end method

.method private canWrite()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 377
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "is_closed"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private deleteComment(Lcom/vkcoffee/android/api/board/BoardComment;)V
    .locals 5
    .param p1, "comment"    # Lcom/vkcoffee/android/api/board/BoardComment;

    .prologue
    .line 959
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 960
    .local v0, "activity":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 961
    new-instance v1, Lcom/vkcoffee/android/api/board/BoardDeleteComment;

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getGroupId()I

    move-result v2

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getTopicId()I

    move-result v3

    iget v4, p1, Lcom/vkcoffee/android/api/board/BoardComment;->id:I

    invoke-direct {v1, v2, v3, v4}, Lcom/vkcoffee/android/api/board/BoardDeleteComment;-><init>(III)V

    new-instance v2, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$8;

    invoke-direct {v2, p0, p0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$8;-><init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Landroid/app/Fragment;Lcom/vkcoffee/android/api/board/BoardComment;)V

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/board/BoardDeleteComment;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 965
    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 967
    :cond_0
    return-void
.end method

.method private editComment(Lcom/vkcoffee/android/api/board/BoardComment;)V
    .locals 3
    .param p1, "comm"    # Lcom/vkcoffee/android/api/board/BoardComment;

    .prologue
    .line 955
    new-instance v0, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    invoke-direct {v0}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;-><init>()V

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getTopicId()I

    move-result v1

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getGroupId()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->setBoardComment(Lcom/vkcoffee/android/api/board/BoardComment;II)Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;

    move-result-object v0

    const/16 v1, 0x10e9

    invoke-virtual {v0, p0, v1}, Lcom/vkcoffee/android/fragments/news/NewPostFragment$Builder;->forResult(Landroid/app/Fragment;I)V

    .line 956
    return-void
.end method

.method private getCommentsCount()I
    .locals 3

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;->access$0()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getGroupId()I
    .locals 3

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "group_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getStartOffset()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 324
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->isShowLastComment()Z

    move-result v2

    if-nez v2, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "offset"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 328
    :cond_0
    :goto_0
    return v0

    .line 327
    :cond_1
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getCommentsCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x14

    .line 328
    .local v0, "offsetForLastComment":I
    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private getTopicId()I
    .locals 2

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private isShowLastComment()Z
    .locals 3

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$Builder;->access$1()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private openBanUserFragment(Lcom/vkcoffee/android/UserProfile;I)V
    .locals 2
    .param p1, "p"    # Lcom/vkcoffee/android/UserProfile;
    .param p2, "own"    # I

    .prologue
    .line 947
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 948
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 949
    const-string v1, "profile"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 950
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vkcoffee/android/fragments/groupadmin/BannedUserSettingsFragment;->open(Landroid/os/Bundle;Landroid/app/Activity;)V

    .line 951
    return-void
.end method

.method private sendComment()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 728
    iget-boolean v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->sendingComment:Z

    if-nez v1, :cond_3

    .line 729
    iput-boolean v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->sendingComment:Z

    .line 731
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getGroupId()I

    move-result v1

    neg-int v1, v1

    const v2, -0x4ad4ef2

    if-eq v1, v2, :cond_0

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getGroupId()I

    move-result v1

    neg-int v1, v1

    const v2, -0x5f4e442

    if-ne v1, v2, :cond_1

    .line 732
    :cond_0
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/vkcoffee/android/DecrEncr;->canTransform(Ljava/lang/String;Landroid/app/Activity;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 733
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4, v4}, Lcom/vkcoffee/android/DecrEncr;->transformText(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 737
    :cond_1
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/WriteBar;->getText()Ljava/lang/String;

    move-result-object v0

    .line 738
    .local v0, "txt":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/WriteBar;->getAttachments()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_3

    .line 740
    :cond_2
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/WriteBar;->getAttachments()Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->sendComment(Ljava/lang/String;Ljava/util/List;Z)V

    .line 743
    .end local v0    # "txt":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private sendComment(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 17
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # Ljava/util/List;
    .param p3, "var3"    # Z

    .prologue
    .line 746
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v14

    .line 747
    .local v14, "var6":Landroid/app/Activity;
    if-eqz v14, :cond_0

    .line 748
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyFromGroup:Z

    .line 750
    .local v7, "var4":Z
    if-eqz p3, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyTo:I

    if-lez v1, :cond_1

    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyToName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 751
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyToName:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[post"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyTo:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyToName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 756
    .local v4, "var5":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/vkcoffee/android/api/board/BoardAddComment;

    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getGroupId()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getTopicId()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v7}, Lcom/vkcoffee/android/api/board/BoardAddComment;-><init>(IILjava/lang/String;Ljava/util/List;Ljava/lang/String;Z)V

    new-instance v8, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;

    move-object/from16 v9, p0

    move-object/from16 v10, p0

    move-object v11, v4

    move/from16 v12, p3

    move-object/from16 v13, p1

    move-object/from16 v15, p2

    move/from16 v16, v7

    invoke-direct/range {v8 .. v16}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$5;-><init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Landroid/app/Fragment;Ljava/lang/String;ZLjava/lang/String;Landroid/app/Activity;Ljava/util/List;Z)V

    invoke-virtual {v1, v8}, Lcom/vkcoffee/android/api/board/BoardAddComment;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    .line 797
    invoke-virtual/range {p0 .. p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 800
    .end local v4    # "var5":Ljava/lang/String;
    .end local v7    # "var4":Z
    :cond_0
    return-void

    .line 753
    .restart local v7    # "var4":Z
    :cond_1
    move-object/from16 v4, p1

    .restart local v4    # "var5":Ljava/lang/String;
    goto :goto_0
.end method

.method private sendStickerComment(Lcom/vkcoffee/android/attachments/StickerAttachment;)V
    .locals 3
    .param p1, "att"    # Lcom/vkcoffee/android/attachments/StickerAttachment;

    .prologue
    .line 608
    const-string v0, ""

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->sendComment(Ljava/lang/String;Ljava/util/List;Z)V

    .line 609
    return-void
.end method

.method private waitAndSendComment()V
    .locals 4

    .prologue
    .line 683
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 684
    .local v0, "progress":Landroid/app/ProgressDialog;
    const v1, 0x7f080293

    invoke-virtual {p0, v1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 685
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 686
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 687
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 688
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {p0, v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$6;->lambdaFactory$(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Landroid/app/ProgressDialog;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {p0, v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$7;->lambdaFactory$(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Landroid/app/ProgressDialog;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/vkcoffee/android/ui/WriteBar;->waitForUploads(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 689
    return-void
.end method


# virtual methods
.method public banUser(Lcom/vkcoffee/android/api/board/BoardComment;)V
    .locals 3
    .param p1, "comment"    # Lcom/vkcoffee/android/api/board/BoardComment;

    .prologue
    .line 911
    new-instance v0, Lcom/vkcoffee/android/api/groups/GroupsGetBanned;

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getGroupId()I

    move-result v1

    iget v2, p1, Lcom/vkcoffee/android/api/board/BoardComment;->uid:I

    invoke-direct {v0, v1, v2}, Lcom/vkcoffee/android/api/groups/GroupsGetBanned;-><init>(II)V

    new-instance v1, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$7;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$7;-><init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Landroid/content/Context;Lcom/vkcoffee/android/api/board/BoardComment;)V

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/groups/GroupsGetBanned;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    .line 943
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->wrapProgress(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 944
    return-void
.end method

.method createReplyLink(ILjava/lang/String;II)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "groupId"    # I
    .param p4, "replyTo"    # I

    .prologue
    .line 803
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "["

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "id"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":bp-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "club"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    neg-int v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method fillPageCount()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1060
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentsLoader:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    invoke-virtual {v2}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;->getTotal()I

    move-result v1

    .line 1061
    .local v1, "total":I
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->paginationView:Lcom/vkcoffee/android/ui/PaginationView;

    if-eqz v2, :cond_0

    if-gez v1, :cond_2

    .line 1062
    :cond_0
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->paginationView:Lcom/vkcoffee/android/ui/PaginationView;

    invoke-static {v2, v6}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 1072
    :cond_1
    :goto_0
    return-void

    .line 1065
    :cond_2
    div-int/lit8 v5, v1, 0x14

    rem-int/lit8 v2, v1, 0x14

    if-lez v2, :cond_3

    move v2, v3

    :goto_1
    add-int v0, v5, v2

    .line 1066
    .local v0, "pageCount":I
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->paginationView:Lcom/vkcoffee/android/ui/PaginationView;

    invoke-virtual {v2, v0}, Lcom/vkcoffee/android/ui/PaginationView;->setPageCount(I)V

    .line 1067
    if-gt v0, v3, :cond_4

    .line 1068
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->paginationView:Lcom/vkcoffee/android/ui/PaginationView;

    invoke-virtual {v2, v6}, Lcom/vkcoffee/android/ui/PaginationView;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "pageCount":I
    :cond_3
    move v2, v4

    .line 1065
    goto :goto_1

    .line 1069
    .restart local v0    # "pageCount":I
    :cond_4
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->paginationView:Lcom/vkcoffee/android/ui/PaginationView;

    invoke-virtual {v2}, Lcom/vkcoffee/android/ui/PaginationView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 1070
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->paginationView:Lcom/vkcoffee/android/ui/PaginationView;

    invoke-static {v2, v4}, Lme/grishka/appkit/utils/V;->setVisibilityAnimated(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public hideEmojiPopup()V
    .locals 1

    .prologue
    .line 999
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->hide()V

    .line 1002
    :cond_0
    return-void
.end method

.method lambda$null$321(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "menuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 590
    iput-boolean v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyFromGroup:Z

    .line 591
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/WriteBar;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->waitAndSendComment()V

    .line 596
    :goto_0
    return v1

    .line 594
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->sendComment()V

    goto :goto_0
.end method

.method lambda$onCreateContentView$319(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 492
    if-ne p2, p6, :cond_0

    if-ne p4, p8, :cond_0

    if-ne p3, p7, :cond_0

    if-eq p5, p9, :cond_1

    .line 493
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->notifyLayoutHasChanged()V

    .line 495
    :cond_1
    return-void
.end method

.method lambda$onCreateContentView$320(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 498
    const/4 v2, 0x4

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v2}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    .line 505
    :cond_1
    :goto_0
    return v0

    .line 501
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 504
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v2, v1}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->show(Z)V

    goto :goto_0
.end method

.method lambda$onCreateContentView$322(Landroid/view/View;)Z
    .locals 6
    .param p1, "view1"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 509
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const v3, 0x7f100436

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 510
    .local v0, "menu":Landroid/widget/PopupMenu;
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getGroupId()I

    move-result v1

    invoke-static {v1}, Lcom/vkcoffee/android/data/Groups;->getAdminLevel(I)I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 511
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v2, 0x7f080433

    invoke-interface {v1, v4, v5, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 516
    :cond_0
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const-string v2, "\u0417\u0430\u0448\u0438\u0444\u0440\u043e\u0432\u0430\u0442\u044c \u0438 \u043e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c"

    invoke-interface {v1, v4, v4, v4, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 521
    new-instance v1, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$3;

    invoke-direct {v1, p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$3;-><init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 568
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    .line 569
    return v5
.end method

.method lambda$onCreateContentView$323(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/WriteBar;->isUploading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 601
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->waitAndSendComment()V

    .line 605
    :goto_0
    return-void

    .line 603
    :cond_0
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->sendComment()V

    goto :goto_0
.end method

.method lambda$onPageSelected$324(Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 638
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 639
    .local v0, "n":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->paginationView:Lcom/vkcoffee/android/ui/PaginationView;

    invoke-virtual {v1}, Lcom/vkcoffee/android/ui/PaginationView;->getPageCount()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 640
    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->onPageSelected(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    .end local v0    # "n":I
    :cond_0
    :goto_0
    return-void

    .line 642
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method lambda$showCommentActions$327(Lcom/vkcoffee/android/api/board/BoardComment;Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "boardComment"    # Lcom/vkcoffee/android/api/board/BoardComment;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .prologue
    .line 876
    iget-object v1, p1, Lcom/vkcoffee/android/api/board/BoardComment;->linkUrls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 877
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v1, p1, Lcom/vkcoffee/android/api/board/BoardComment;->linkUrls:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->startActivity(Landroid/content/Intent;)V

    .line 906
    :goto_0
    return-void

    .line 880
    :cond_0
    iget-object v1, p1, Lcom/vkcoffee/android/api/board/BoardComment;->linkUrls:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v1, p3, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 882
    :pswitch_0
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/ClipboardManager;

    iget-object v2, p1, Lcom/vkcoffee/android/api/board/BoardComment;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 883
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f08053f

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 886
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->deleteComment(Lcom/vkcoffee/android/api/board/BoardComment;)V

    goto :goto_0

    .line 889
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->editComment(Lcom/vkcoffee/android/api/board/BoardComment;)V

    goto :goto_0

    .line 893
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->banUser(Lcom/vkcoffee/android/api/board/BoardComment;)V

    goto :goto_0

    .line 897
    :pswitch_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 898
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "title"

    const v2, 0x7f08028e

    invoke-virtual {p0, v2}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 899
    const-string v1, "ltype"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 900
    const-string v1, "lptype"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 901
    const-string v1, "oid"

    iget v2, p1, Lcom/vkcoffee/android/api/board/BoardComment;->ownerId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 902
    const-string v1, "item_id"

    iget v2, p1, Lcom/vkcoffee/android/api/board/BoardComment;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 903
    const-class v1, Lcom/vkcoffee/android/fragments/LikesListFragment;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/vkcoffee/android/navigation/Navigate;->to(Ljava/lang/Class;Landroid/os/Bundle;Landroid/content/Context;)V

    goto :goto_0

    .line 880
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method lambda$waitAndSendComment$325(Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "progressDialog"    # Landroid/app/ProgressDialog;

    .prologue
    .line 692
    invoke-static {p1}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 693
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->sendComment()V

    .line 694
    return-void
.end method

.method lambda$waitAndSendComment$326(Landroid/app/ProgressDialog;)V
    .locals 3
    .param p1, "progressDialog"    # Landroid/app/ProgressDialog;

    .prologue
    .line 697
    invoke-static {p1}, Lcom/vkcoffee/android/ViewUtils;->dismissDialogSafety(Landroid/app/Dialog;)V

    .line 698
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f080165

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 699
    return-void
.end method

.method public bridge synthetic likeComment(Lcom/vkcoffee/android/Comment;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/board/BoardComment;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->likeComment(Lcom/vkcoffee/android/api/board/BoardComment;)V

    return-void
.end method

.method public likeComment(Lcom/vkcoffee/android/api/board/BoardComment;)V
    .locals 9
    .param p1, "comm"    # Lcom/vkcoffee/android/api/board/BoardComment;

    .prologue
    .line 647
    const/4 v4, 0x1

    .line 648
    .local v4, "z":Z
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 649
    .local v0, "activity":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 651
    new-instance v5, Lcom/vkcoffee/android/api/board/BoardCommentLike;

    invoke-virtual {p1}, Lcom/vkcoffee/android/api/board/BoardComment;->isLiked()Z

    move-result v6

    iget v7, p1, Lcom/vkcoffee/android/api/board/BoardComment;->ownerId:I

    invoke-virtual {p1}, Lcom/vkcoffee/android/api/board/BoardComment;->getId()I

    move-result v8

    invoke-direct {v5, v6, v7, v8}, Lcom/vkcoffee/android/api/board/BoardCommentLike;-><init>(ZII)V

    new-instance v6, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$4;

    invoke-direct {v6, p0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$4;-><init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Lcom/vkcoffee/android/api/board/BoardComment;)V

    invoke-virtual {v5, v6}, Lcom/vkcoffee/android/api/board/BoardCommentLike;->setCallback(Lcom/vkcoffee/android/api/Callback;)Lcom/vkcoffee/android/api/VKAPIRequest;

    move-result-object v3

    .line 666
    .local v3, "request":Lcom/vkcoffee/android/api/VKAPIRequest;
    iget v2, p1, Lcom/vkcoffee/android/api/board/BoardComment;->likesCount:I

    .line 667
    .local v2, "i2":I
    iget-boolean v5, p1, Lcom/vkcoffee/android/api/board/BoardComment;->isLiked:Z

    if-eqz v5, :cond_2

    .line 668
    const/4 v1, -0x1

    .line 672
    .local v1, "i":I
    :goto_0
    add-int v5, v1, v2

    iput v5, p1, Lcom/vkcoffee/android/api/board/BoardComment;->likesCount:I

    .line 673
    iget-boolean v5, p1, Lcom/vkcoffee/android/api/board/BoardComment;->isLiked:Z

    if-eqz v5, :cond_0

    .line 674
    const/4 v4, 0x0

    .line 676
    :cond_0
    iput-boolean v4, p1, Lcom/vkcoffee/android/api/board/BoardComment;->isLiked:Z

    .line 677
    iget-object v5, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentsAdapter:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;

    invoke-virtual {v5}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->notifyDataSetChanged()V

    .line 678
    invoke-virtual {v3, v0}, Lcom/vkcoffee/android/api/VKAPIRequest;->exec(Landroid/content/Context;)Lcom/vkcoffee/android/api/VKAPIRequest;

    .line 680
    .end local v1    # "i":I
    .end local v2    # "i2":I
    .end local v3    # "request":Lcom/vkcoffee/android/api/VKAPIRequest;
    :cond_1
    return-void

    .line 670
    .restart local v2    # "i2":I
    .restart local v3    # "request":Lcom/vkcoffee/android/api/VKAPIRequest;
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "i":I
    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8
    .param p1, "reqCode"    # I
    .param p2, "resCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const v7, 0x7f1001bf

    .line 702
    invoke-super {p0, p1, p2, p3}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 703
    const/16 v4, 0x10e9

    if-ne p1, v4, :cond_3

    const/4 v4, -0x1

    if-ne p2, v4, :cond_3

    .line 704
    const-string v4, "comment"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vkcoffee/android/api/board/BoardComment;

    .line 705
    .local v0, "ce":Lcom/vkcoffee/android/api/board/BoardComment;
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentsAdapter:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;

    iget-object v4, v4, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->comments:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    .line 725
    .end local v0    # "ce":Lcom/vkcoffee/android/api/board/BoardComment;
    :cond_1
    :goto_0
    return-void

    .line 705
    .restart local v0    # "ce":Lcom/vkcoffee/android/api/board/BoardComment;
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vkcoffee/android/api/board/BoardComment;

    .line 706
    .local v1, "comm":Lcom/vkcoffee/android/api/board/BoardComment;
    iget v5, v1, Lcom/vkcoffee/android/api/board/BoardComment;->id:I

    iget v6, v0, Lcom/vkcoffee/android/api/board/BoardComment;->id:I

    if-ne v5, v6, :cond_0

    .line 707
    iget-object v4, v0, Lcom/vkcoffee/android/api/board/BoardComment;->text:Ljava/lang/String;

    iput-object v4, v1, Lcom/vkcoffee/android/api/board/BoardComment;->text:Ljava/lang/String;

    .line 708
    iget-object v4, v1, Lcom/vkcoffee/android/api/board/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 709
    iget-object v4, v1, Lcom/vkcoffee/android/api/board/BoardComment;->attachments:Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/vkcoffee/android/api/board/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 710
    invoke-virtual {v1}, Lcom/vkcoffee/android/api/board/BoardComment;->processLinksAndEmoji()V

    .line 711
    sget-object v4, Lcom/vkcoffee/android/VKApplication;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 712
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/high16 v5, 0x42be0000    # 95.0f

    invoke-static {v5}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v5

    sub-int/2addr v4, v5

    const/16 v5, 0x25c

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 713
    .local v3, "tSize":I
    int-to-float v4, v3

    const v5, 0x3f2a7efa    # 0.666f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, v1, Lcom/vkcoffee/android/api/board/BoardComment;->attachments:Ljava/util/ArrayList;

    invoke-static {v3, v4, v5}, Lcom/vkcoffee/android/ZhukovLayout;->processThumbs(IILjava/util/List;)V

    .line 714
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentsAdapter:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;

    invoke-virtual {v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->notifyDataSetChanged()V

    .line 715
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 716
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lme/grishka/appkit/views/UsableRecyclerView;

    invoke-virtual {v4}, Lme/grishka/appkit/views/UsableRecyclerView;->updateImages()V

    goto :goto_0

    .line 722
    .end local v0    # "ce":Lcom/vkcoffee/android/api/board/BoardComment;
    .end local v1    # "comm":Lcom/vkcoffee/android/api/board/BoardComment;
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v3    # "tSize":I
    :cond_3
    const/16 v4, 0x2710

    if-le p1, v4, :cond_1

    .line 723
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v4, p1, p2, p3}, Lcom/vkcoffee/android/ui/WriteBar;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 340
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onAttach(Landroid/app/Activity;)V

    .line 341
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->setTitle(Ljava/lang/CharSequence;)V

    .line 344
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "topic-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getGroupId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getTopicId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/vkcoffee/android/ActivityUtils;->setBeamLink(Landroid/app/Activity;Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1006
    :cond_0
    const/4 v0, 0x0

    .line 1009
    :goto_0
    return v0

    .line 1008
    :cond_1
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->hideEmojiPopup()V

    .line 1009
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBackspace()V
    .locals 4

    .prologue
    .line 312
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const v1, 0x7f100433

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    const/16 v3, 0x43

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 313
    return-void
.end method

.method public onCommentLoaded(IIZLjava/util/List;)V
    .locals 5
    .param p1, "from"    # I
    .param p2, "count"    # I
    .param p3, "isTop"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/api/board/BoardComment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "allLoadedData":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/api/board/BoardComment;>;"
    const/4 v4, 0x1

    .line 1013
    if-eqz p3, :cond_1

    .line 1014
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v1

    .line 1015
    .local v1, "firstPosition":I
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    .line 1016
    .local v2, "view":Landroid/view/View;
    if-nez v2, :cond_0

    const/4 v0, 0x0

    .line 1017
    .local v0, "dy":I
    :goto_0
    add-int/2addr v1, p2

    .line 1018
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentsAdapter:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;

    invoke-virtual {v3, p4, v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->setData(Ljava/util/List;Z)V

    .line 1019
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v3, v1, v0}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1023
    .end local v0    # "dy":I
    .end local v1    # "firstPosition":I
    .end local v2    # "view":Landroid/view/View;
    :goto_1
    return-void

    .line 1016
    .restart local v1    # "firstPosition":I
    .restart local v2    # "view":Landroid/view/View;
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0

    .line 1022
    .end local v1    # "firstPosition":I
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentsAdapter:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;

    invoke-virtual {v3, p4, v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->setData(Ljava/util/List;Z)V

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Landroid/content/res/Configuration;

    .prologue
    .line 348
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->show(Z)V

    .line 350
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v0}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->notifyLayoutHasChanged()V

    .line 351
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->stickersView:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/stickers/StickersView;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 353
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 356
    invoke-super {p0, p1}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onCreate(Landroid/os/Bundle;)V

    .line 357
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 358
    new-instance v0, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getGroupId()I

    move-result v1

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getTopicId()I

    move-result v2

    const/16 v3, 0x14

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->isShowLastComment()Z

    move-result v5

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;-><init>(IIILcom/vkcoffee/android/api/board/BoardCommentsLoader$BoardCommentsLoaderListener;Z)V

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getStartOffset()I

    move-result v1

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;->show(ILandroid/content/Context;)Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentsLoader:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    .line 359
    return-void
.end method

.method public onCreateContentView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x0

    .line 381
    const v3, 0x7f03008a

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 382
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f1001fa

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->bigProgress:Landroid/view/View;

    .line 383
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->bigProgress:Landroid/view/View;

    iget v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->bigProgressVisibility:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 384
    const v3, 0x7f1001fb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->createHint:Landroid/view/View;

    .line 385
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getTopicId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 386
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->createHint:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 388
    :cond_0
    const v3, 0x7f1001bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lme/grishka/appkit/views/UsableRecyclerView;

    .line 389
    .local v1, "list":Lme/grishka/appkit/views/UsableRecyclerView;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1, v3}, Lme/grishka/appkit/views/UsableRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 390
    new-instance v3, Lme/grishka/appkit/views/DividerItemDecoration;

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v5, 0x26000000

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v5}, Lme/grishka/appkit/utils/V;->dp(F)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lme/grishka/appkit/views/DividerItemDecoration;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v1, v3}, Lme/grishka/appkit/views/UsableRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 391
    new-instance v0, Lme/grishka/appkit/utils/MergeRecyclerAdapter;

    invoke-direct {v0}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;-><init>()V

    .line 392
    .local v0, "adapter":Lme/grishka/appkit/utils/MergeRecyclerAdapter;
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->pollAdapter:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollAdapter;

    invoke-virtual {v0, v3}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->addAdapter(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    .line 393
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentsAdapter:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;

    invoke-virtual {v0, v3}, Lme/grishka/appkit/utils/MergeRecyclerAdapter;->addAdapter(Lme/grishka/appkit/views/UsableRecyclerView$Adapter;)V

    .line 394
    invoke-virtual {v1, v0}, Lme/grishka/appkit/views/UsableRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 395
    new-instance v3, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$1;

    invoke-direct {v3, p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$1;-><init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)V

    invoke-virtual {v1, v3}, Lme/grishka/appkit/views/UsableRecyclerView;->setListener(Lme/grishka/appkit/imageloader/ListImageLoaderWrapper$Listener;)V

    .line 419
    invoke-static {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$1;->lambdaFactory$(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)Landroid/view/View$OnLayoutChangeListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 420
    const v3, 0x7f1001f9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/ui/WriteBar;

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    .line 421
    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->canWrite()Z

    move-result v3

    if-nez v3, :cond_1

    .line 422
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/WriteBar;->setVisibility(I)V

    .line 425
    :cond_1
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const v4, 0x7f100434

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$2;

    invoke-direct {v4, p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$2;-><init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 473
    new-instance v3, Lcom/vkcoffee/android/stickers/StickersView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/vkcoffee/android/stickers/StickersView;-><init>(Landroid/content/Context;Lcom/vkcoffee/android/stickers/StickersView$Listener;)V

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->stickersView:Lcom/vkcoffee/android/stickers/StickersView;

    .line 474
    new-instance v3, Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->stickersView:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-direct {v3, v4, v2, v5}, Lcom/vkcoffee/android/stickers/KeyboardPopup;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/View;)V

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    .line 475
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/WriteBar;->getAnchor()Landroid/view/View;

    move-result-object v4

    const v5, -0x14110e

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->attachToAnchor(Landroid/view/View;I)V

    .line 476
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->setOnVisibilityChangedListener(Lcom/vkcoffee/android/stickers/KeyboardPopup$OnVisibilityChangedListener;)V

    .line 477
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v3, p0}, Lcom/vkcoffee/android/ui/WriteBar;->setAutoSuggestPopupListener(Lcom/vkcoffee/android/stickers/StickersView$Listener;)V

    .line 478
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/WriteBar;->setKeyboardPopup(Lcom/vkcoffee/android/stickers/KeyboardPopup;)V

    .line 479
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const v4, 0x7f100433

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$2;->lambdaFactory$(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)Landroid/view/View$OnKeyListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 480
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const v4, 0x7f100436

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$3;->lambdaFactory$(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)Landroid/view/View$OnLongClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 481
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-static {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$4;->lambdaFactory$(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;)Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vkcoffee/android/ui/WriteBar;->setOnSendClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v3, p0}, Lcom/vkcoffee/android/ui/WriteBar;->setFragment(Landroid/app/Fragment;)V

    .line 483
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getGroupId()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/vkcoffee/android/ui/WriteBar;->setUploadType(ZI)V

    .line 484
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, v6}, Lcom/vkcoffee/android/ui/WriteBar;->setAttachLimits(IZ)V

    .line 485
    const v3, 0x7f1001fd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/vkcoffee/android/ui/PaginationView;

    iput-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->paginationView:Lcom/vkcoffee/android/ui/PaginationView;

    .line 486
    iget-object v3, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->paginationView:Lcom/vkcoffee/android/ui/PaginationView;

    invoke-virtual {v3, p0}, Lcom/vkcoffee/android/ui/PaginationView;->setListener(Lcom/vkcoffee/android/ui/PaginationView$Listener;)V

    .line 487
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->fillPageCount()V

    .line 488
    return-object v2
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 372
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onDestroy()V

    .line 373
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentsLoader:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    invoke-virtual {v0}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;->cancel()V

    .line 374
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 362
    invoke-super {p0}, Lcom/vkcoffee/android/fragments/VKToolbarFragment;->onDestroyView()V

    .line 363
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    .line 364
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->paginationView:Lcom/vkcoffee/android/ui/PaginationView;

    .line 365
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    .line 366
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->stickersView:Lcom/vkcoffee/android/stickers/StickersView;

    .line 367
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->bigProgress:Landroid/view/View;

    .line 368
    iput-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->createHint:Landroid/view/View;

    .line 369
    return-void
.end method

.method public onEmojiSelected(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 304
    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const v3, 0x7f100433

    invoke-virtual {v2, v3}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 305
    .local v0, "edit":Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 306
    .local v1, "pos":I
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 307
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    .line 308
    invoke-virtual {v0, v1, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 309
    return-void
.end method

.method public onFinishLoading(IZ)V
    .locals 2
    .param p1, "currentDataSize"    # I
    .param p2, "isTop"    # Z

    .prologue
    const/16 v1, 0x8

    .line 1042
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->bigProgress:Landroid/view/View;

    .line 1043
    .local v0, "view":Landroid/view/View;
    iput v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->bigProgressVisibility:I

    .line 1044
    invoke-static {v0, v1}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 1045
    return-void
.end method

.method public onItemDeleted(ILjava/util/List;)V
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/vkcoffee/android/api/board/BoardComment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1030
    .local p2, "allLoadedData":Ljava/util/List;, "Ljava/util/List<Lcom/vkcoffee/android/api/board/BoardComment;>;"
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentsAdapter:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->setData(Ljava/util/List;Z)V

    .line 1031
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentsAdapter:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->notifyItemRemoved(I)V

    .line 1032
    return-void
.end method

.method public onPageSelected(I)V
    .locals 10
    .param p1, "num"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 634
    new-array v4, v8, [Ljava/lang/Object;

    .line 612
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v4}, Lcom/vkcoffee/android/utils/L;->e([Ljava/lang/Object;)V

    .line 613
    if-lez p1, :cond_0

    .line 614
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->paginationView:Lcom/vkcoffee/android/ui/PaginationView;

    invoke-virtual {v4, p1}, Lcom/vkcoffee/android/ui/PaginationView;->setCurrentPage(I)V

    .line 615
    add-int/lit8 v4, p1, -0x1

    mul-int/lit8 v4, v4, 0x14

    invoke-virtual {p0, v4}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->showOffset(I)V

    .line 633
    :goto_0
    return-void

    .line 618
    :cond_0
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 619
    .local v3, "tv":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f080334

    new-array v6, v8, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->paginationView:Lcom/vkcoffee/android/ui/PaginationView;

    invoke-virtual {v7}, Lcom/vkcoffee/android/ui/PaginationView;->getPageCount()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 621
    .local v0, "edit":Landroid/widget/EditText;
    const/16 v4, 0x2000

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 622
    const/high16 v4, 0x43480000    # 200.0f

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setWidth(I)V

    .line 623
    iget-object v4, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->paginationView:Lcom/vkcoffee/android/ui/PaginationView;

    invoke-virtual {v4}, Lcom/vkcoffee/android/ui/PaginationView;->getCurrentPage()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 624
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setInputType(I)V

    .line 625
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 626
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 627
    .local v1, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 628
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 629
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 630
    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v4}, Lcom/vkcoffee/android/Global;->scale(F)I

    move-result v2

    .line 631
    .local v2, "padding":I
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 632
    new-instance v4, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f08027f

    invoke-virtual {v4, v5}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f08031e

    invoke-static {p0, v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$BoardTopicViewFragment$$Lambda$5;->lambdaFactory$(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Landroid/widget/EditText;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0800b7

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 633
    invoke-static {v0}, Lcom/vk/attachpicker/util/KeyboardUtils;->showKeyboard(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public onStartLoading(IZ)V
    .locals 2
    .param p1, "currentDataSize"    # I
    .param p2, "isTop"    # Z

    .prologue
    .line 1035
    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->bigProgress:Landroid/view/View;

    .line 1036
    .local v1, "view":Landroid/view/View;
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1037
    .local v0, "i":I
    :goto_0
    iput v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->bigProgressVisibility:I

    .line 1038
    invoke-static {v1, v0}, Lcom/vkcoffee/android/ViewUtils;->setVisibility(Landroid/view/View;I)V

    .line 1039
    return-void

    .line 1036
    .end local v0    # "i":I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onStartReload()V
    .locals 3

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentsAdapter:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$CommentsAdapter;->setData(Ljava/util/List;Z)V

    .line 1049
    return-void
.end method

.method public onStickerSelected(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "packId"    # I
    .param p2, "stickerId"    # I
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "localPath"    # Ljava/lang/String;
    .param p5, "stickerReferrer"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 289
    new-instance v0, Lcom/vkcoffee/android/attachments/StickerAttachment;

    invoke-direct {v0}, Lcom/vkcoffee/android/attachments/StickerAttachment;-><init>()V

    .line 290
    .local v0, "att":Lcom/vkcoffee/android/attachments/StickerAttachment;
    iput p2, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->id:I

    .line 291
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p3, v4, v5

    iput-object v4, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->images:[Ljava/lang/String;

    .line 292
    iget-object v2, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->images:[Ljava/lang/String;

    .line 293
    .local v2, "strArr":[Ljava/lang/String;
    iget-object v3, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->images:[Ljava/lang/String;

    .line 294
    .local v3, "strArr2":[Ljava/lang/String;
    iget-object v4, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->images:[Ljava/lang/String;

    aget-object v1, v4, v5

    .line 295
    .local v1, "str":Ljava/lang/String;
    const/4 v4, 0x2

    aput-object v1, v3, v4

    .line 296
    const/4 v4, 0x1

    aput-object v1, v2, v4

    .line 297
    iput-object p4, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->localPath:Ljava/lang/String;

    .line 298
    iput p1, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->packID:I

    .line 299
    iput-object p5, v0, Lcom/vkcoffee/android/attachments/StickerAttachment;->stickerReferrer:Ljava/lang/String;

    .line 300
    invoke-direct {p0, v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->sendStickerComment(Lcom/vkcoffee/android/attachments/StickerAttachment;)V

    .line 301
    return-void
.end method

.method public openStickerKeyboard(I)V
    .locals 3
    .param p1, "pack"    # I

    .prologue
    .line 992
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_closed"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 993
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->keyboardPopup:Lcom/vkcoffee/android/stickers/KeyboardPopup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/stickers/KeyboardPopup;->show(Z)V

    .line 994
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->stickersView:Lcom/vkcoffee/android/stickers/StickersView;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/stickers/StickersView;->openPack(I)V

    .line 996
    :cond_0
    return-void
.end method

.method public bridge synthetic replyToComment(Lcom/vkcoffee/android/Comment;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/board/BoardComment;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyToComment(Lcom/vkcoffee/android/api/board/BoardComment;)V

    return-void
.end method

.method public replyToComment(Lcom/vkcoffee/android/api/board/BoardComment;)V
    .locals 1
    .param p1, "comment"    # Lcom/vkcoffee/android/api/board/BoardComment;

    .prologue
    .line 970
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyToComment(Lcom/vkcoffee/android/api/board/BoardComment;Z)V

    .line 971
    return-void
.end method

.method public replyToComment(Lcom/vkcoffee/android/api/board/BoardComment;Z)V
    .locals 3
    .param p1, "comment"    # Lcom/vkcoffee/android/api/board/BoardComment;
    .param p2, "fromGroup"    # Z

    .prologue
    const/4 v2, 0x0

    .line 974
    invoke-virtual {p1}, Lcom/vkcoffee/android/api/board/BoardComment;->getId()I

    move-result v0

    iput v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyTo:I

    .line 975
    iget v0, p1, Lcom/vkcoffee/android/api/board/BoardComment;->uid:I

    iput v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyToUid:I

    .line 976
    iget-object v0, p1, Lcom/vkcoffee/android/api/board/BoardComment;->userName:Ljava/lang/String;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyToName:Ljava/lang/String;

    .line 977
    iput-boolean p2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyFromGroup:Z

    .line 978
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_closed"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 979
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/WriteBar;->isTextEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->replyToName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vkcoffee/android/ui/WriteBar;->setText(Ljava/lang/CharSequence;)V

    .line 982
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    invoke-virtual {v0}, Lcom/vkcoffee/android/ui/WriteBar;->focus()V

    .line 983
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentBar:Lcom/vkcoffee/android/ui/WriteBar;

    const v2, 0x7f100433

    invoke-virtual {v1, v2}, Lcom/vkcoffee/android/ui/WriteBar;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 985
    :cond_1
    return-void
.end method

.method public scrollToPosition(IZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "smooth"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1052
    if-eqz p2, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->pollAdapter:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollAdapter;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1057
    :goto_0
    return-void

    .line 1055
    :cond_0
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->layoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->pollAdapter:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollAdapter;

    invoke-virtual {v1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollAdapter;->getItemCount()I

    move-result v1

    add-int/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    goto :goto_0
.end method

.method public bridge synthetic showCommentActions(Lcom/vkcoffee/android/Comment;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lcom/vkcoffee/android/api/board/BoardComment;

    invoke-virtual {p0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->showCommentActions(Lcom/vkcoffee/android/api/board/BoardComment;)V

    return-void
.end method

.method public showCommentActions(Lcom/vkcoffee/android/api/board/BoardComment;)V
    .locals 8
    .param p1, "comment"    # Lcom/vkcoffee/android/api/board/BoardComment;

    .prologue
    const/4 v7, 0x0

    .line 807
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .local v3, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 809
    .local v0, "acts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p1, Lcom/vkcoffee/android/api/board/BoardComment;->linkTitles:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 810
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080102

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    const-string v5, "copy"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 812
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "is_admin"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    iget v5, p1, Lcom/vkcoffee/android/api/board/BoardComment;->uid:I

    sget v6, Lcom/vkcoffee/android/Global;->uid:I

    if-ne v5, v6, :cond_1

    :cond_0
    iget v5, p1, Lcom/vkcoffee/android/api/board/BoardComment;->offset:I

    if-eqz v5, :cond_1

    .line 813
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080119

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 814
    const-string v5, "delete"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    const v5, 0x7f08013d

    invoke-virtual {p0, v5}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 816
    const-string v5, "edit"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "is_admin"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 818
    const-string v5, "\u0417\u0430\u0431\u0430\u043d\u0438\u0442\u044c"

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    const-string v5, "ban"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    :cond_1
    iget v5, p1, Lcom/vkcoffee/android/api/board/BoardComment;->likesCount:I

    if-lez v5, :cond_2

    .line 825
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 826
    .local v4, "resources":Landroid/content/res/Resources;
    iget v1, p1, Lcom/vkcoffee/android/api/board/BoardComment;->likesCount:I

    .line 827
    .local v1, "i":I
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/Object;

    .line 828
    .local v2, "objArr":[Ljava/lang/Object;
    iget v5, p1, Lcom/vkcoffee/android/api/board/BoardComment;->likesCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v7

    .line 829
    const v5, 0x7f0e0008

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 830
    const-string v5, "liked"

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 833
    .end local v1    # "i":I
    .end local v2    # "objArr":[Ljava/lang/Object;
    .end local v4    # "resources":Landroid/content/res/Resources;
    :cond_2
    new-instance v6, Lcom/vkcoffee/android/VKAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/vkcoffee/android/VKAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    new-instance v7, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$6;

    invoke-direct {v7, p0, p1, v0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$6;-><init>(Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;Lcom/vkcoffee/android/api/board/BoardComment;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v5, v7}, Lcom/vkcoffee/android/VKAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 871
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 873
    return-void
.end method

.method public showOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->commentsLoader:Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/vkcoffee/android/api/board/BoardCommentsLoader;->show(ILandroid/content/Context;)Lcom/vkcoffee/android/api/board/BoardCommentsLoader;

    .line 1076
    return-void
.end method

.method public updatePool(Lcom/vkcoffee/android/attachments/PollAttachment;)V
    .locals 1
    .param p1, "pollAttachment"    # Lcom/vkcoffee/android/attachments/PollAttachment;

    .prologue
    .line 988
    iget-object v0, p0, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->pollAdapter:Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollAdapter;

    invoke-virtual {v0, p1}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment$PollAdapter;->setPollAttachment(Lcom/vkcoffee/android/attachments/PollAttachment;)V

    .line 989
    return-void
.end method

.method public updateTotal(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 1026
    invoke-virtual {p0}, Lcom/vkcoffee/android/fragments/discussions/BoardTopicViewFragment;->fillPageCount()V

    .line 1027
    return-void
.end method
